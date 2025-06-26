{{/*
Expand the name of the chart.
*/}}
{{- define "homepage.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "homepage.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "homepage.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "homepage.labels" -}}
helm.sh/chart: {{ include "homepage.chart" . }}
{{ include "homepage.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "homepage.selectorLabels" -}}
app.kubernetes.io/name: {{ include "homepage.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Generate a comma-separated list of ingress hosts, Kubernetes internal service FQDNs,
and custom allowed hosts for homepage.allowedHosts
*/}}
{{- define "homepage.allowedHosts" -}}
{{- $serviceList := list -}}
{{- $fullName := include "homepage.fullname" . -}}
{{- $namespace := .Release.Namespace -}}

{{- /* Add ingress hosts */ -}}
{{- if .Values.ingress.enabled -}}
  {{- range $host := .Values.ingress.hosts -}}
    {{- $serviceList = append $serviceList $host.host -}}
  {{- end -}}
{{- end -}}

{{- /* Add all possible FQDN variants for the internal Kubernetes service */ -}}
{{- $shortName := printf "%s" $fullName -}}
{{- $serviceList = append $serviceList $shortName -}}

{{- $withNamespace := printf "%s.%s" $fullName $namespace -}}
{{- $serviceList = append $serviceList $withNamespace -}}

{{- $withSvc := printf "%s.%s.svc" $fullName $namespace -}}
{{- $serviceList = append $serviceList $withSvc -}}

{{- $withCluster := printf "%s.%s.svc.cluster" $fullName $namespace -}}
{{- $serviceList = append $serviceList $withCluster -}}

{{- $fullFQDN := printf "%s.%s.svc.cluster.local" $fullName $namespace -}}
{{- $serviceList = append $serviceList $fullFQDN -}}

{{- /* Add custom allowed hosts from values.yaml */ -}}
{{- range $host := .Values.config.allowedHosts -}}
  {{- $serviceList = append $serviceList $host -}}
{{- end -}}

{{- /* Join the list with commas */ -}}
{{- $serviceList | join "," -}}
{{- end -}}


{{/*
Create the name of the service account to use
*/}}
{{- define "homepage.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "homepage.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
