# big_data_k8s

## [Install prereqs](prereq.md)
![prereq](imgs/prereq.png)

## Kubernetes Cluster k3d
```sh 
k3d cluster create bigdatak8s --volume $HOME/bigdatak8s:/var/lib/rancher/k3s/storage@all -s 1 --servers-memory 4Gb -a 3 --agents-memory 12Gb --api-port 6443 -p 8081:80@loadbalancer
```
  - storage class: local-path em $HOME/bigdatak8s
  - 1 control plane - 4Gb
  - 3 worker node - 12Gb
  - port-foward 80 para 8081
