# Siji-ng

A fixed and maintained [Siji](https://github.com/stark/siji) iconic bitmap font.

**Contributions are welcome**

![Siji-ng](preview.png "Preview of Siji")

## Differences from Siji:
- Build **correct** OTB font => support in modern apps.
- New icons: `dwm_centeredmaster`, `dwm_centeredfloatingmaster`, `gentoo`,
  `docker`.
- New repository structure, new build system, releases => easier to package.
- *More hopefully coming soon.*

## Installation

[![Packaging status](
https://repology.org/badge/vertical-allrepos/siji-ng.svg)](
https://repology.org/project/siji-ng/versions)

#### Requirements:
- python3
- bdftopcf

```sh
git clone https://github.com/begss/siji-ng && cd siji-ng && make install
```

## How to get all glyphs

```bash
#!/bin/bash

codes="0 1 2 3 4 5 6 7 8 9 a b c d e f"

for code0 in $codes; do
	for code1 in $codes; do
		for code2 in $codes; do
			printf "e$code0$code1$code2 - \ue$code0$code1$code2\n"
		done
	done
done
```

## TODO

- [ ] More Glyphs!
- [ ] Adding glyphs of different sizes.
- [ ] Improving glyph alignment.
- [ ] Creating small and large version of Siji.

## Credits

[**stark**](https://github.com/stark) for [Siji](https://github.com/stark/siji).

[**wrkzk**](https://github.com/wrkzk) for `dwm_centeredmaster`,
`dwm_centeredfloatingmaster` and `gentoo` icons.

[**the-papi**](https://github.com/the-papi) for `docker` icon.

**Dimitar Zhekov** for bdf to otb convertation scripts.

**Sm4tik** for sm4tik xbm icon pack.

**Stlarch** for stlarch font.

**Sunaku** for sm4tik font.

**Lokaltog** for symbols font.

**w0ng** for xbm icon font.

**Dave Gandy** for FontAwesome.

**Lucy** for Tewi font.

**Phallus** for Lemon and Uushi font.
