# virt-operator

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.0](https://img.shields.io/badge/AppVersion-1.2.0-informational?style=flat-square)

KubeVirt technology addresses the needs of development teams that have adopted or want to adopt Kubernetes but
possess existing Virtual Machine-based workloads that cannot be easily containerized. More specifically,
the technology provides a unified development platform where developers can build, modify, and deploy applications
residing in both Application Containers as well as Virtual Machines in a common, shared environment.

Benefits are broad and significant. Teams with a reliance on existing virtual machine-based workloads are empowered
to rapidly containerize applications. With virtualized workloads placed directly in development workflows,
teams can decompose them over time while still leveraging remaining virtualized components as is comfortably desired.

## Add Helm Repository

```shell
helm repo add drew-viles https://drew-viles.github.io/helm-charts
helm repo update
```

## Install Chart

Using config from a file:

```bash
helm upgrade --install virt-operator . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
ct lint charts/virt-operator/values.yaml --validate-maintainers=false --config .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/kubevirt/virt-operator"` |  |
| image.tag | string | `""` |  |
| kubevirt.useSoftwareEmulation | bool | `false` |  |
| kubevirt.version | string | `"1.2.0"` |  |
| nameOverride | string | `""` |  |
| replicaCount | int | `2` |  |
