{{- define "nginx.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name -}}
{{- end -}}

{{- define "nginx.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nginx.tlsSecretName" -}}
{{- printf "%s-%s-tls" .Release.Name .Chart.Name -}}
{{- end -}}
