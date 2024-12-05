{{/*
Expand the name of the chart.
*/}}
{{- define "event-exporter.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "event-exporter.fullname" -}}
{{- .Release.Name | trimSuffix "-app" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "event-exporter.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "event-exporter.labels" -}}
helm.sh/chart: {{ include "event-exporter.chart" . }}
app.kubernetes.io/name: {{ include "event-exporter.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
{{ include "event-exporter.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "event-exporter.selectorLabels" -}}
app: {{ include "event-exporter.name" . }}
version: v1
{{- end }}
