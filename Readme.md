#Procon

Procon is an iconic Bitmap font based on the excellent Stlarch font and inherits additional glyphs from Sm4tik xbm icon pack, Lokaltog Symbols font, xbm-icon font, Uushi font, FontAwesome with some personal additions.

Procon is built on top of Stlarch, so your existing stlarch hexcodes will **just work**.

Procon is a **Work In Progress**, so more glyphs will be added over the time.

##What's the difference between Stlarch and Procon ?

- Procon comes with **215 new glyphs**, selectively ported from other fonts and xbm icons.
- Increased letter spacing.
- Properly centered glyphs.

##How to get the glyph codes ?

Install `xorg-xfd` and then open up a terminal or a program launcher and type:

`xfd -fn -*-procon-*-*-*-*-*-*-*-*-*-*-*-*`

There are three pages of glyphs in xfd if you launch it without providing any `rows` or `columns` argument so please don't forget to **Click Next** in xfd for viewing more glyphs.

If you would like to view all the glyphs without having to click next then use the following command:

`xfd -rows 19 -columns 34 -fn -*-procon-*-*-*-*-*-*-*-*-*-*-*-1`

##Using Procon with other programs:

As long as a program allows to set a fallback font, Procon will work.

Examples of using Procon with the some prgrams:

**Dwm**

```
static const char font[] = "-*-procon-medium-r-*-*-10-*-*-*-*-*-iso10646-1" ","	/* For Iconic Glyphs */
                           "-*-tamsyn-medium-r-normal-*-12-*-*-*-*-*-*-1";        /* For Normal Text */
```

**Dmenu**

```
dmenu -fn '-*-tamsyn-medium-r-normal-*-12-*-*-*-*-*-*-1','-*-procon-medium-r-*-*-10-*-*-*-*-*-iso10646-1'
```

**Bar**

```
bar -p -f '-*-tamsyn-medium-r-normal-*-12-*-*-*-*-*-*-1','-*-procon-medium-r-*-*-10-*-*-*-*-*-iso10646-1'
```

##TODO

- [ ] More Glyphs!
- [ ] Adding glyphs of different sizes.
- [ ] Improving glyph alignment.

##Credits

A Big Thanks to the following Authors for their spectacular work which made Procon possible:

**Sm4tik** for sm4tik xbm icon pack

**Stlarch** for stlarch font

**Sunaku** for sm4tik font

**Lokaltog** for symbols font

**w0ng** for xbm icon font

**Dave Gandy** for FontAwesome

**Lucy** for Tewi font

**Phallus** for Lemon and Uushi font

