{{/*
Qbitorrent deployment
*/}}
{{/*
Expand the name of the chart.
*/}}
{{- define "qbittorrent.name" -}}
{{- default .Chart.Name .Values.qbittorrent.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "qbittorrent.fullname" -}}
{{- if .Values.qbittorrent.fullnameOverride }}
{{- .Values.qbittorrent.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.qbittorrent.nameOverride }}
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
{{- define "qbittorrent.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "qbittorrent.labels" -}}
helm.sh/chart: {{ include "qbittorrent.chart" . }}
{{ include "qbittorrent.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "qbittorrent.selectorLabels" -}}
app.kubernetes.io/name: {{ include "qbittorrent.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "qbittorrent.serviceAccountName" -}}
{{- if .Values.qbittorrent.serviceAccount.create }}
{{- default (include "qbittorrent.fullname" .) .Values.qbittorrent.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.qbittorrent.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the pvc config to use
*/}}
{{- define "qbittorrent.configPersistenceName" -}}
{{- default (printf "%s-config" (include "qbittorrent.fullname" .)) .Values.qbittorrent.config.persistence.name }}
{{- end }}

{{/*
GenericDevicePlugin daemonset
*/}}

{{/*
Expand the name of the chart.
*/}}
{{- define "genericDevicePlugin.name" -}}
{{- default "generic-device-plugin" .Values.genericDevicePlugin.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "genericDevicePlugin.fullname" -}}
{{- if .Values.genericDevicePlugin.fullnameOverride }}
{{- .Values.genericDevicePlugin.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "generic-device-plugin" .Values.genericDevicePlugin.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "genericDevicePlugin.labels" -}}
helm.sh/chart: {{ include "qbittorrent.chart" . }}
{{ include "genericDevicePlugin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "genericDevicePlugin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "genericDevicePlugin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "genericDevicePlugin.serviceAccountName" -}}
{{- if .Values.genericDevicePlugin.serviceAccount.create }}
{{- default (include "genericDevicePlugin.fullname" .) .Values.genericDevicePlugin.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.genericDevicePlugin.serviceAccount.name }}
{{- end }}
{{- end }}
