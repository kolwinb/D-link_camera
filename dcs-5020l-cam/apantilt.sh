#!/bin/bash



function autopantilt()
{

clear
echo -e "press arrows key to handle camera"
read -s -n3 key # read 3 characters

case $key in

$'\x1b[A' ) # up
index=1
while [ $index -lt 80 ]
do
curl --user admin:k1o2l3w4i5n6 --data "PanSingleMoveDegree=1&TiltSingleMoveDegree=1&PanTiltSingleMove=1" http://192.168.0.20/pantiltcontrol.cgi
let index++
#sleep 1
done;;

$'\x1b[B' ) #down

index=1
while [ $index -gt -30 ]
do
curl --user admin:k1o2l3w4i5n6 --data "PanSingleMoveDegree=7&TiltSingleMoveDegree=7&PanTiltSingleMove=7" http://192.168.0.20/pantiltcontrol.cgi
let index++
#sleep 1
done;;

$'\x1b[D' ) #left
index=1
while [ $index -gt -170 ]
do
curl --user admin:k1o2l3w4i5n6 --data "PanSingleMoveDegree=3&TiltSingleMoveDegree=3&PanTiltSingleMove=3" http://192.168.0.20/pantiltcontrol.cgi
let index++
#sleep 1
done;;

$'\x1b[C' ) # right
index=1
while [ $index -lt 170 ]
do
curl --user admin:k1o2l3w4i5n6 --data "PanSingleMoveDegree=5&TiltSingleMoveDegree=5&PanTiltSingleMove=5" http://192.168.0.20/pantiltcontrol.cgi
let index++
#sleep 1
done;;


$'\eOH' ) #home
curl --user admin:k1o2l3w4i5n6 --data "PanSingleMoveDegree=4&TiltSingleMoveDegree=4&PanTiltSingleMove=4" http://192.168.0.20/pantiltcontrol.cgi;;

* ) autopantilt;;
#fi
esac
autopantilt
return 0
}

