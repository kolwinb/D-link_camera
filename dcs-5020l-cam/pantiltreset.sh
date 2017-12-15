#!/bin/bash

function manpantiltreset()
{
curl --user $username:$password --data "PanSingleMoveDegree=4&TiltSingleMoveDegree=4&PanTiltSingleMove=4" http://192.168.0.20/pantiltcontrol.cgi

}
