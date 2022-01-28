#!/bin/sh

echo "-------------------------------------"
echo "Check CUDA Version"
nvcc -V

echo "-------------------------------------"
echo "Check cuDNN Version"

CUDNNH="/usr/local/cuda/include/cudnn.h"
CUDNNVH="/usr/local/cuda/include/cudnn_version.h"

if [ -e $CUDNNH  ]; then
        cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2
elif [ -e $CUDNNVH ]; then
        cat /usr/local/cuda/include/cudnn_version.h | grep CUDNN_MAJOR -A 2
else
        echo "No cuDNN installation"
fi;

echo "-------------------------------------"
echo "Check done!"
