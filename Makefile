doc:

translation: encryption_works.md po/po4a.conf
	po4a po/po4a.conf

.PHONY: clean
clean:
	rm -f encryption_works.[a-z_]*.md
