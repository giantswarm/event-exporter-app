[![CircleCI](https://circleci.com/gh/giantswarm/event-exporter-app.svg?style=shield)](https://circleci.com/gh/giantswarm/event-exporter-app)

# event-exporter-app

The event-exporter-app runs on Control Planes to watch and act upon Kubernetes
events. One use case might be to look for Tenant Cluster upgrade events and emit
Slack messages in various channels for awareness. The core component can be
found at https://github.com/opsgenie/kubernetes-event-exporter.
