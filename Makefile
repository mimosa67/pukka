PREFIX ?= /usr/local
DESTDIR ?= /
LIBEXEC_DIR ?= /usr/libexec
ETC_DIR ?= /etc

all: man

man:
	txt2tags -o man/pukka.man man/pukka.t2t

clean:
	rm -f man/pukka.man

install: install-pukka 

install-pukka:
	install -Dm 755 src/pukka $(DESTDIR)/$(PREFIX)/bin/pukka
	install -Dm 755 src/slkparse.sh $(DESTDIR)/$(LIBEXEC_DIR)/pukka/slkparse.sh
	install -Dm 755 src/slapt-get-search.sh $(DESTDIR)/$(LIBEXEC_DIR)/pukka/slapt-get-search.sh
	install -Dm 755 src/slapt-get-update.sh $(DESTDIR)/$(LIBEXEC_DIR)/pukka/slapt-get-update.sh
	install -Dm 644 src/pukkarc $(DESTDIR)/$(ETC_DIR)/pukka/pukkarc

install-man:
	install -Dm 644 man/pukka.man $(DESTDIR)/$(PREFIX)/man/man8/pukka.8

.PHONY: man clean install install-pukka install-man
