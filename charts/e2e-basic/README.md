# End-2-End-Testing



![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square) 

Helm chart for deploying a set of workloads which can be used for most End2End testing.



## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install End-2-End-Testing . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/End-2-End-Testing/values.yaml  --config-file .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-issuer"` |  |
| ingress.className | string | `"nginx-ingress"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"some-host.example.com"` |  |
| ingress.tls[0].hosts[0] | string | `"some-host.example.com"` |  |
| ingress.tls[0].secretName | string | `"secret-name"` |  |
| nameOverride | string | `""` |  |
| nginx.image.repo | string | `"nginx"` | The repo to be used |
| nginx.image.tag | string | `"14.1-bullseye"` | The tag to be used |
| nginx.serviceAccountName | string | `"nginx"` |  |
| nginx.serviceMonitor.enabled | bool | `true` |  |
| postgres.image.repo | string | `"postgres"` | The repo to be used |
| postgres.image.tag | string | `"14.1-bullseye"` | The tag to be used |
| postgres.service.type | string | `"ClusterIP"` |  |
| postgres.serviceAccountName | string | `"postgresql"` |  |
| postgres.statefulset.env.postgresPassword | string | `"some-password"` |  |
| postgres.statefulset.env.postgresUser | string | `"some-user"` |  |
| postgres.statefulset.persistentData.className | string | `"ebs-gp2-delete"` |  |
| postgres.statefulset.persistentData.enabled | bool | `true` |  |
| postgres.statefulset.persistentData.size | string | `"10Gi"` |  |