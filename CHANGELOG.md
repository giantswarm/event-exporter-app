# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Chart: More love! ([#164](https://github.com/giantswarm/event-exporter-app/pull/164))
  - Chart: Rework `Chart.yaml`.

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

[Unreleased]: https://github.com/giantswarm/event-exporter-app/compare/v0.14.0...HEAD
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
