
all: dist

dist:
	mkdir -p dist
	ttx -o dist/emfont.ttf src/emfont.ttx
	sfnt2woff-zopfli dist/emfont.ttf > dist/emfont.woff
	woff2_compress dist/emfont.ttf

clean:
	rm -r dist

.PHONY: dist clean
