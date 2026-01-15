# hyperglass

![Version: 4.0.0](https://img.shields.io/badge/Version-4.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.1.0](https://img.shields.io/badge/AppVersion-v2.1.0-informational?style=flat-square)

hyperglass helm chart for Kubernetes

**Homepage:** <https://github.com/thatmattlove/hyperglass>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/hyperglass>

## Requirements

Kubernetes: `>=1.23.0-0`

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/valkey-io/valkey-helm | valkey | 0.9.* |

## Install

```console
helm install hyperglass oci://ghcr.io/m0nsterrr/helm-charts/hyperglass
```

Verify the signature with [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) :

```console
cosign verify ghcr.io/m0nsterrr/helm-charts/hyperglass:4.0.0 --certificate-identity=https://github.com/M0NsTeRRR/helm-charts/.github/workflows/releases.yml@refs/heads/main --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| build | object | `{"persistence":{"accessModes":["ReadWriteOnce"],"annotations":{},"enabled":true,"name":"","size":"200Mi","volumeName":""}}` | Creating PVC to store UI build artifact |
| build.persistence.accessModes | list | `["ReadWriteOnce"]` | Access modes of persistent disk |
| build.persistence.annotations | object | `{}` | Annotations for PVCs |
| build.persistence.name | string | `""` | Config name |
| build.persistence.size | string | `"200Mi"` | Size of persistent disk |
| build.persistence.volumeName | string | `""` | Name of the permanent volume to reference in the claim. Can be used to bind to existing volumes. |
| extraEnv | list | `[]` | Environment variables to add to the as212510.net pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the as212510.net pods |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"ghcr.io"` |  |
| image.repository | string | `"m0nsterrr/hyperglass"` |  |
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
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
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
| strategy | object | `{"type":"Recreate"}` | Deployment strategy |
| tolerations | list | `[]` |  |
| valkey.auth.aclUsers.default.permissions | string | `"allkeys allchannels allcommands -flushall"` |  |
| valkey.auth.enabled | bool | `false` |  |
| valkey.auth.usersExistingSecret | string | `""` |  |
| valkey.dataStorage.enabled | bool | `true` |  |
| valkey.dataStorage.requestedSize | string | `"1Gi"` |  |
| valkey.enabled | bool | `true` | enable the Valkey chart. Refer to https://github.com/valkey-io/valkey-helm/tree/main/valkey for possible values. |
| valkey.metrics.enabled | bool | `false` |  |
| valkey.metrics.prometheusRule.enabled | bool | `false` |  |
| valkey.metrics.serviceMonitor.enabled | bool | `false` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |
