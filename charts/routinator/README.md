# routinator

![Version: 2.2.0](https://img.shields.io/badge/Version-2.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.15.1](https://img.shields.io/badge/AppVersion-v0.15.1-informational?style=flat-square)

routinator helm chart for Kubernetes

**Homepage:** <https://github.com/NLnetLabs/routinator>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/routinator>

## Requirements

Kubernetes: `>=1.23.0-0`

## Install

```console
helm install routinator oci://ghcr.io/m0nsterrr/helm-charts/routinator
```

Verify the signature with [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) :

```console
cosign verify ghcr.io/m0nsterrr/helm-charts/routinator:2.2.0 --certificate-identity-regexp=^https://github.com/M0NsTeRRR/helm-charts.*$ --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| extraEnv | list | `[]` | Environment variables to add to the kea-exporter pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the kea-exporter pods |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"nlnetlabs/routinator"` |  |
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
| podSecurityContext.fsGroup | int | `1012` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| prometheusRule.enabled | bool | `false` | If true, a PrometheusRule CRD is created for a prometheus operator |
| prometheusRule.namespace | string | `nil` | If set create the `PrometheusRule` in an alternate namespace. |
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
| rtrService.annotations | object | `{}` |  |
| rtrService.port | int | `3323` |  |
| rtrService.type | string | `"LoadBalancer"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsGroup | int | `1012` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1012` |  |
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
| serviceMonitor.service.port | int | `8323` | Metrics service port to scrape |
| serviceMonitor.targetLabels | list | `[]` |  |
| serviceMonitor.tlsConfig | object | `{}` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |
