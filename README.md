# NGC Image

```shell=
# NGC Login
docker login nvcr.io
$oauthtoken
NHZqaXBxb2tua3E2OW02NXM0amQyNnE2OG46ZDNmOGJkOTYtZWJhMi00NjEwLTgwMGYtYjYzYzVhYmI3NGEw

docker pull nvcr.io/nvidia/caffe:18.07-py2
docker tag nvcr.io/nvidia/caffe:18.07-py2 172.22.0.9/ngc/nvcr.io/nvidia/caffe:18.07-py2

docker pull nvcr.io/nvidia/caffe2:18.07-py3
docker tag nvcr.io/nvidia/caffe2:18.07-py3 172.22.0.9/ngc/nvcr.io/nvidia/caffe2:18.07-py3

docker pull nvcr.io/nvidia/cntk:18.07-py3
docker tag nvcr.io/nvidia/cntk:18.07-py3 172.22.0.9/ngc/nvcr.io/nvidia/cntk:18.07-py3

docker pull nvcr.io/nvidia/cuda:9.0-cudnn7.1-devel-ubuntu16.04
docker tag nvcr.io/nvidia/cuda:9.0-cudnn7.1-devel-ubuntu16.04 172.22.0.9/ngc/nvcr.io/nvidia/cuda:9.0-cudnn7.1-devel-ubuntu16.04

docker pull nvcr.io/nvidia/digits:18.07
docker tag nvcr.io/nvidia/digits:18.07 172.22.0.9/ngc/nvcr.io/nvidia/digits:18.07

docker pull nvcr.io/nvidia/inferenceserver:18.07-py3
docker tag nvcr.io/nvidia/inferenceserver:18.07-py3 172.22.0.9/ngc/nvcr.io/nvidia/inferenceserver:18.07-py3

docker pull nvcr.io/nvidia/mxnet:18.07-py3
docker tag nvcr.io/nvidia/mxnet:18.07-py3 172.22.0.9/ngc/nvcr.io/nvidia/mxnet:18.07-py3

docker pull nvcr.io/nvidia/pytorch:18.07-py3
docker tag nvcr.io/nvidia/pytorch:18.07-py3 172.22.0.9/ngc/nvcr.io/nvidia/pytorch:18.07-py3

docker pull nvcr.io/nvidia/tensorflow:18.07-py3
docker tag nvcr.io/nvidia/tensorflow:18.07-py3 172.22.0.9/ngc/nvcr.io/nvidia/tensorflow:18.07-py3

docker pull nvcr.io/nvidia/tensorrt:18.07-py2
docker tag nvcr.io/nvidia/tensorrt:18.07-py2 172.22.0.9/ngc/nvcr.io/nvidia/tensorrt:18.07-py2

docker pull nvcr.io/nvidia/theano:18.07
docker tag nvcr.io/nvidia/theano:18.07 172.22.0.9/ngc/nvcr.io/nvidia/theano:18.07

docker pull nvcr.io/nvidia/torch:18.07-py2
docker tag nvcr.io/nvidia/torch:18.07-py2 172.22.0.9/ngc/nvcr.io/nvidia/torch:18.07-py2

```
```shell=
# Harbor login
docker login 172.22.0.9
admin
Harbor12345

docker push 172.22.0.9/ngc/nvcr.io/nvidia/caffe:18.07-py2
docker push 172.22.0.9/ngc/nvcr.io/nvidia/caffe2:18.07-py3
docker push 172.22.0.9/ngc/nvcr.io/nvidia/cntk:18.07-py3
docker push 172.22.0.9/ngc/nvcr.io/nvidia/cuda:9.0-cudnn7.1-devel-ubuntu16.04
docker push 172.22.0.9/ngc/nvcr.io/nvidia/digits:18.07
docker push 172.22.0.9/ngc/nvcr.io/nvidia/inferenceserver:18.07-py3
docker push 172.22.0.9/ngc/nvcr.io/nvidia/mxnet:18.07-py3
docker push 172.22.0.9/ngc/nvcr.io/nvidia/pytorch:18.07-py3
docker push 172.22.0.9/ngc/nvcr.io/nvidia/tensorflow:18.07-py3
docker push 172.22.0.9/ngc/nvcr.io/nvidia/tensorrt:18.07-py2
docker push 172.22.0.9/ngc/nvcr.io/nvidia/theano:18.07
docker push 172.22.0.9/ngc/nvcr.io/nvidia/torch:18.07-py2
```
```shell=
kubectl create secret docker-registry harbor_admin --docker-server=172.22.0.9 --docker-username=admin --docker-password=Harbor12345 --docker-email=admin@example.com
```
