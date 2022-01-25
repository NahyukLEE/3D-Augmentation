#!/bin/bash

export BASE_PATH=~/anaconda3/bin/python/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:

echo "Create new conda environment"

read -p "1) ENV NAME: " env_name
read -p "2) PYTHON VERSION: " python_ver
read -p "3) CUDA VERSION(10.0, 10.2, 11.0, 11.2): " cuda_ver

ENVS=$(conda env list | awk '{print $1}' )

if [[ $ENVS = *"$1"* ]]; then
  echo "\"$1\" already exists. Pass the installation"

else
  conda deactivate
  conda create -n $env_name python=$python_ver -y
  echo "Done." 
  
  conda activate $env_name
  echo ${CONDA_PREFIX} //OUT: /home/$USER/acanconda3/envs/$env_name
  cd ${CONDA_PREFIX} 
  
  mkdir -p ./etc/conda/activate.d 
  mkdir -p ./etc/conda/deactivate.d
  
  touch ./etc/conda/activate.d/env_vars.sh 
  touch ./etc/conda/deactivate.d/env_vars.sh
  
  sed -e "1 i\\#!/bin/bash" -i ./etc/conda/activate.d/env_vars.sh 
  sed -e "2 i\\export PATH=/usr/local/cuda-11.2/bin:${BASE_PATH}" -i ./etc/conda/activate.d/env_vars.sh 
  sed -e "3 i\\export LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64" -i ./etc/conda/activate.d/env_vars.sh
  
  sed -e "1 i\\#!/bin/bash" -i -i ./etc/conda/deactivate.d/env_vars.sh
  sed -e "2 i\\export PATH=${BASE_PATH} " -i ./etc/conda/deactivate.d/env_vars.sh
  sed -e "3 i\\unset LD_LIBRARY_PATH" -i ./etc/conda/deactivate.d/env_vars.sh
  
  echo "Done."
  
fi
