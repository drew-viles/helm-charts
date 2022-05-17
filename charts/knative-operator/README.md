# knative

![Version: 1.4.1](https://img.shields.io/badge/Version-1.4.1-informational?style=flat-square) ![AppVersion: 1.4.1](https://img.shields.io/badge/AppVersion-1.4.1-informational?style=flat-square)

Helm chart for deploying Knative operator

## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install knative . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/knative/values.yaml  --config-file .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| eventing.use_ceph | bool | `false` |  |
| eventing.use_couchdb | bool | `false` |  |
| eventing.use_github | bool | `true` |  |
| eventing.use_gitlab | bool | `false` |  |
| eventing.use_kafka | bool | `false` |  |
| eventing.use_natss | bool | `false` |  |
| eventing.use_prometheus | bool | `false` |  |
| eventing.use_rabbitmq | bool | `false` |  |
| eventing.use_redis | bool | `false` |  |
| image.repo | string | `"gcr.io/knative-releases/knative.dev/operator/cmd/operator@sha256"` | The repo to be used |
| image.tag | string | `"c604ba6048db9ccab664894134d39468992e11b9ec858be9cc621a90bae9a378"` | The tag to be used |
| operator.imagePullPolicy | string | `"IfNotPresent"` | The name of the operator deployment |
| operator.istioNamespace.name | string | `"istio-system"` | The namespace that istio is installed to |
| operator.knative.resources | object | `{}` | K8S Resources |
| operator.name | string | `"knative-operator"` | The name of the operator deployment |
| operator.operatorNamespace.create | bool | `true` |  |
| operator.operatorNamespace.name | string | `"knative-operator"` | The namespace that the operator will be deployed in |
| operator.webhook.resources | object | `{}` | K8S Resources |
| serving.use_contour | bool | `false` |  |
| serving.use_istio | bool | `false` |  |