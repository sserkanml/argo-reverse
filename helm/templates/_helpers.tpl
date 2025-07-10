{{- define "reverse-sync-demo.name" -}}
reverse-sync-demo
{{- end }}

{{- define "reverse-sync-demo.fullname" -}}
{{ include "reverse-sync-demo.name" . }}
{{- end }}
