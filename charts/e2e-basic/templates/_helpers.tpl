{{- define "e2e-testing.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "e2e-testing.labels" -}}
helm.sh/chart: {{ include "e2e-testing.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: "Helm"
{{- end }}

{{- define "e2e-testing.annotations" -}}
meta.helm.sh/release-namespace: {{ .Release.Namespace | quote }}
{{- end }}
