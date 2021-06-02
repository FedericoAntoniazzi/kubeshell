PREFIX ?= /usr

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p kubeshell $(PREFIX)/bin/kubeshell
	@chmod 755 $(PREFIX)/bin/kubeshell

uninstall:
	@rm -rf $(PREFIX)/bin/kubeshell
