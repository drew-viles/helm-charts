#!/bin/bash
set -euxo pipefail

# install helm-docs
curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
chmod +x kubectl

CRDS_DIR=/tmp/crds/
mkdir -p "${CRDS_DIR}"
wget "https://raw.githubusercontent.com/prometheus-operator/kube-prometheus/release-0.9/manifests/setup/prometheus-operator-0servicemonitorCustomResourceDefinition.yaml" -O "${CRDS_DIR}/crd-servicemonitor.yaml"
./kubectl create ns monitoring
./kubectl create ns istio-operator

# Install CRDs
./kubectl apply --server-side -f "${CRDS_DIR}"
