# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [3.6.0] - 2026-01-28

### Changed

- Use inline code formatting for cluster/namespace and management cluster names in Slack messages.

## [3.5.0] - 2026-01-21

### Changed

- Updated to handle new upgrade event types from cluster-api-events:
  - `UpgradingWithNodeRoll`: Shows "This upgrade will replace nodes."
  - `UpgradingWithoutNodeRoll`: Shows "This upgrade will not replace nodes."
- Updated Cluster API version from v1beta1 to v1beta2.

## [3.4.0] - 2025-11-20

### Changed

- Chart: Update kubernetes-event-exporter version to 2.2.0.
- Chart: Enable caching for Slack threads.
- Chart: Add RBAC permissions for configmaps.

## [3.3.1] - 2025-09-17

### Changed

- Config: Fix formatting of control plane upgrade message.

## [3.3.0] - 2025-07-25

### Added

- Add environment variables support.

## [3.2.0] - 2025-07-19

### Added

- Intermediate upgrade progress event `UpgradedControlPlane` when control plane upgrade completes during cluster upgrades.

## [3.1.0] - 2025-07-18

### Changed

- Improve Slack upgrade notifications to include release version information (from/to versions).

## [3.0.0] - 2025-07-17

### Changed

- Switching upstream image to `github.com/giantswarm/kubernetes-event-exporter`.
- Refactor Helm values for `watchReasons`.
- Refactor Helm values for image `registry`.
- Fix `podSecurityContext` in `values.yaml` and `values.schema.json`.
- Add descriptions to all properties in `values.schema.json`.
- Escape Go templates in `configmap.yaml` for the Slack receiver.
- Deprecate `slack.webhook` in favor of `slack.token` and `slack.channel`.

## [2.2.0] - 2025-05-07

### Changed

- Include source.component from the CAPI events (cluster-api-events-controller).

## [2.1.0] - 2025-04-24

### Changed

- Set apiversion `cluster.x-k8s.io/v1beta1` to matching rules.

## [2.0.0] - 2024-12-06

### Changed

- Switching upstream image to new supported fork: github.com/resmoio/kubernetes-event-exporter

## [1.0.0] - 2024-11-26

### Changed

