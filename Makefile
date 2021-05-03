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
	fonttosfnt -g 2 -m 2 -o doko.otb -- doko.bdf
