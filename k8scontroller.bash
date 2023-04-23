#!/bin/bash

 kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.24.0
mkdir -p $HOME/.kube
 cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
# if below does not work check here for the latest url - https://docs.tigera.io/calico/latest/getting-started/kubernetes/quickstart
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/tigera-operator.yaml
