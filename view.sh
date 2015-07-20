#!/bin/sh

check_xfd()
{
	if [ "$(command -v xfd)" ]; then
		showfont
	else
		printf "Application 'xfd' is not installed !\n"
		exit 1
	fi
}

showfont()
{
	rows='19'
	cols='34'
	font='-wuncon-siji-medium-r-normal--10-100-75-75-c-80-iso10646-1'

	xfd_color solarized_dark

	printf "xfd*Background: $xfd_bg\n\
            xfd*Foreground: $xfd_fg\n" | xrdb -merge

	xfd -rows $rows -columns $cols -fn $font 2>&1 >/dev/null &
}

xfd_color()
{
	case $1 in
		solarized_dark)
			xfd_bg="#002b36"
			xfd_fg="#839496"
		;;
		solarized_light)
			xfd_bg="#fdf6e3"
			xfd_fg="#657b83"
		;;
		*)
			printf "Invalid colorscheme\n"
			exit 1
		;;
	esac
}

check_xfd
exit 0
