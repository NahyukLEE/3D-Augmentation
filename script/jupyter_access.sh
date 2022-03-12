#!/bin/bash

gpu1="211.188.81.143"
gpu2="211.188.81.168"

echo -n "Type your assigned port number(4-digits): "
read port_num
# read -p "Type your assigned port number(4-digits): " port_num

echo "******************[NOTE]******************"
echo "To access the notebook, you can copy and paste this URL in your browser:"
echo "http://$gpu1:$port_num"
echo "******************************************"

jupyter notebook --ip=0.0.0.0 --port=$port_num --allow-root
