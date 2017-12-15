#!/bin/bash

function manpanleft()
{
curl --user $username:$password --data "PanSingleMoveDegree=3&TiltSingleMoveDegree=3&PanTiltSingleMove=3" http://192.168.0.20/pantiltcontrol.cgi

}

