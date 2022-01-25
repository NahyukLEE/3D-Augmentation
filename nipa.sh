#!/bin/bash

read -p "Type which server do you want to connect(1 or 2): " server

if [ $server == 1 -o $server == 2 ] ; then
	echo "Connect to server $server..."
	if [ $server == 1 ] ; then
		ssh ubuntu@211.188.81.143 -p 16022
	elif [ $server == 2 ] ; then
		ssh ubuntu@000.000.000.000 -p 16022
	fi
else
	echo "[Unexpected Input] Type 1 or 2"
fi
