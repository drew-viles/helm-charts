
{{- define "knative-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "knative-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "knative-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "knative-operator.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{- define "knative-operator.labels" -}}
helm.sh/chart: {{ include "knative-operator.chart" . }}
{{ include "knative-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: "Helm"
{{- end }}

{{- define "knative-operator.annotations" -}}
meta.helm.sh/release-name: "knative-operator"
meta.helm.sh/release-namespace: {{ .Values.operator.operatorNamespace.name | quote }}
{{- end }}

