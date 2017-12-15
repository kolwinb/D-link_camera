#!/bin/bash

function mantiltdown()
{
curl --user $username:$password --data "PanSingleMoveDegree=7&TiltSingleMoveDegree=7&PanTiltSingleMove=7" http://192.168.0.20/pantiltcontrol.cgi

}

