{{- define "ttrss-helm.nginx.fullname" -}}
{{ include "ttrss-helm.fullname" . }}-nginx
{{- end -}}

{{- define "ttrss-helm.nginx.labels" -}}
{{ include "ttrss-helm.labels" . }}
app.kubernetes.io/component: nginx
{{- end -}}

{{- define "ttrss-helm.nginx.selectorLabels" -}}
{{ include "ttrss-helm.selectorLabels" . }}
app.kubernetes.io/component: nginx
{{- end -}}
