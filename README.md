# big-data-platform-on-k8s

Install Kind following https://kind.sigs.k8s.io/docs/user/quick-start/#installation
Install Flux follwing https://fluxcd.io/flux/installation/

Create a PAT (Personal Access Token)(Classic) https://github.com/settings/tokens, check repo and users, and save the Github Token.

Fork this repository

Create local cluster with Kind:
```sh 
kind create cluster --name platform-k8s --config kind-config.yaml
```

Sync the repository in the kubernetes cluster using Flux, replace variables GITHUB_USER and GITHUB_REPO:
```sh 
flux bootstrap github \
  --owner=GITHUB_USER \
  --repository=GITHUB_REPO \
  --branch=main \
  --path=./clusters/dev \
  --personal
```

Insert the Github Token.

Choose what do you want to deploy uncommenting [this file](https://github.com/andreyolv/big-data-platform-on-k8s/blob/main/clusters/dev/kustomization.yaml)

Done :)

# BIG DATA & DEVOPS PLATFORM ON KUBERNETES CONTAINS:
# CI/CD
crossplane
tekton
terraform

# Compliance
kyverno
sonarqube

# Data Engineering
airbyte
airflow
minio
openfaas
spark
superset
trino

# Databases
cassandra
mongodb
mysql
postgresql
redis
yugabytedb

# IDE/UI
flux-ui
helm-dashboard
kafka-ui
komodor
kubevious
robusta

# Kubernetes
reloader
replicator
sealed-secrets

# Notebooks
jupyter
zeppelin

# Observability
elastic-stack
fluentd
grafana
kube-prometheus-stack
litmus 
loki
opencost
opentelemetry
prometheus-community

# Orchestration
harbor
kaniko
keda
linkerd
portainer
rancher

# Security
cert-manager
falco
kube-bench
kubescape
teleport
trivy

# Storage
longhorn
velero

# Streaming
kafka
ksqldb
pinot
pulsar
rabbitmq

# Web-app
flagger
ingress
