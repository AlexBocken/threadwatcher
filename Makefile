# threadwatcher
# See LICENSE file for copyright and license details.

VERSION = 1.0

# paths
DESTDIR= /usr/bin
SRC = threadwatcher


install:
	mkdir -p $(DESTDIR)
	cp -f $(SRC) $(DESTDIR)/
	chmod 755 $(DESTDIR)/$(SRC)

uninstall:
	rm -f $(DESTDIR)/$(SRC)

.PHONY: install uninstall
