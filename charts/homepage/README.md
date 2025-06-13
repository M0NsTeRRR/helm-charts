# homepage

![Version: 3.3.0](https://img.shields.io/badge/Version-3.3.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.3.2](https://img.shields.io/badge/AppVersion-v1.3.2-informational?style=flat-square)

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
cosign verify ghcr.io/m0nsterrr/helm-charts/homepage:3.3.0 --certificate-identity=https://github.com/M0NsTeRRR/helm-charts/.github/workflows/releases.yml@refs/heads/main --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.bookmarksYaml | string | `"---\n- Developer:\n    - Github:\n        - abbr: GH\n          href: https://github.com/\n\n- Social:\n    - Reddit:\n        - icon: reddit.png\n          href: https://reddit.com/\n          description: The front page of the internet\n\n- Entertainment:\n    - YouTube:\n        - abbr: YT\n          href: https://youtube.com/\n"` |  |
| config.customCss | string | `""` |  |
| config.customJs | string | `""` |  |
| config.dockerYaml | string | `""` |  |
| config.kubernetesYaml | string | `"---\nmode: cluster\n"` |  |
| config.servicesYaml | string | `"---\n- My First Group:\n    - My First Service:\n        href: http://localhost/\n        description: Homepage is awesome\n\n- My Second Group:\n    - My Second Service:\n        href: http://localhost/\n        description: Homepage is the best\n\n- My Third Group:\n    - My Third Service:\n        href: http://localhost/\n        description: Homepage is 😎\n"` |  |
| config.settingsYaml | string | `"---\ntitle: My Awesome Homepage\ndescription: A description of my awesome homepage\ntheme: dark\nlanguage: en\n"` |  |
| config.widgetsYaml | string | `"---\n- kubernetes:\n    cluster:\n      show: true\n      cpu: true\n      memory: true\n      showLabel: true\n      label: \"cluster\"\n    nodes:\n      show: true\n      cpu: true\n      memory: true\n      showLabel: true\n- resources:\n    backend: resources\n    expanded: true\n    cpu: true\n    memory: true\n    network: default\n- search:\n    provider: duckduckgo\n    target: _blank\n"` |  |
| envBaseUrl | string | `"homepage.example.com"` | Required! IP or Url - without http/https   Environment variables is a comma-separated (no spaces) list of allowed hosts (sometimes with the port)  that can host your homepage install.  <https://gethomepage.dev/installation/#homepage_allowed_hosts> |
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
