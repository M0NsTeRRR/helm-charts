# cert-manager-webhook-infomaniak

![Version: 1.3.0](https://img.shields.io/badge/Version-1.3.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.6](https://img.shields.io/badge/AppVersion-v0.1.6-informational?style=flat-square)

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
cosign verify ghcr.io/m0nsterrr/helm-charts/cert-manager-webhook-infomaniak:1.3.0 --certificate-identity-regexp=^https://github.com/M0NsTeRRR/helm-charts.*$ --certificate-oidc-issuer=https://token.ac
tions.githubusercontent.com
```
### Create the secret

The Infomaniak API token needs the `domain:read`, `dns:read`, and `dns:write` scopes.

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
| annotations | object | `{}` | Deployment annotations |
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
| priorityClassName | string | `""` | Priority class to be assigned to the Pod(s). |
| probes.liveness.failureThreshold | int | `3` | Consecutive failures before the container is restarted |
| probes.liveness.initialDelaySeconds | int | `0` | Seconds after the container has started before the probe is initiated |
| probes.liveness.path | string | `"/healthz"` | HTTPS path probed |
| probes.liveness.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| probes.liveness.timeoutSeconds | int | `1` | Seconds after which the probe times out |
| probes.readiness.failureThreshold | int | `3` | Consecutive failures before the pod is marked unready |
| probes.readiness.initialDelaySeconds | int | `0` | Seconds after the container has started before the probe is initiated |
| probes.readiness.path | string | `"/healthz"` | HTTPS path probed |
| probes.readiness.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| probes.readiness.successThreshold | int | `1` | Consecutive successes required to be considered ready again |
| probes.readiness.timeoutSeconds | int | `1` | Seconds after which the probe times out |
| probes.startup | object | `{"enabled":false,"failureThreshold":30,"initialDelaySeconds":0,"path":"/healthz","periodSeconds":10,"timeoutSeconds":1}` | Startup probe, holds liveness and readiness until the first success. Useful for slow starts (database migrations). The maximum startup time is `failureThreshold * periodSeconds`. |
| probes.startup.enabled | bool | `false` | Enable the startup probe |
| probes.startup.failureThreshold | int | `30` | Consecutive failures before the container is restarted |
| probes.startup.initialDelaySeconds | int | `0` | Seconds after the container has started before the probe is initiated |
| probes.startup.path | string | `"/healthz"` | HTTPS path probed |
| probes.startup.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| probes.startup.timeoutSeconds | int | `1` | Seconds after which the probe times out |
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
