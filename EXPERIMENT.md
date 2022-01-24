# Experiment
Experiments list for 3D Shape Classification(1.24 MON ~ 2.2 WED)
- Nahyuk: PointNet, PointNet++, PointCNN, PointWeb, Point Transformer
- Hansheng: PointConv, ACNN, KPConv, PointASNL, MinkowskiNet

## PointNet(CVPR 2017, [Official Code](https://github.com/charlesq34/pointnet))
Need CUDA 8.0, Cudnn 5.1, tensorflow-gpu==1.0.1, can use `tensorflow_p27` env in NIPA server.

#### Install
```
$ git clone https://github.com/charlesq34/pointnet
```
- After cloning repo, modify line 15 in provider.py
```
- os.system('wget %s; unzip %s' % (www, zipfile))
+ os.system('wget --no-check-certificate %s; unzip %s' % (www, zipfile))
```
- (Optional) Connect wandb.
- (NOTE) Diffult MAX_EPOCH set by 250, and final epoch(249)'s model is not saved. -> Need to fix it.

#### Run
```
python train.py
(If wandb connected) python train.py --run_name pointnet_reprod_0
```
