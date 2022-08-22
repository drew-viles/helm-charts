# End-2-End-Testing



![Version: 0.0.4](https://img.shields.io/badge/Version-0.0.4-informational?style=flat-square) ![AppVersion: 0.0.4](https://img.shields.io/badge/AppVersion-0.0.4-informational?style=flat-square) 

# Generic End-2-End testing

This setup will deploy a multi-replica deployment with a web frontend and a database backend.
They are in reality not linked and do not have a valid application but the test is to ensure we can spin things up
using affinity and ant-affinity, volumes and more.

## Features
* Affinity/anti-affinity to attempt to evenly split workloads
* Multiple replicas of nginx and Postgresql
* Volume creation and mounting in Postgresql container
* Configmap mounting for Nginx Index.php for querying the Postgres sts - confirms cluster dns works
* SQL seeding for populating DB on Post start lifecycle - confirms cluster dns works
* Public and Private Ingress
* PDB to ensure pods stay online at all times
* Scripts to deploy, delete and test

# Tests
## Ingress Testing

This workload will spin up an example deployment with an ingress and certificate combo to confirm
that ingress is working with TLS.

## Affinity/Anti-Affinity Testing

This workload will spin up an example deployment to test affinity and anti-affinity.
An Nginx and Postgres workload will be added to the cluster.

The Nginx pods should sit on different nodes to one another as should the Postgres pods.
However, the Nginx pods should share a node with the Postgres and vice versa.

Once deployed, confirm that the pods are arranged as such onn each node.

*** Node X is just a random node in the EKS cluster, the pods are not assigned to the nodes in any sort of order due to affinity settings ***

| **Node A**  | **Node B**    | **Node C**  |
|:------------|:--------------|:------------|
| `Nginx`     | `Nginx`       | `Nginx`     |
| `Postgres`  | `Postgres`    | `Postgres`  |

## Storage Testing
The storage testing simply applies a PVC to the nginx pod allowing for storage class testing.

## PDB Testing
The PDB ensures a pod is always online to ensure no downtime during upgrades

## Automated Testing:
Check out [E2E Tester](https://github.com/drew-viles/k8s-e2e-tester) for an automated tester which will fire tests against this chart.




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
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"test.example.uk"` |  |
| ingress.tls[0].hosts[0] | string | `"test.example.uk"` |  |
| ingress.tls[0].secretName | string | `"test-secret"` |  |
| monitoring.grafana.dashboards | bool | `false` |  |
| monitoring.serviceMonitor.enabled | bool | `false` |  |
| nginx.image.repo | string | `"nginx"` | The repo to be used |
| nginx.image.tag | string | `"1.21-alpine"` | The tag to be used |
| nginx.resources | object | `{}` |  |
| nginx.serviceAccountName | string | `"nginx"` |  |
| postgres.image.repo | string | `"postgres"` | The repo to be used |
| postgres.image.tag | string | `"14.1-bullseye"` | The tag to be used |
| postgres.serviceAccountName | string | `"postgresql"` |  |
| postgres.statefulset.env.postgresDB | string | `"e2e-user"` |  |
| postgres.statefulset.env.postgresPassword | string | `"e2e-password"` |  |
| postgres.statefulset.env.postgresUser | string | `"e2e-user"` |  |
| postgres.statefulset.persistentData.className | string | `"fast-disks"` |  |
| postgres.statefulset.persistentData.enabled | bool | `true` |  |
| postgres.statefulset.persistentData.size | string | `"10Gi"` |  |