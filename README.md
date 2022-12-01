# k8s-acg-scripts

If you are using cloud playground, create three servers with the following settings:  
Distribution: Ubuntu 20.04 Focal Fossa LTS  
Size: medium  
  
https://acloudguru-content-attachment-production.s3-accelerate.amazonaws.com/1658327193935-Building%20a%20Kubernetes%20Cluster.pdf  
  
sudo hostnamectl set-hostname k8s-control  
sudo hostnamectl set-hostname k8s-worker1  
sudo hostnamectl set-hostname k8s-worker2  

sudo vi /etc/hosts  
private IP    k8s-control  
private IP    k8s-worker1  
private IP    k8s-worker2  

Go to root:

sudo -i

Copy and paste file k8sbase.bash for each node  
vi k8sbase.bash  
Chmod 775 k8sbase.bash  
./k8sbase.bash  
  
Only controller  
vi k8controller.bash  
Chmod 775 k8scontroler.bash  
./k8scontroller.bash  
  
kubeadm token create --print-join-command  
  
Activate metrics  
  
  wget  https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml  
  
Edit and add - vi components.yaml  
  
args:  
  - --cert-dir=/tmp  
  - --secure-port=4443  
  - --kubelet-insecure-tls  (add this)  
  
kubectl create -f components.yaml  
  
kubectl top pod --all-namespaces  
