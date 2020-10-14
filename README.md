[![CircleCI](https://circleci.com/gh/giantswarm/event-exporter-app.svg?style=shield)](https://circleci.com/gh/giantswarm/event-exporter-app)

# event-exporter-app

The event-exporter-app runs on Control Planes to watch and act upon Kubernetes
events. One use case might be to look for Tenant Cluster upgrade events and emit
Slack messages in various channels for awareness. The core component can be
found at https://github.com/opsgenie/kubernetes-event-exporter.



### Event Matching

Events can be matched against by adding matching rules to the `configmap.yaml`. 
Any matched event will trigger the associated receiver. 

```
- match:
  - apiversion: "cluster.x-k8s.io/v1alpha2"
    kind: "Cluster"
    reason: "ClusterIsUpdating"
    receiver: "webhook"
```



### Slack Receiver 

The underlying event exporter has a lot of different receivers. One of them is 
the webhook receiver which we can use in order to forward messages to Slack. 

```
- name: "webhook"
  webhook:
    endpoint: "your webhook endpoint here"
    layout:
      text: "your slack message here"
```



### Test Events

The event chain can be tested by creating an event that matches the configured 
matchers. Simply `kubectl apply -f event.yaml`. As a result you should see a 
slack message in the configured channel. 

```
$ cat event.yaml
apiVersion: v1
kind: Event
metadata:
  name: test
message: manually added event for testing
reason: "ClusterIsUpdating"
type: Normal
involvedObject:
  apiVersion: cluster.x-k8s.io/v1alpha2
  kind: Cluster
  name: 7b3kj
  namespace: default
```

<img width="744" alt="Screenshot 2020-09-25 at 10 44 13" src="https://user-images.githubusercontent.com/552769/94246545-2bf70e80-ff1c-11ea-9e0c-93438ccfd063.png">



### Grafana Annotations

We can also use the Event-Exporter to create annotations in grafana dashboards.
In order to do that, first we define a matcher for the events we are interested in.
For example, a team wants to see event-annotations for the custom resources they own:
```
- match:
  - kind: "$KIND_1|$KIND_2|$KIND_3"
    receiver: "grafana-$TEAM"
```

Then we can define the receiver. 
The bottom example will send annotations to our grafana instance in `cortex`.
It uses the `graphite` annotation API and the `graphite` event format. (Defined in the `layout` section)
```
      - name: "grafana-$TEAM"
        webhook:
          endpoint: "https://giantswarm.grafana.net/api/annotations/graphite"
          headers:
            Accept: application/json
            Content-Type: application/json
            Authorization: "{{ .Values.Installation.V1.Secret.EventExporterApp.Grafana.Token }}"
          layout:
            what: "{{ "{{" }} .InvolvedObject.Kind {{ "}}" }} - {{ "{{" }} .Reason {{ "}}" }}"
            tags: ["event",
              "$TEAM",
              "{{ "{{" }} .Reason {{ "}}" }}",
              "{{ "{{" }} .Type {{ "}}" }}",
              "{{ "{{" }} .InvolvedObject.Kind {{ "}}" }}",
              "{{ "{{" }} .InvolvedObject.Name {{ "}}" }}",
              "{{ .Values.Installation.V1.Name }}",
              "{{ .Values.Installation.V1.Customer }}",
              "{{ .Values.Installation.V1.Provider.Kind }}",
              {{- if .Values.Installation.V1.Infra.TestingEnvironment }}
              "testing",
              {{- else }}
              "stable",
              {{- end }}
              "{{ "{{" }} .Source.Component {{ "}}" }}"]
            data: "{{ "{{" }} .Message {{ "}}" }} for {{ "{{" }} .InvolvedObject.Kind {{ "}}" }} {{ "{{" }} .InvolvedObject.Namespace {{ "}}" }}/{{ "{{" }} .InvolvedObject.Name {{ "}}" }} on {{ .Values.Installation.V1.Name }} reported by {{ "{{" }} .Source.Component {{ "}}" }}"
```
This template can be used to post any event as annotation to grafana.
Simply change $TEAM to an appropriate tag (e.g your teams or dashboards name).
In case you want to post to a different grafana instance,
you can modify the `endpoint` and `Authorization` attributes.

To display the events, open the settings for the grafana dashboard you want to post to.
Under _Annotations_, enable _Annotations & Alerts (Build-in)_.
Select _Filter by Tags_ and add your tag (`$TEAM` in the example).
Your events should appear as vertical lines in your graphs. Hover to display the information.



### RBAC Rules

Note that you have to configure the appropriate RBAC Rules so that the event exporter is able to consume events and read its associated runtime objects. In case the event exporter is not happy it will tell you so in its logs. 
