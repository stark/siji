DESTDIR = ~
PREFIX	= /.local
NAME	= siji
X11DIR	= $(DESTDIR)$(PREFIX)/share/fonts/$(NAME)
OTBDIR	= $(DESTDIR)$(PREFIX)/share/fonts/$(NAME)

build: pcf otb

install: build
	install -Dm644 siji.pcf $(X11DIR)/siji.pcf
	install -Dm644 siji.otb $(OTBDIR)/siji.otb

pcf: siji.bdf
	bdftopcf siji.bdf -o siji.pcf

otb: siji.bdf
	python3 bin/otb1cli.py -o siji.otb siji.bdf

clean:
	rm siji.otb siji.pcf
