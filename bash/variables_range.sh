#!/bin/bash


variable="AZERTYUIOPAZERTYUIOP"
variable2="TOTO"


function toto(){
	local variable=""
	echo "inside toto function"
	echo "variable = " $variable
	echo "calling subfunction"
	tata
	echo "variable = " $variable
	echo "leaving toto function"
}


function tata(){
	echo "inside tata function (subfunction)"
	echo "variable = $variable"
	echo "variable2 = $variable2"
	echo "modifying var"
	variable="QSDFGHJKLM"
	echo "variable = " $variable
	echo "leaving tata function"
}


toto

