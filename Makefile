prefix = ~/.local
x11dir = $(prefix)/share/fonts/siji
otbdir = $(prefix)/share/fonts/siji

build: pcf otb

install: pcf otb
	mkdir -p $(x11dir) $(otbdir)
	cp siji.pcf $(x11dir)
	cp siji.otb $(otbdir)

pcf: siji.bdf
	bdftopcf siji.bdf -o siji.pcf

otb: siji.bdf
	python3 bin/otb1cli.py -o siji.otb siji.bdf

clean:
	rm siji.otb siji.pcf
