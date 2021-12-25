#!/usr/bin/env bash

#this needs replacing with kubeconform

set -euo pipefail

check_semver "$KUBEVAL_VERSION"

curl --silent --show-error --fail --location --output /tmp/kubeconform.tar.gz "https://github.com/yannh/kubeconform/releases/download/v${KUBECONFORM_VERSION}/kubeconform-linux-amd64.tar.gz"
tar -xf /tmp/kubeconform.tar.gz kubeconform
rm /tmp/kubeconform.tar.gz
