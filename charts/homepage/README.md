# homepage

![Version: 4.6.0](https://img.shields.io/badge/Version-4.6.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.9.0](https://img.shields.io/badge/AppVersion-v1.9.0-informational?style=flat-square)

homepage helm chart for Kubernetes

**Homepage:** <https://github.com/gethomepage/homepage>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/homepage>

## Requirements

Kubernetes: `>=1.23.0-0`

## Install

```console
helm install homepage oci://ghcr.io/m0nsterrr/helm-charts/homepage
```

Verify the signature with [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) :

```console
cosign verify ghcr.io/m0nsterrr/helm-charts/homepage:4.6.0 --certificate-identity-regexp=^https://github.com/M0NsTeRRR/helm-charts.*$ --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.allowedHosts | list | `[]` | see https://gethomepage.dev/installation/#homepage_allowed_hosts |
| extraEnv | list | `[]` | Environment variables to add to the kea-exporter pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the kea-exporter pods |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"ghcr.io"` |  |
| image.repository | string | `"gethomepage/homepage"` |  |
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
| rbac.enabled | bool | `true` |  |
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
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |
