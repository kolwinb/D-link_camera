#!/bin/bash
read -s -n1 key # read 3 characters

case $key in
a ) 
curl --user admin:password --data "DayNightMode=2" http://192.168.0.20/cgi/daynightmode.cgi
echo "successfull"
;;
esac
