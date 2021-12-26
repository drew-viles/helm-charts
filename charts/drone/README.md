# drone

![Version: 2.7.2](https://img.shields.io/badge/Version-2.7.2-informational?style=flat-square) ![AppVersion: 2.7.2](https://img.shields.io/badge/AppVersion-2.7.2-informational?style=flat-square)

Drone is a self-service Continuous Delivery platform for busy development teams

**Homepage:** <https://github.com/drew-viles/charts/drone>

## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install drone . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/drone/values.yaml  --config-file .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| automountServiceAccountToken | bool | `false` |  |
| emptyDir.sizeLimit | string | `""` |  |
| env.DRONE_SERVER_HOST | string | `"drone.example.com"` |  |
| env.DRONE_SERVER_PROTO | string | `"http"` |  |
| extraSecretNamesForEnvFrom | list | `[]` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"drone/drone"` |  |
| image.tag | string | `"2.7.2"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0] | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistentVolume.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistentVolume.annotations | object | `{}` |  |
| persistentVolume.enabled | bool | `true` |  |
| persistentVolume.existingClaim | string | `""` |  |
| persistentVolume.mountPath | string | `"/data"` |  |
| persistentVolume.size | string | `"8Gi"` |  |
| persistentVolume.storageClass | string | `""` |  |
| persistentVolume.subPath | string | `""` |  |
| persistentVolume.volumeMode | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
| updateStrategy | object | `{}` |  |