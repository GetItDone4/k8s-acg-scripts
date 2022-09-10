# k8s-acg-scripts

If you are using cloud playground, create three servers with the following settings:
Distribution: Ubuntu 20.04 Focal Fossa LTS
Size: medium

https://acloudguru-content-attachment-production.s3-accelerate.amazonaws.com/1658327193935-Building%20a%20Kubernetes%20Cluster.pdf

sudo hostnamectl set-hostname k8s-control
On the first worker node:
sudo hostnamectl set-hostname k8s-worker1
On the second worker node:
sudo hostnamectl set-hostname k8s-worker2

<private IP>    k8s-control
<private IP>    k8s-worker1
<private IP>    k8s-worker2

sudo vi /etc/hosts
<control plane node private IP> k8s-control
<worker node 1 private IP> k8s-worker1
<worker node 2 private IP> k8s-worker2

Copy and paste file k8sbase.bash for each node 
vi k8sbase.bash
Chmod 775 k8sbase.bash
./k8sbase.bash

Only controler
vi k8scontroler.bash
Chmod 775 k8scontroler.bash
./k8scontroler.bash
