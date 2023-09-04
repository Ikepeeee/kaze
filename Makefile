install:
	stack install --local-bin-path=./ && sudo mv ./kaze /usr/local/bin

uninstall:
	sudo rm /usr/local/bin/kaze
