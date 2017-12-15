#!/bin/bash

. apantilt.sh
. mpantilt.sh

function init()
{

mode=$(zenity --list --title="Select your mode" --column="mode" "Automatic Mode" "Manual Mode")

tmode=$(echo $mode | cut -d'|' -f1)
case $tmode in
"Automatic Mode" ) autopantilt $1 $2 ;;
"Manual Mode" ) manpantilt $1 $2;;
* ) init $1 $2;;
esac


#clear
#echo -e "this program is mainly use for controling dcs-5020l dlink camera.email:kolwinmail@gmail.com \n"



#echo -e "1. Auto pan/tilt"
#echo -e "2. Manual pan/tilt \n"

#read -s -n1 key
#case $key in
#1 ) autopantilt $1 $2;;
#2 ) manpantilt $1 $2;;
#* ) init $1 $2;;
#esac
return 0
}

