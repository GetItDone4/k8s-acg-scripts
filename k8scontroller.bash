#!/bin/bash

 kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.24.0
mkdir -p $HOME/.kube
 cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml