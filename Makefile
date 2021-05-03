prefix = ~/.local
x11dir = $(prefix)/share/fonts/doko
otbdir = $(prefix)/share/fonts/doko

install: pcf otb
	mkdir -p $(x11dir) $(otbdir)
	cp doko.pcf $(x11dir)
	cp doko.otb $(otbdir)

pcf: doko.bdf
	bdftopcf doko.bdf -o doko.pcf

otb: doko.bdf
	python3 bin/otb1cli.py -o doko.otb doko.bdf

clean:
	rm doko.otb doko.pcf
