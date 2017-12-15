#!/bin/bash
. tiltup.sh
. panleft.sh
. panright.sh
. tiltdown.sh
. pantiltreset.sh

function manpantilt()
{

clear
echo -e "press arrows key to handle camera"
read -s -n3 key # read 3 characters

#echo -n "$key" | grep '\[A'  #Check if character code detected.
#if [ "$?" -eq 0 ]
#then
  #mantiltup $1 $2
  #exit 0
#fi

case $key in
$'\e[A' ) # up
mantiltup $1 $2;;
$'\e[B' ) #down
mantiltdown $1 $2;;
$'\e[D' ) #left
manpanleft $1 $2;;
$'\e[C' ) # right
manpanright $1 $2;;
$'\eOH' ) #home
manpantiltreset $1 $2;;
* ) manpantilt $1 $2;;
esac
manpantilt $1 $2
return 0
}

