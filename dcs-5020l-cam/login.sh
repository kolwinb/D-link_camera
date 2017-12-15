#!/bin/bash
. main.sh

function userlogin()
{
input='zenity --password --username'
ulogin=$($input)

username=$(echo $ulogin | cut -d'|' -f1)
password=$(echo $ulogin | cut -d'|' -f2)

if [ -z "$username" ] || [ -z "$password" ]
then
zenity --warning --title "warning dialog" --text='both username and password requires'
userlogin
else
init $username $password
fi
#echo -e "enter user name :"
#read username
#echo -e "enter password :"
#read password


}
userlogin


