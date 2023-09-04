{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecursiveDo #-}

module Language.Kaze.Compiler where

import Data.Text.Internal.Lazy
import Data.Functor.Identity

import LLVM.Pretty
import LLVM.AST hiding (function, value)
import LLVM.AST.Type as AST

import LLVM.IRBuilder.Module
import LLVM.IRBuilder.Monad
import LLVM.IRBuilder.Instruction
import LLVM.IRBuilder.Constant

import qualified Language.Kaze.AST

type LLVMBuilder = IRBuilderT (ModuleBuilderT Identity)

compile :: Language.Kaze.AST.Expr -> Text
compile expr = ppllvm $ buildModule "main" $ mdo
  form <- globalStringPtr "%d\n" "putNumForm"
  printf <- externVarArgs "printf" [ptr i8] i32
  function "main" [] i32 $ \[] -> mdo
    entry <- block `named` "entry"; mdo
      r <- toOperand expr
      call printf [(ConstantOperand form, []), (r, [])]
      ret (int32 0)

class LLVMOperand a where
  toOperand :: a -> LLVMBuilder Operand

instance LLVMOperand Language.Kaze.AST.Expr where
  toOperand (Language.Kaze.AST.ExprTerm e) = toOperand e
  toOperand (Language.Kaze.AST.Expr t Language.Kaze.AST.Add e) = mdo
    t' <- toOperand t
    e' <- toOperand e
    add t' e'
  toOperand (Language.Kaze.AST.Expr t Language.Kaze.AST.Sub e) = mdo
    t' <- toOperand t
    e' <- toOperand e
    sub t' e'

instance LLVMOperand Language.Kaze.AST.Term where
  toOperand (Language.Kaze.AST.TermNumber n) = toOperand n
  toOperand (Language.Kaze.AST.Term n Language.Kaze.AST.Mul t) = mdo
    n' <- toOperand n
    t' <- toOperand t
    mul n' t'
  toOperand (Language.Kaze.AST.Term n Language.Kaze.AST.Div t) = mdo
    n' <- toOperand n
    t' <- toOperand t
    sdiv n' t'

instance LLVMOperand Language.Kaze.AST.Number where
  toOperand (Language.Kaze.AST.Number n) = return (int32 n)
