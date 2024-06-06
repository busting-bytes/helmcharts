{{- define "laravel.labels" -}}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.kubernetes.io/name: "{{ .Chart.Name | replace "-" "." }}"
app.kubernetes.io/instance: "{{ .Release.Name | replace "-" "." | lower }}"
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/managed-by: "{{ .Release.Service }}"
{{- end }}

{{- define "laravel.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name | lower }}
{{- end }}

{{- define "laravel.fullname" -}}
{{ .Release.Name | lower }}
{{- end }}