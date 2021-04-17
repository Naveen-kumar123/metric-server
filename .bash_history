kubeadm join 172.31.0.140:6443 --token glaoe9.b6r1x0wbys4fs928 --discovery-token-ca-cert-hash sha256:0d37dbdc46563d90d6637d254232348d49aaa8c7878ba1fdc1dd6247dcdc1de0
qubectl version
kubectl version
sudo kubeadm init --pod-network-cidr=172.31.0.171/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export kubever=$(kubectl version | base64 | tr -d '\n')
kubectl apply -f https://cloud.weave.works/k8s/net?k8s-version=$kubever
kubectl apply -f https://gist.githubusercontent.com/initcron/32ff89394c881414ea7ef7f4d3a1d499/raw/4863613585d05f9360321c7141cc32b8aa305605/kube-dashboard.yaml
kubectl cluster-info
kubeadm token create --print-join-command
ls
kubectl get nodes
kubectl
kubectl create --help
kubectl create namespace --help
kubectl top --help
