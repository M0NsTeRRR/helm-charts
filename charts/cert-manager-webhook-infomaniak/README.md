# cert-manager-webhook-infomaniak

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.1](https://img.shields.io/badge/AppVersion-v0.1.1-informational?style=flat-square)

cert-manager-webhook-infomaniak helm chart for Kubernetes

**Homepage:** <https://github.com/M0NsTeRRR/cert-manager-webhook-infomaniak>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Ludovic Ortega | <ludovic.ortega@adminafk.fr> |  |

## Source Code

* <https://github.com/M0NsTeRRR/helm-charts/tree/main/charts/cert-manager-webhook-infomaniak>

## Requirements

Kubernetes: `>=1.23.0-0`

## Install

```console
helm install cert-manager-webhook-infomaniak oci://ghcr.io/m0nsterrr/helm-charts/cert-manager-webhook-infomaniak
```

Verify the signature with [cosign](https://docs.sigstore.dev/cosign/system_config/installation/) :

```console
cosign verify ghcr.io/m0nsterrr/helm-charts/cert-manager-webhook-infomaniak:1.0.0 --certificate-identity-regexp=^https://github.com/M0NsTeRRR/helm-charts.*$ --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```
### Create the secret

```console
kubectl create secret generic cert-manager-webhook-infomaniak \
  --namespace=cert-manager \
  --from-literal=api-token=<INFOMANIAK API TOKEN>
```

### ClusterIssuer example

```console
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: example@example.com # Replace this with your email address
    privateKeySecretRef:
      name: letsencrypt-prod
    solvers:
    - dns01:
        webhook:
          solverName: infomaniak
          groupName: acme.infomaniak.com
          config:
            #optional, defaults to cert-manager-webhook-infomaniak
            secretRef: cert-manager-webhook-infomaniak
            #optional, defaults to api-token
            apiTokenSecretKey: api-token
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| certManager.namespace | string | `"cert-manager"` | Namespace under which cert-manager is installed |
| certManager.serviceAccountName | string | `"cert-manager"` | Name of the cert-manager service account |
| extraEnv | list | `[]` | Environment variables to add to the cert-manager-webhook-infomaniak pods |
| extraEnvFrom | list | `[]` | Environment variables from secrets or configmaps to add to the cert-manager-webhook-infomaniak pods |
| fullnameOverride | string | `""` |  |
| groupName | string | `"acme.infomaniak.com"` | Name under which the webhook will be available |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"ghcr.io"` |  |
| image.repository | string | `"m0nsterrr/cert-manager-webhook-infomaniak"` |  |
| image.sha | string | `""` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.fsGroup | int | `65532` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsGroup | int | `65532` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `65532` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service.port | int | `443` |  |
| service.type | string | `"ClusterIP"` |  |
| strategy | object | `{"type":"Recreate"}` | Deployment strategy |
| tolerations | list | `[]` |  |
