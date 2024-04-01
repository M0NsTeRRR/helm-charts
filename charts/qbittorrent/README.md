# qbittorrent

![Version: 0.2.4](https://img.shields.io/badge/Version-0.2.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.6.4-1](https://img.shields.io/badge/AppVersion-4.6.4--1-informational?style=flat-square)

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
| gluetun.enabled | bool | `true` |  |
| gluetun.extraEnv | list | `[]` |  |
| gluetun.extraEnvFrom | list | `[]` |  |
| gluetun.image.pullPolicy | string | `"IfNotPresent"` |  |
| gluetun.image.registry | string | `"docker.io"` |  |
| gluetun.image.repository | string | `"qmcgaw/gluetun"` |  |
| gluetun.image.sha | string | `""` |  |
| gluetun.image.tag | string | `"v3.38.0"` |  |
| gluetun.resources | object | `{}` |  |
| gluetun.securityContext.capabilities.add[0] | string | `"NET_ADMIN"` |  |
| gluetun.volumeMounts | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"ghcr.io"` |  |
| image.repository | string | `"qbittorrent/docker-qbittorrent-nox"` |  |
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
| service.web.annotations | object | `{}` | Annotations to add to the web service |
| service.web.port | int | `80` |  |
| service.web.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |