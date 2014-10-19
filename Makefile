
all: dist

dist:
	mkdir -p dist
	ttx -o dist/emfont.ttf src/emfont.ttx
	ttf2eot < dist/emfont.ttf > dist/emfont.eot
	ttf2woff -v -O dist/emfont.ttf dist/emfont.woff
	woff2_compress dist/emfont.ttf

clean:
	rm -r dist

.PHONY: dist clean
