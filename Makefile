PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install OSFetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p osfetch $(DESTDIR)$(PREFIX)/bin/osfetch
	@cp -p osfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/osfetch

uninstall:
        @rm -rf $(DESTDIR)$(PREFIX)~/osfetch
	@rm -rf $(DESTDIR)$(PREFIX)/bin/osfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/osfetch.1*
