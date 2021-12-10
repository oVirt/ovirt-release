# oVirt Release
[![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release/)

Welcome to the oVirt Release source repository. This repository is hosted on [GitHub:ovirt-release](https://github.com/oVirt/ovirt-release).

## Project sanity

Reporting here the real time status of the project development branch sanity:

### Overall repository closure

[![Check repository closure](https://github.com/oVirt/ovirt-release/actions/workflows/repoclosure.yml/badge.svg)](https://github.com/oVirt/ovirt-release/actions/workflows/repoclosure.yml)

### COPR Build status:

> Note: in the following table only the packages that are fully migrated to GitHub for development have been linked.
>
> Read [Migrating a project from Gerrit to GitHub](https://ovirt.org/develop/developer-guide/migrating_to_github.html).


| Package | Build status |
|---------|--------------|
| cockpit-ovirt |  |
| [engine-db-query](https://github.com/oVirt/engine-db-query) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/engine-db-query/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/engine-db-query/) |
| imgbased |  |
| ioprocess |  |
| java-client-kubevirt |  |
| java-ovirt-engine-sdk4 |  |
| mom |  |
| otopi |  |
| [ovirt-ansible-collection](https://github.com/oVirt/ovirt-ansible-collection) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-ansible-collection/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-ansible-collection/) |
| [ovirt-cockpit-sso](https://github.com/oVirt/ovirt-cockpit-sso) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-cockpit-sso/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-cockpit-sso/) |
| ovirt-dependencies |  |
| ovirt-engine |  |
| ovirt-engine-appliance |  |
| ovirt-engine-dwh |  |
| ovirt-engine-extension-aaa-jdbc |  |
| ovirt-engine-extension-aaa-ldap |  |
| ovirt-engine-extension-aaa-misc |  |
| ovirt-engine-extension-logger-log4j |  |
| ovirt-engine-extensions-api |  |
| ovirt-engine-keycloak |  |
| ovirt-engine-metrics |  |
| ovirt-engine-nodejs-modules |  |
| ovirt-engine-ui-extensions |  |
| ovirt-engine-wildfly |  |
| ovirt-engine-wildfly-overlay |  |
| ovirt-host |  |
| ovirt-hosted-engine-ha |  |
| ovirt-hosted-engine-setup |  |
| ovirt-imageio |  |
| ovirt-jboss-modules-maven-plugin |  |
| ovirt-lldp-labeler |  |
| [ovirt-log-collector](https://github.com/oVirt/ovirt-log-collector) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-log-collector/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-log-collector/)
 |
| ovirt-node-ng |  |
| [ovirt-openvswitch](https://github.com/oVirt/ovirt-openvswitch) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-openvswitch/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-openvswitch/) |
| [ovirt-provider-ovn](https://github.com/oVirt/ovirt-provider-ovn) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-provider-ovn/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-provider-ovn/) |
| [ovirt-release](https://github.com/oVirt/ovirt-release) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release/) |
| ovirt-setup-lib |  |
| ovirt-vmconsole |  |
| [ovirt-web-ui](https://github.com/oVirt/ovirt-web-ui) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-web-ui/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-web-ui/) |
| [python-ovirt-engine-sdk4](https://github.com/oVirt/python-ovirt-engine-sdk4) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/python-ovirt-engine-sdk4/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/python-ovirt-engine-sdk4/) |
| rubygem-ovirt-engine-sdk4 |  |
| [safelease](https://github.com/oVirt/safelease) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/safelease/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/safelease/) |
| vdsm |  |
| vdsm-jsonrpc-java |  |


## How to contribute

All contributions are welcome - patches, bug reports, and documentation issues.

### Submitting patches

Please submit patches to [GitHub:ovirt-release](https://github.com/oVirt/ovirt-release). If you are not familiar with the process, you can read about [collaborating with pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests) on the GitHub website.

### Found a bug or documentation issue?

To submit a bug or suggest an enhancement for oVirt Release please use [oVirt Bugzilla for ovirt-release product](https://bugzilla.redhat.com/enter_bug.cgi?product=ovirt-release).

If you don't have a Bugzilla account, you can still report [issues](https://github.com/oVirt/ovirt-release/issues). If you find a documentation issue on the oVirt website, please navigate to the page footer and click "Report an issue on GitHub".

## Still need help?

If you have any other questions or suggestions, you can join and contact us on the [oVirt Users forum / mailing list](https://lists.ovirt.org/admin/lists/users.ovirt.org/).
