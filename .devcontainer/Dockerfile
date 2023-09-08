FROM debian:bullseye-slim

ARG OCAML_VERSION=5.0.0

# Install OCaml
RUN apt update && apt install -y opam
RUN opam init -a -y --comp $OCAML_VERSION --disable-sandboxing
RUN eval $(opam env)
RUN opam update && opam install -y dune merlin ocaml-lsp-server odoc ocamlformat utop dune-release

# Install LLVM
RUN apt update && apt install -y lsb-release wget software-properties-common gnupg
RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
