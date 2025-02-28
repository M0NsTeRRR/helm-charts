# qbittorrent

![Version: 5.0.1](https://img.shields.io/badge/Version-5.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 5.0.4](https://img.shields.io/badge/AppVersion-5.0.4-informational?style=flat-square)

qbittorrent helm chart for Kubernetes

**Homepage:** <https://github.com/qbittorrent/qBittorrent>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/qbittorrent>

## Requirements

Kubernetes: `>=1.23.0-0`

## Install
```console
helm install qbittorrent oci://ghcr.io/m0nsterrr/helm-charts/qbittorrent
```

Verify the signature with [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) :
```console
cosign verify ghcr.io/m0nsterrr/helm-charts/qbittorrent:5.0.1 --certificate-identity=https://github.com/M0NsTeRRR/helm-charts/.github/workflows/releases.yml@refs/heads/main --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| genericDevicePlugin | object | `{"affinity":{},"enabled":true,"extraEnv":[],"extraEnvFrom":[],"fullnameOverride":"","image":{"registry":"ghcr.io","repository":"squat/generic-device-plugin","sha":"","tag":"36bfc606bba2064de6ede0ff2764cbb52edff70d"},"imagePullSecrets":[],"nameOverride":"","nodeSelector":{},"podAnnotations":{},"podLabels":{},"podSecurityContext":{},"priorityClassName":"system-node-critical","resources":{},"securityContext":{"privileged":true},"serviceAccount":{"annotations":{},"automount":true,"create":true,"name":""},"serviceMonitor":{"enabled":false,"interval":"30s","labels":{},"metricRelabelings":[],"namespace":null,"path":"/metrics","relabelings":[],"scheme":"http","scrapeTimeout":"30s","service":{"port":8080},"targetLabels":[],"tlsConfig":{}},"tolerations":[],"updateStrategy":{"type":"RollingUpdate"}}` | A Kubernetes device plugin to schedule generic Linux devices (used for /dev/tun) |
| genericDevicePlugin.enabled | bool | `true` | Enable generic device plugin daemonset |
| genericDevicePlugin.extraEnv | list | `[]` | Environment variables to add to the qbittorrent pods |
| genericDevicePlugin.extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the qbittorrent pods |
| genericDevicePlugin.image.tag | string | `"36bfc606bba2064de6ede0ff2764cbb52edff70d"` | Overrides the image tag whose default is the chart appVersion. |
| genericDevicePlugin.serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| genericDevicePlugin.serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| genericDevicePlugin.serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| genericDevicePlugin.serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| genericDevicePlugin.serviceMonitor.enabled | bool | `false` | If true, a ServiceMonitor CRD is created for a prometheus operator |
| genericDevicePlugin.serviceMonitor.namespace | string | `nil` | If set create the `ServiceMonitor` in an alternate namespace. |
| genericDevicePlugin.serviceMonitor.service.port | int | `8080` | Metrics service port to scrape |
| genericDevicePlugin.updateStrategy | object | `{"type":"RollingUpdate"}` | Deployment strategy |
| qbittorrent.affinity | object | `{}` |  |
| qbittorrent.config | object | `{"persistence":{"accessModes":["ReadWriteOnce"],"annotations":{},"enabled":true,"name":"","size":"5Gi","volumeName":""}}` | Creating PVC to store configuration |
| qbittorrent.config.persistence.accessModes | list | `["ReadWriteOnce"]` | Access modes of persistent disk |
| qbittorrent.config.persistence.annotations | object | `{}` | Annotations for PVCs |
| qbittorrent.config.persistence.name | string | `""` | Config name |
| qbittorrent.config.persistence.size | string | `"5Gi"` | Size of persistent disk |
| qbittorrent.config.persistence.volumeName | string | `""` | Name of the permanent volume to reference in the claim. Can be used to bind to existing volumes. |
| qbittorrent.extraContainers | list | `[]` | Extra containers to add to qbittorrent deployment |
| qbittorrent.extraEnv | list | `[]` | Environment variables to add to the qbittorrent pods |
| qbittorrent.extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the qbittorrent pods |
| qbittorrent.fullnameOverride | string | `""` |  |
| qbittorrent.gluetun | object | `{"enabled":false,"extraEnv":[],"extraEnvFrom":[],"image":{"pullPolicy":"IfNotPresent","registry":"docker.io","repository":"qmcgaw/gluetun","sha":"","tag":"v3.40.0"},"resources":{"limits":{"squat.ai/tun":1}},"securityContext":{"capabilities":{"add":["NET_ADMIN"]}},"volumeMounts":[]}` | Gluetun sidecar |
| qbittorrent.image.pullPolicy | string | `"IfNotPresent"` |  |
| qbittorrent.image.registry | string | `"ghcr.io"` |  |
| qbittorrent.image.repository | string | `"onedr0p/qbittorrent"` |  |
| qbittorrent.image.sha | string | `""` |  |
| qbittorrent.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| qbittorrent.imagePullSecrets | list | `[]` |  |
| qbittorrent.ingress.annotations | object | `{}` |  |
| qbittorrent.ingress.enabled | bool | `false` |  |
| qbittorrent.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| qbittorrent.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| qbittorrent.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| qbittorrent.ingress.ingressClassName | string | `""` |  |
| qbittorrent.ingress.tls | list | `[]` |  |
| qbittorrent.nameOverride | string | `""` |  |
| qbittorrent.nodeSelector | object | `{}` |  |
| qbittorrent.podAnnotations | object | `{}` |  |
| qbittorrent.podLabels | object | `{}` |  |
| qbittorrent.podSecurityContext.fsGroup | int | `65534` |  |
| qbittorrent.podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| qbittorrent.prometheusQbittorrentExporter | object | `{"enabled":false,"extraEnv":[],"extraEnvFrom":[],"image":{"pullPolicy":"IfNotPresent","registry":"ghcr.io","repository":"esanchezm/prometheus-qbittorrent-exporter","sha":"","tag":"v1.6.0"},"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"privileged":false,"readOnlyRootFilesystem":true,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}},"serviceMonitor":{"enabled":false,"interval":"30s","labels":{},"metricRelabelings":[],"namespace":null,"path":"/metrics","relabelings":[],"scheme":"http","scrapeTimeout":"30s","service":{"port":8100},"targetLabels":[],"tlsConfig":{}},"volumeMounts":[]}` | Prometheus-qbittorrent-exporter sidecar |
| qbittorrent.prometheusQbittorrentExporter.serviceMonitor.enabled | bool | `false` | If true, a ServiceMonitor CRD is created for a prometheus operator |
| qbittorrent.prometheusQbittorrentExporter.serviceMonitor.namespace | string | `nil` | If set create the `ServiceMonitor` in an alternate namespace. |
| qbittorrent.prometheusQbittorrentExporter.serviceMonitor.service.port | int | `8100` | Metrics service port to scrape |
| qbittorrent.replicaCount | int | `1` |  |
| qbittorrent.resources | object | `{}` |  |
| qbittorrent.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| qbittorrent.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| qbittorrent.securityContext.privileged | bool | `false` |  |
| qbittorrent.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| qbittorrent.securityContext.runAsGroup | int | `65534` |  |
| qbittorrent.securityContext.runAsNonRoot | bool | `true` |  |
| qbittorrent.securityContext.runAsUser | int | `65534` |  |
| qbittorrent.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| qbittorrent.service.torrent.annotations | object | `{}` | Annotations to add to the torrent service |
| qbittorrent.service.torrent.port | int | `8388` |  |
| qbittorrent.service.torrent.type | string | `"ClusterIP"` |  |
| qbittorrent.service.web.annotations | object | `{}` | Annotations to add to the web service |
| qbittorrent.service.web.port | int | `80` |  |
| qbittorrent.service.web.type | string | `"ClusterIP"` |  |
| qbittorrent.serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| qbittorrent.serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| qbittorrent.serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| qbittorrent.serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| qbittorrent.strategy | object | `{"type":"Recreate"}` | Deployment strategy |
| qbittorrent.tolerations | list | `[]` |  |
| qbittorrent.volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| qbittorrent.volumes | list | `[]` | Additional volumes on the output Deployment definition. |