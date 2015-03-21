#Procon

Procon is an iconic Bitmap font based on Stlarch font, Sm4tik xbm icon pack, Lokaltog Symbols font, xbm-icon font, Uushi font, FontAwesome with some personal additions.

Procon is built on top of Stlarch, so your existing stlarch hexcodes will work just fine.

Procon is a **Work In Progress** Project that I work in my free time, so more glyphs will be added over the time.

##What's the difference between Stlarch and Procon ?

- Procon comes with **150 new glyphs**, selectively ported from other fonts and xbm icons.
- Increased font spacing.
- Properly centered glyphs.

##How to get the glyph codes ?

Install `xorg-xfd` and then open up a terminal or a program launcher and type:

`xfd -fn -*-procon-*-*-*-*-*-*-*-*-*-*-*-*`

There are three pages of glyphs according to xfd so please don't forget to **Click Next** in xfd for more glyphs.

##Using Procon with other programs:

As long as a program allows for a fallback font Procon will work.

Some examples of using Procon with the some prgrams:

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
- [ ] Improving glyph spacing and alignment.

##Credits

A Big Thanks to the following Authors for their work which made Procon possible:

**Sm4tik** for sm4tik xbm icon pack

**Stlarch** for stlarch font

**Sunaku** for sm4tik font

**Lokaltog** for symbols font

**w0ng** for xbm icon font

**Dave Gandy** for FontAwesome

**Phallus** for Lemon and Uushi font

