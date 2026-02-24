# jellyfin

![Version: 2.2.0](https://img.shields.io/badge/Version-2.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 10.11.6](https://img.shields.io/badge/AppVersion-10.11.6-informational?style=flat-square)

jellyfin helm chart for Kubernetes

**Homepage:** <https://github.com/jellyfin/jellyfin>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/jellyfin>

## Requirements

Kubernetes: `>=1.23.0-0`

## Install

```console
helm install jellyfin oci://ghcr.io/m0nsterrr/helm-charts/jellyfin
```

Verify the signature with [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) :

```console
cosign verify ghcr.io/m0nsterrr/helm-charts/jellyfin:2.2.0 --certificate-identity-regexp=^https://github.com/M0NsTeRRR/helm-charts.*$ --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| cache | object | `{"persistence":{"accessModes":["ReadWriteOnce"],"annotations":{},"name":"","size":"5Gi","volumeName":""}}` | Creating PVC to store cache |
| cache.persistence.accessModes | list | `["ReadWriteOnce"]` | Access modes of persistent disk |
| cache.persistence.annotations | object | `{}` | Annotations for PVCs |
| cache.persistence.name | string | `""` | Config name |
| cache.persistence.size | string | `"5Gi"` | Size of persistent disk |
| cache.persistence.volumeName | string | `""` | Name of the permanent volume to reference in the claim. Can be used to bind to existing volumes. |
| config | object | `{"persistence":{"accessModes":["ReadWriteOnce"],"annotations":{},"name":"","size":"5Gi","volumeName":""}}` | Creating PVC to store configuration |
| config.persistence.accessModes | list | `["ReadWriteOnce"]` | Access modes of persistent disk |
| config.persistence.annotations | object | `{}` | Annotations for PVCs |
| config.persistence.name | string | `""` | Config name |
| config.persistence.size | string | `"5Gi"` | Size of persistent disk |
| config.persistence.volumeName | string | `""` | Name of the permanent volume to reference in the claim. Can be used to bind to existing volumes. |
| extraEnv | list | `[]` | Environment variables to add to the jellyseerr pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the jellyseerr pods |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"jellyfin/jellyfin"` |  |
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
| route.main.additionalRules | list | `[]` |  |
| route.main.annotations | object | `{}` |  |
| route.main.apiVersion | string | `"gateway.networking.k8s.io/v1"` | Set the route apiVersion, e.g. gateway.networking.k8s.io/v1 or gateway.networking.k8s.io/v1alpha2 |
| route.main.enabled | bool | `false` | Enables or disables the Gateway API route |
| route.main.filters | list | `[]` |  |
| route.main.hostnames | list | `[]` |  |
| route.main.httpsRedirect | bool | `false` | To redirect to HTTPS, create a new route object under the main route and enable this option. This should only be used with HTTP-like routes, such as HTTPRoute or GRPCRoute. [Reference]( https://gateway-api.sigs.k8s.io/guides/http-redirect-rewrite/ ) |
| route.main.kind | string | `"HTTPRoute"` | Set the route kind. Note that experimental kinds require changing `apiVersion` |
| route.main.labels | object | `{}` |  |
| route.main.matches[0].path.type | string | `"PathPrefix"` |  |
| route.main.matches[0].path.value | string | `"/"` |  |
| route.main.parentRefs | list | `[]` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| strategy | object | `{"type":"Recreate"}` | Deployment strategy |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |
