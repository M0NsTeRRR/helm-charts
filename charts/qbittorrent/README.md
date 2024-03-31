# qbittorrent

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.0.2.1183-ls232](https://img.shields.io/badge/AppVersion-4.0.2.1183--ls232-informational?style=flat-square)

qbittorrent helm chart for Kubernetes

**Homepage:** <https://github.com/qbittorrent/qBittorrent>

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/radarr>

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
| config | object | `{"persistence":{"annotations":{},"name":"","size":"5Gi"}}` | Creating PVC to store configuration |
| config.persistence.annotations | object | `{}` | Annotations for PVCs |
| config.persistence.name | string | `""` | Config name |
| config.persistence.size | string | `"5Gi"` | Size of persistent disk |
| extraEnv | list | `[]` | Environment variables to add to the qbittorrent pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the qbittorrent pods |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"lscr.io"` |  |
| image.repository | string | `"linuxserver/qbittorrent"` |  |
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
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.torrent.annotations | object | `{}` | Annotations to add to the torrent service |
| service.torrent.port | int | `6881` |  |
| service.torrent.type | string | `"ClusterIP"` |  |
| service.web.port | int | `80` |  |
| service.web.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |