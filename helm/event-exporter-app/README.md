# event-exporter-app

![Version: 3.3.1](https://img.shields.io/badge/Version-3.3.1-informational?style=flat-square) ![AppVersion: 2.1.1](https://img.shields.io/badge/AppVersion-2.1.1-informational?style=flat-square)

The Event Exporter runs on management clusters to watch and act upon Kubernetes events.

**Homepage:** <https://github.com/giantswarm/event-exporter-app>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | list | `[]` | Environment variables for the event exporter container. |
| grafana | object | `{"token":""}` | Grafana settings. |
| grafana.token | string | `""` | Grafana authentication token. |
| image | object | `{"name":"giantswarm/kubernetes-event-exporter","pullPolicy":"IfNotPresent","registry":"gsoci.azurecr.io","tag":""}` | Image settings. |
| image.name | string | `"giantswarm/kubernetes-event-exporter"` | Image repository. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.registry | string | `"gsoci.azurecr.io"` | Overrides the image registry. |
| image.tag | string | `""` | Image tag. Defaults to `.Chart.AppVersion`. |
| managementCluster | object | `{"customer":"","name":""}` | Management cluster the event exporter is running in. |
| managementCluster.customer | string | `""` | Customer the management cluster belongs to. |
| managementCluster.name | string | `""` | Management cluster name. |
| podSecurityContext | object | `{"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod Security Context. |
| provider | object | `{"kind":""}` | Provider of the management cluster the event exporter is running in. |
| provider.kind | string | `""` | Provider kind. |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Container Security Context. |
| slack | object | `{"channel":"","token":"","webhook":""}` | Slack settings. |
| slack.channel | string | `""` | Slack channel to post to. |
| slack.token | string | `""` | Slack token. |
| slack.webhook | string | `""` | DEPRECATED: Slack webhook URL. Will be removed in a future release. Please use token and channel instead. |
| testingEnvironment | bool | `false` | If the management cluster the event exporter is running in is a testing environment. |
| verticalPodAutoscaler | object | `{"enabled":true}` | Vertical Pod Autoscaler settings. |
| verticalPodAutoscaler.enabled | bool | `true` | If Vertical Pod Autoscaler is enabled. |
| watchReasons | list | `["Upgrading","Upgraded","UpgradedControlPlane"]` | Reasons for events to be exported. |
