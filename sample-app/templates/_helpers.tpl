{{/*
Return the fully qualified app name
*/}}
{{- define "sample-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return the app name
*/}}
{{- define "sample-app.name" -}}
{{- .Chart.Name -}}
{{- end }}
