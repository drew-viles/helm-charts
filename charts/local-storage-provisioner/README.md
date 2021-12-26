# provisioner

![Version: 2.5.2](https://img.shields.io/badge/Version-2.5.2-informational?style=flat-square) ![AppVersion: 2.4.0](https://img.shields.io/badge/AppVersion-2.4.0-informational?style=flat-square)

local provisioner chart

## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install provisioner . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/provisioner/values.yaml  --config-file .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| classes[0].blockCleanerCommand[0] | string | `"/scripts/shred.sh"` |  |
| classes[0].blockCleanerCommand[1] | string | `"2"` |  |
| classes[0].fsType | string | `"ext4"` |  |
| classes[0].hostDir | string | `"/mnt/fast-disks"` |  |
| classes[0].name | string | `"fast-disks"` |  |
| classes[0].namePattern | string | `"*"` |  |
| classes[0].volumeMode | string | `"Filesystem"` |  |
| common.additionalHostPathVolumes | object | `{}` |  |
| common.mountDevVolume | bool | `true` |  |
| common.rbac.create | bool | `true` |  |
| common.rbac.pspEnabled | bool | `false` |  |
| common.serviceAccount.create | bool | `true` |  |
| common.serviceAccount.name | string | `""` |  |
| common.setPVOwnerRef | bool | `false` |  |
| common.useAlphaAPI | bool | `false` |  |
| common.useJobForCleaning | bool | `false` |  |
| common.useNodeNameOnly | bool | `false` |  |
| daemonset.affinity | object | `{}` |  |
| daemonset.image | string | `"k8s.gcr.io/sig-storage/local-volume-provisioner:v2.4.0"` |  |
| daemonset.initContainers | list | `[]` |  |
| daemonset.nodeSelector | object | `{}` |  |
| daemonset.podAnnotations | object | `{}` |  |
| daemonset.podLabels | object | `{}` |  |
| daemonset.privileged | bool | `true` |  |
| daemonset.resources | object | `{}` |  |
| daemonset.tolerations | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| nameOverride | string | `""` |  |
| serviceMonitor.additionalLabels | object | `{}` |  |
| serviceMonitor.enabled | bool | `false` |  |
| serviceMonitor.interval | string | `"10s"` |  |
| serviceMonitor.namespace | string | `nil` |  |
| serviceMonitor.relabelings | list | `[]` |  |