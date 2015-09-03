#!/usr/bin/env sh

GLOG_logtostderr=1 ../caffe/build/tools/caffe train \
    --solver=Caffe-Experiments/layer2/autoencoder_layer2_solver.prototxt \
    --weights=Caffe-Experiments/layer1/ae_layer1_iter_??.caffemodel
