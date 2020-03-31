{{- define "ttrss-helm.pgsql.fullname" -}}
{{ include "ttrss-helm.fullname" . }}-pgsql
{{- end -}}

{{- define "ttrss-helm.pgsql.labels" -}}
{{ include "ttrss-helm.labels" . }}
app.kubernetes.io/component: pgsql
{{- end -}}

{{- define "ttrss-helm.pgsql.selectorLabels" -}}
{{ include "ttrss-helm.selectorLabels" . }}
app.kubernetes.io/component: pgsql
{{- end -}}