- Chart: More love! ([#164](https://github.com/giantswarm/event-exporter-app/pull/164))
  - Chart: Rework `Chart.yaml`.
  - Chart: Rework `values.yaml`.
  - Helpers: Rework `_helpers.tpl`.
  - Templates: Rework `ConfigMap`.
  - Templates: Rework `Deployment`.
  - Templates: Rework `NetworkPolicy`.
  - Templates: Rework RBAC.
  - Templates: Rework `ServiceAccount`.
  - Templates: Rework `VerticalPodAutoscaler`.
- CircleCI: Depend `push-to-app-collection` on `push-to-control-plane-catalog`. ([#165](https://github.com/giantswarm/event-exporter-app/pull/165))
- Chart: Update image to v0.11. ([#166](https://github.com/giantswarm/event-exporter-app/pull/166))

### Removed

- Chart: More love! ([#164](https://github.com/giantswarm/event-exporter-app/pull/164))
  - Helpers: Remove `_resource.tpl`.
  - Templates: Remove `PodSecurityPolicy`.
  - Templates: Remove `PolicyException`.

## [0.14.0] - 2024-11-22

### Added

- Repository: Some love. ❤️ ([#162](https://github.com/giantswarm/event-exporter-app/pull/162))
  - ABS: Add `main.yaml`.
  - ATS: Add `main.yaml` & tests.
  - Renovate: Add `renovate.json5`.

### Changed

- Repository: Some love. ❤️ ([#162](https://github.com/giantswarm/event-exporter-app/pull/162))
  - CircleCI: Rework `config.yml`.
  - Docs: Rework `README.md`.
  - ABS: Satisfy linter.
  - ATS: Fix tests.

### Removed

- Repository: Some love. ❤️ ([#162](https://github.com/giantswarm/event-exporter-app/pull/162))
  - Nancy: Remove `.nancy-ignore*`.

## [0.13.1] - 2024-08-14

### Fixed

- Fix PSP and Kyverno.

## [0.13.0] - 2024-08-14

### Added

- Events for upgrading CAPI clusters.

## [0.12.0] - 2024-03-27

### Added

- Add global.podSecurityStandards.enforced value for PSS migration.

### Fixed

- Allow access to `batch/jobs` in the ClusterRole.

## [0.11.1] - 2023-12-11

### Changed

- Configure `gsoci.azurecr.io` as the default container image registry.

## [0.11.0] - 2023-07-13

### Added

- Configured the use of the runtime/default seccomp profile. (Adding PSP, changing RBAC)
- Added required values for pss policies.

## [0.10.1] - 2022-09-14

### Changed

- Add Kind Object into event for EC2 instance refresh.

## [0.10.0] - 2022-09-14

### Added

- Events for EC2 instance refresh.

## [0.9.0] - 2022-03-21

### Added

- Add VerticalPodAutoscaler CR.

## [0.8.0] - 2021-10-07

### Added

- Add app to Azure app collection.

## [0.7.2] - 2021-09-29

### Fixed

- Typo in configmap yaml

## [0.7.1] - 2021-09-29

### Fixed

- Changed upgrade message wording to specifically call out rolling nodes

## [0.7.0] - 2021-09-29

### Added

- Trigger the pod to recreate on configmap change

## [0.6.0] - 2021-09-28

### Added

- Cluster upgrade complete announcement event.

## [0.5.1] - 2021-09-10

### Fixed

- Fix message field for cluster upgrade announcement event.

## [0.5.0] - 2021-09-10

### Added

- Cluster upgrade announcement event.

## [0.4.6] - 2021-09-09

### Fixed

- Drop APIVersion for cluster update detection.

## [0.4.5] - 2021-09-09

### Fixed

- Revert release version from text.
- Revert image version.

## [0.4.4] - 2021-09-08

### Fixed

- Selector labels for networkpolicy.

## [0.4.3] - 2021-09-08

### Fixed

- Selector labels for networkpolicy.

## [0.4.2] - 2021-09-08

### Fixed

- Selector labels for networkpolicy.

## [0.4.1] - 2021-09-08

### Fixed

- Add networkpolicy.

## [0.4.0] - 2021-09-08

### Changed

- Update to the latest release.
- Reconcile `v1alpha3` Cluster CR's.

## [0.3.2] - 2021-08-05

### Fixed

- Fix configmap format.

## [0.3.1] - 2021-08-05

### Changed

- Fix rbac issue.

## [0.3.0] - 2021-08-05

### Changed

- Prepare helm values to configuration management.
- Update architect-orb to v3.0.0.

## [0.2.0] - 2020-10-14

### Added

- Added a webhook to send events related to cluster-resources as annotations to grafana

## [0.1.1] - 2020-09-28

## [0.1.0] - 2020-09-23

[Unreleased]: https://github.com/giantswarm/event-exporter-app/compare/v3.6.0...HEAD
[3.6.0]: https://github.com/giantswarm/event-exporter-app/compare/v3.5.0...v3.6.0
[3.5.0]: https://github.com/giantswarm/event-exporter-app/compare/v3.4.0...v3.5.0
[3.4.0]: https://github.com/giantswarm/event-exporter-app/compare/v3.3.1...v3.4.0
[3.3.1]: https://github.com/giantswarm/event-exporter-app/compare/v3.3.0...v3.3.1
[3.3.0]: https://github.com/giantswarm/event-exporter-app/compare/v3.2.0...v3.3.0
[3.2.0]: https://github.com/giantswarm/event-exporter-app/compare/v3.1.0...v3.2.0
[3.1.0]: https://github.com/giantswarm/event-exporter-app/compare/v3.0.0...v3.1.0
[3.0.0]: https://github.com/giantswarm/event-exporter-app/compare/v2.2.0...v3.0.0
[2.2.0]: https://github.com/giantswarm/event-exporter-app/compare/v2.1.0...v2.2.0
[2.1.0]: https://github.com/giantswarm/event-exporter-app/compare/v2.0.0...v2.1.0
[2.0.0]: https://github.com/giantswarm/event-exporter-app/compare/v1.0.0...v2.0.0
[1.0.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.14.0...v1.0.0
[0.14.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.13.1...v0.14.0
[0.13.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.13.0...v0.13.1
[0.13.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.12.0...v0.13.0
[0.12.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.11.1...v0.12.0
[0.11.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.11.0...v0.11.1
[0.11.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.10.1...v0.11.0
[0.10.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.10.0...v0.10.1
[0.10.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.9.0...v0.10.0
[0.9.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.8.0...v0.9.0
[0.8.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.7.2...v0.8.0
[0.7.2]: https://github.com/giantswarm/event-exporter-app/compare/v0.7.1...v0.7.2
[0.7.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.7.0...v0.7.1
[0.7.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.6.0...v0.7.0
[0.6.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.5.1...v0.6.0
[0.5.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.5.0...v0.5.1
[0.5.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.6...v0.5.0
[0.4.6]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.5...v0.4.6
[0.4.5]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.4...v0.4.5
[0.4.4]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.3...v0.4.4
[0.4.3]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.2...v0.4.3
[0.4.2]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.3.2...v0.4.0
[0.3.2]: https://github.com/giantswarm/event-exporter-app/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/event-exporter-app/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/event-exporter-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/event-exporter-app/releases/tag/v0.1.0
