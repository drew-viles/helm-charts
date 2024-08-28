# pihhole

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2024.07.0](https://img.shields.io/badge/AppVersion-2024.07.0-informational?style=flat-square)

The pihhole helm chart simply exists for deploying the pihhole media server onto Kubernetes.

## Add Helm Repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install Chart

Using config from a file:

```bash
helm upgrade --install pihhole . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
ct lint charts/pihhole/values.yaml --validate-maintainers=false --config .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| dhcpService.annotations | object | `{}` |  |
| dhcpService.type | string | `"LoadBalancer"` |  |
| dnsService.annotations | object | `{}` |  |
| dnsService.type | string | `"LoadBalancer"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"pihhole/pihhole"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistentVolume.dns.size | string | `"1Gi"` |  |
| persistentVolume.etc.size | string | `"1Gi"` |  |
| persistentVolume.storageClassName | string | `nil` |  |
| pihole.adminPassword.existingSecret | string | `"pihole-credentials"` |  |
| pihole.dns | string | `"1.1.1.1;8.8.4.4"` |  |
| pihole.enableDNSSec | string | `"true"` |  |
| pihole.hostName | string | `nil` |  |
| pihole.timezone | string | `"Europe/London"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.capabilities.add[0] | string | `"NET_ADMIN"` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| webService.annotations | object | `{}` |  |
| webService.port | int | `80` |  |
| webService.type | string | `"ClusterIP"` |  |
