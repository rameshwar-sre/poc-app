{{/*
Generate app name
*/}}
{{- define "sample-app.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Generate full name
*/}}
{{- define "sample-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Generate standard labels
*/}}
{{- define "sample-app.labels" -}}
app.kubernetes.io/name: {{ include "sample-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
