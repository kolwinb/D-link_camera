#!/bin/bash

function mantiltup()
{
curl --user $username:$password --data "PanSingleMoveDegree=1&TiltSingleMoveDegree=1&PanTiltSingleMove=1" http://192.168.0.20/pantiltcontrol.cgi

}

