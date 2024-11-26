# event-exporter-app

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![AppVersion: v0.11](https://img.shields.io/badge/AppVersion-v0.11-informational?style=flat-square)

The Event Exporter runs on management clusters to watch and act upon Kubernetes events.

**Homepage:** <https://github.com/giantswarm/event-exporter-app>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| grafana | object | `{"token":""}` | Grafana settings. |
| grafana.token | string | `""` | Grafana authentication token. |
| image | object | `{"name":"giantswarm/kubernetes-event-exporter","pullPolicy":"IfNotPresent","tag":""}` | Image settings. |
| image.name | string | `"giantswarm/kubernetes-event-exporter"` | Image repository. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.tag | string | `""` | Image tag. Defaults to `.Chart.AppVersion`. |
| managementCluster | object | `{"customer":"","name":""}` | Management cluster the event exporter is running in. |
| managementCluster.customer | string | `""` | Customer the management cluster belongs to. |
| managementCluster.name | string | `""` | Management cluster name. |
| podSecurityContext | object | `{}` | Pod Security Context. |
| provider | object | `{"kind":""}` | Provider of the management cluster the event exporter is running in. |
| provider.kind | string | `""` | Provider kind. |
| registry | object | `{"domain":"gsoci.azurecr.io"}` | Registry settings. |
| registry.domain | string | `"gsoci.azurecr.io"` | Registry host. |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Container Security Context. |
| slack | object | `{"webhook":""}` | Slack settings. |
| slack.webhook | string | `""` | Slack webhook URL. |
| testingEnvironment | bool | `false` | If the management cluster the event exporter is running in is a testing environment. |
| verticalPodAutoscaler | object | `{"enabled":true}` | Vertical Pod Autoscaler settings. |
| verticalPodAutoscaler.enabled | bool | `true` | If Vertical Pod Autoscaler is enabled. |
