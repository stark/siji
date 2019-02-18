#!/bin/sh

# About:       Siji font installer
# Maintainer:  stark <stark@openmailbox.org>
# License:     GPLv2 See LICENSE file for copyright details

# TODO:        Add '-f' flag for specifying the font manually
#              Smarter non-zero checking for font existence

# Specify the font directory
XDG_DATA_HOME=${XDG_DATA_HOME:-"$HOME/.local/share"}
font_dir="$XDG_DATA_HOME/fonts"

# Specify the font
font="siji"
bdf_font="bdf/${font}.bdf"
pcf_font="pcf/${font}.pcf"

# Bold Colors for formatting
g="\033[1;32m" # Green
r="\033[1;31m" # Red
y="\033[1;33m" # Yellow
w="\033[1;37m" # White
rs="\033[0m"   # Reset

_init_()
{
	check_font
}

usage()
{
cat << HELP
Usage:

  ./install.sh [option] directory

  If invoked without any option then '$(basename $pcf_font)' will be installed in the '${font_dir}' directory

Options:

  -d   Specify the directory for installing the font
       Default is '${font_dir}' it will be created if non-existent
  -h   Show this help message

Example usage:

  ./install -d ~/.fonts

HELP
}

success()
{
	printf "[${g}OK${rs}] $1 ${w}$2${rs}\n"
}

warning()
{
	printf "[${y}XX${rs}] ${y}warning:${rs} $1 ${w}$2${rs}\n"
}

failure()
{
	printf "[${r}XX${rs}] ${r}failed:${rs} $1 ${w}$2${rs}\n"
}

die()
{
	"$@"
	printf "${r}\nExiting${rs}\n"
	exit 1
}

check_dir()
{
	# Check if the specified font directory exists
	if [ -d $font_dir ]; then
		success "Found directory:" "$font_dir"
	else
		warning "directory not found:" "$font_dir"
		success "Creating directory:" "$font_dir"

		# Create the font directory if non-existent
		mkdir -p $font_dir
	fi
}

check_font()
{
	# Check if any font is specified or not ( TODO: Better non-zero checking )
	test -z "$bdf_font" && test -z "$pcf_font" && die error 1

	# Check if the program 'bdftopcf' is installed or not
	if [ $(command -v bdftopcf) ]; then
		check_dir

		# If 'bdftopcf' is installed then proceed to compile '$bdf_font'
		make_pcf
	else
		check_dir
		warning "Application 'bdftopcf':" "Not Found"
		success "Installing precompiled" "$(basename $pcf_font)"

		# If 'bdftopcf' is not installed then copy the precompiled '$pcf_font'
		copy_pcf
	fi
}

make_pcf()
{
	if [ -f "$bdf_font" ]; then

		# If it exists then proceed to compile the '$bdf_font'
		success "Compiling" "$(basename $bdf_font)"
		bdftopcf $bdf_font -o "${font_dir}/$(basename $pcf_font)"

		# Update the font cache
		update_cache
	else
		die error 2
	fi
}

copy_pcf()
{
	if [ -f "$pcf_font" ]; then
		success "Copying" "'$pcf_font' -> '$font_dir'"

		# If $pcf_font exists then proceed to copying
		cp $pcf_font $font_dir

		# Update the font cache
		update_cache
	else
		die error 2
	fi
}

update_cache()
{
	success "Updating font cache... Please Wait"
	mkfontdir $font_dir
	xset +fp $font_dir
	xset fp rehash
	fc-cache -f
	success "Finished. Your font cache has been updated"

	# Perform post install stuff
	post_install
}

post_install()
{
	if [ -f "$HOME/.xinitrc" ]; then
		file="${w}$HOME/.xinitrc${rs}"
	else 
		file="custom startup script that gets executed during xlogin"
	fi
printf "
  Successfully installed ${w}$(basename $pcf_font) -> ${font_dir}${rs}
  Add the following snippet in your ${file}:

    ${w}xset +fp ${font_dir}${rs}
    ${w}xset fp rehash${rs}

  If it already exists then you can skip this step.
"
}

error()
{
	case $1 in
		1) failure "No font specified"
	;;
		2) failure "Font not found"
	;;
		*) failure "Unknown option"
	;;
	esac
}

while getopts "hd:" opt; do
	case $opt in
		d) font_dir=${OPTARG};;
		h) usage; exit 0;;
		*) usage; exit 1;;
	esac
done

_init_
exit 0
# vim: ft=sh ts=4 :et
