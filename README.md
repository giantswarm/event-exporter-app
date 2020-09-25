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



### RBAC Rules

Note that you have to configure the appropriate RBAC Rules so that the event exporter is able to consume events and read its associated runtime objects. In case the event exporter is not happy it will tell you so in its logs. 
