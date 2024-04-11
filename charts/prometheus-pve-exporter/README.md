# prometheus-pve-exporter

![Version: 0.2.2](https://img.shields.io/badge/Version-0.2.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.2.2](https://img.shields.io/badge/AppVersion-3.2.2-informational?style=flat-square)

prometheus-pve-exporter helm chart for Kubernetes

**Homepage:** <https://github.com/prometheus-pve/prometheus-pve-exporter>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/prometheus-pve-exporter>

## Requirements

Kubernetes: `>=1.23.0-0`

## Chart Repo

Add the following repo to use the chart:

```console
helm repo add adminafk https://helm-charts.adminafk.fr
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| extraEnv | list | `[]` | Environment variables to add to the prometheus-pve-exporter pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the prometheus-pve-exporter pods |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"registry.hub.docker.com"` |  |
| image.repository | string | `"prompve/prometheus-pve-exporter"` |  |
| image.sha | string | `""` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| prometheusRule.enabled | bool | `false` | If true, a PrometheusRule CRD is created for a prometheus operator |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.fsGroup | int | `1000` |  |
| securityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsGroup | int | `1000` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| serviceMonitor.enabled | bool | `false` | If true, a ServiceMonitor CRD is created for a prometheus operator |
| serviceMonitor.interval | string | `"30s"` |  |
| serviceMonitor.labels | object | `{}` |  |
| serviceMonitor.metricRelabelings | list | `[]` |  |
| serviceMonitor.namespace | string | `nil` | If set create the `ServiceMonitor` in an alternate namespace. |
| serviceMonitor.path | string | `"/metrics"` |  |
| serviceMonitor.relabelings | list | `[]` |  |
| serviceMonitor.scheme | string | `"http"` |  |
| serviceMonitor.scrapeTimeout | string | `"30s"` |  |
| serviceMonitor.service.port | int | `9221` | Metrics service port to scrape |
| serviceMonitor.targetLabels | list | `[]` |  |
| serviceMonitor.tlsConfig | object | `{}` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |