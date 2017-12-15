#!/bin/bash

function manpanright()
{
curl --user $username:$password --data "PanSingleMoveDegree=5&TiltSingleMoveDegree=5&PanTiltSingleMove=5" http://192.168.0.20/pantiltcontrol.cgi

}

