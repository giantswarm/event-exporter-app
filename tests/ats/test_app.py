from pytest import mark
from pytest_helm_charts.clusters import Cluster
from pytest_helm_charts.giantswarm_app_platform.app import wait_for_apps_to_run
from pytest_helm_charts.k8s.deployment import wait_for_deployments_to_run

@mark.smoke
@mark.functional
@mark.upgrade
def test_event_exporter(kube_cluster: Cluster) -> None:
    assert kube_cluster.kube_client is not None

    # Wait for event-exporter app to run.
    wait_for_apps_to_run(kube_cluster.kube_client, [ "event-exporter-app" ], "giantswarm", 60)

    # Wait for event-exporter deployment to run.
    wait_for_deployments_to_run(kube_cluster.kube_client, [ "event-exporter" ], "giantswarm", 60)
