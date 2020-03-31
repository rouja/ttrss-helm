{{- define "ttrss-helm.ttrss.fullname" -}}
{{ include "ttrss-helm.fullname" . }}-ttrss
{{- end -}}

{{- define "ttrss-helm.ttrss.labels" -}}
{{ include "ttrss-helm.labels" . }}
app.kubernetes.io/component: ttrss
{{- end -}}

{{- define "ttrss-helm.ttrss.selectorLabels" -}}
{{ include "ttrss-helm.selectorLabels" . }}
app.kubernetes.io/component: ttrss
{{- end -}}

{{- define "ttrss-helm.ttrss.feed.labels" -}}
{{ include "ttrss-helm.labels" . }}
app.kubernetes.io/component: feed
{{- end -}}

{{- define "ttrss-helm.ttrss.feed.selectorLabels" -}}
{{ include "ttrss-helm.selectorLabels" . }}
app.kubernetes.io/component: feed
{{- end -}}
