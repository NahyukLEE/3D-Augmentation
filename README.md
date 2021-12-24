# 3D-Augmentation
used for personal use

## Install
### Environments
- Ubuntu 18.04 LTS
- Nvidia-driver 470
- CUDA 10.2 (cudnn 8.3.0)
- Python 3.7
### Requirements
- Pytorch 1.10.1
```
conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
```
- [MinKowskiEngine](https://github.com/NVIDIA/MinkowskiEngine) 0.5.4
```
sudo apt install g++-7
conda install openblas-devel -c anaconda
export CXX=g++-7
pip install -U git+https://github.com/NVIDIA/MinkowskiEngine -v --no-deps --install-option="--blas_include_dirs=${CONDA_PREFIX}/include" --install-option="--blas=openblas"
```
- [TorchSparse](https://github.com/mit-han-lab/torchsparse) 1.4.0
```
sudo apt-get install libsparsehash-dev
pip install --upgrade git+https://github.com/mit-han-lab/torchsparse.git@v1.4.0
```
- [Torch-Points3D](https://github.com/nicolas-chaulet/torch-points3d) 1.3.0  
```
pip install torch
pip install torch-points3d
```

