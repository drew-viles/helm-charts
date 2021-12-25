# postgresql



![Version: 10.19.0](https://img.shields.io/badge/Version-10.19.0-informational?style=flat-square) ![AppVersion: 10.19.0](https://img.shields.io/badge/AppVersion-10.19.0-informational?style=flat-square) 

Helm chart for deploying postgresql



## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install postgresql . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/postgresql/values.yaml  --config-file .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.repo | string | `"postgres"` | The repo to be used |
| image.tag | string | `"10.19-bullseye"` | The tag to be used |
| nameOverride | string | `"postgresql"` |  |
| namespace.name | string | `"database"` |  |
| postgres.env | object | `{}` |  |
| postgres.service.loadBalancerIP | string | `nil` |  |
| postgres.service.type | string | `"LoadBalancer"` |  |
| postgres.storage.className | string | `"fast-disks"` |  |
| postgres.storage.size | string | `"1Gi"` |  |
| serviceAccountName | string | `"postgresql"` |  |
| statefulset.affinity | object | `{}` | Pod Affinity/AnitAffinity |
| statefulset.imagePullSecrets | object | `{}` | Image Pull secrets |
| statefulset.nodeSelector | object | `{}` | Node Selector |
| statefulset.podSecurityContext | object | `{}` | Pod Security Context |
| statefulset.replicas | int | `1` | Replicas |
| statefulset.resources | object | `{}` | K8S Resources |
| statefulset.tolerations | object | `{}` | Tolerations |