# oVirt Release
[![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-master/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-master/) [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-host-node/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-host-node/)

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
| [cockpit-ovirt](https://github.com/oVirt/cockpit-ovirt) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/cockpit-ovirt/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/cockpit-ovirt/) |
| [engine-db-query](https://github.com/oVirt/engine-db-query) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/engine-db-query/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/engine-db-query/) |
| [imgbased](https://github.com/oVirt/imgbased) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/imgbased/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/imgbased/) |
| [ioprocess](https://github.com/oVirt/ioprocess) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ioprocess/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ioprocess/) |
| [java-client-kubevirt](https://github.com/oVirt/java-client-kubevirt) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/java-client-kubevirt/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/java-client-kubevirt/) |
| [java-ovirt-engine-sdk4](https://github.com/oVirt/ovirt-engine-sdk-java) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/java-ovirt-engine-sdk4/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/java-ovirt-engine-sdk4/) |
| [mom](https://github.com/oVirt/mom) |  [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/mom/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/mom/) |
| [otopi](https://github.com/oVirt/otopi) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/otopi/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/otopi/) |
| [ovirt-ansible-collection](https://github.com/oVirt/ovirt-ansible-collection) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-ansible-collection/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-ansible-collection/) |
| [ovirt-cockpit-sso](https://github.com/oVirt/ovirt-cockpit-sso) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-cockpit-sso/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-cockpit-sso/) |
| [ovirt-dependencies](https://github.com/oVirt/ovirt-dependencies) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-dependencies/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-dependencies/)  |
| [ovirt-dwh](https://github.com/ovirt/ovirt-dwh) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-dwh/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-dwh/)  |
| [ovirt-engine](https://github.com/oVirt/ovirt-engine) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine/) |
| [ovirt-engine-appliance](https://github.com/oVirt/ovirt-appliance) | [![Build](https://github.com/oVirt/ovirt-appliance/actions/workflows/build.yml/badge.svg)](https://github.com/oVirt/ovirt-appliance/actions/workflows/build.yml) |
| [ovirt-engine-extension-aaa-jdbc](https://github.com/oVirt/ovirt-engine-extension-aaa-jdbc) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extension-aaa-jdbc/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extension-aaa-jdbc/)  |
| [ovirt-engine-extension-aaa-ldap](https://github.com/oVirt/ovirt-engine-extension-aaa-ldap) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extension-aaa-ldap/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extension-aaa-ldap/)  |
| [ovirt-engine-extension-aaa-misc](https://github.com/oVirt/ovirt-engine-extension-aaa-misc) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extension-aaa-misc/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extension-aaa-misc/)  |
| [ovirt-engine-extensions-api](https://github.com/oVirt/ovirt-engine-extensions-api) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extensions-api/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-extensions-api/) |
| [ovirt-engine-keycloak](https://github.com/oVirt/ovirt-engine-keycloak) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-keycloak/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-keycloak/) |
| [ovirt-engine-metrics](https://github.com/oVirt/ovirt-engine-metrics/) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-metrics/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-metrics/)  |
| [ovirt-engine-nodejs-modules](https://github.com/oVirt/ovirt-engine-nodejs-modules) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-nodejs-modules/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-nodejs-modules/) |
| [ovirt-engine-ui-extensions](https://github.com/oVirt/ovirt-engine-ui-extensions) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-ui-extensions/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-ui-extensions/) |
| [ovirt-engine-wildfly](https://github.com/oVirt/ovirt-engine-wildfly) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-wildfly/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-wildfly/) |
| [ovirt-engine-wildfly-overlay](https://github.com/oVirt/ovirt-engine-wildfly) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-wildfly-overlay/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-engine-wildfly-overlay/) |
| [ovirt-host](https://github.com/oVirt/ovirt-host) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-host/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-host/) |
| [ovirt-hosted-engine-ha](https://github.com/oVirt/ovirt-hosted-engine-ha) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-hosted-engine-ha/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-hosted-engine-ha/) |
| [ovirt-hosted-engine-setup](https://github.com/oVirt/ovirt-hosted-engine-setup) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-hosted-engine-setup/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-hosted-engine-setup/) |
| [ovirt-imageio](https://github.com/oVirt/ovirt-imageio) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-imageio/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-imageio/) |
| [ovirt-jboss-modules-maven-plugin](https://github.com/oVirt/ovirt-jboss-modules-maven-plugin) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-jboss-modules-maven-plugin/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-jboss-modules-maven-plugin/)  |
| [ovirt-lldp-labeler](https://github.com/oVirt/ovirt-lldp-labeler) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-lldp-labeler/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-lldp-labeler/) |
| [ovirt-log-collector](https://github.com/oVirt/ovirt-log-collector) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-log-collector/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-log-collector/) |
| [ovirt-node-ng](https://github.com/oVirt/ovirt-node-ng) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-node-ng/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-node-ng/) |
| [ovirt-node-ng-image](https://github.com/oVirt/ovirt-node-ng-image) | [![Build](https://github.com/oVirt/ovirt-node-ng-image/actions/workflows/build.yml/badge.svg)](https://github.com/oVirt/ovirt-node-ng-image/actions/workflows/build.yml) |
| [ovirt-openvswitch](https://github.com/oVirt/ovirt-openvswitch) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-openvswitch/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-openvswitch/) |
| [ovirt-provider-ovn](https://github.com/oVirt/ovirt-provider-ovn) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-provider-ovn/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-provider-ovn/) |
| [ovirt-release-master](https://github.com/oVirt/ovirt-release) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-master/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-master/) |
| [ovirt-release-host-node](https://github.com/oVirt/ovirt-release) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-host-node/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-release-host-node/) |
| [ovirt-setup-lib](https://github.com/oVirt/ovirt-setup-lib) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-setup-lib/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-setup-lib/) |
| [ovirt-vmconsole](https://github.com/oVirt/ovirt-vmconsole) |  [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-vmconsole/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-vmconsole/) |
| [ovirt-web-ui](https://github.com/oVirt/ovirt-web-ui) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-web-ui/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/ovirt-web-ui/) |
| [python-ovirt-engine-sdk4](https://github.com/oVirt/python-ovirt-engine-sdk4) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/python-ovirt-engine-sdk4/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/python-ovirt-engine-sdk4/) |
| [rubygem-ovirt-engine-sdk4](https://github.com/oVirt/ovirt-engine-sdk-ruby) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/rubygem-ovirt-engine-sdk4/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/rubygem-ovirt-engine-sdk4/) |
| [safelease](https://github.com/oVirt/safelease) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/safelease/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/safelease/) |
| [vdsm](https://github.com/oVirt/vdsm) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/vdsm/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/vdsm/) |
| [vdsm-jsonrpc-java](https://github.com/oVirt/vdsm-jsonrpc-java) | [![Copr build status](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/vdsm-jsonrpc-java/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/ovirt/ovirt-master-snapshot/package/vdsm-jsonrpc-java/) |


## How to contribute

All contributions are welcome - patches, bug reports, and documentation issues.

### Submitting patches

Please submit patches to [GitHub:ovirt-release](https://github.com/oVirt/ovirt-release). If you are not familiar with the process, you can read about [collaborating with pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests) on the GitHub website.

### Review patches / issues

You can review open patches for oVirt organization:

* [Untargeted PRs (no milestone set)](https://github.com/pulls?q=is%3Aopen+is%3Apr+user%3Aovirt+archived%3Afalse+no%3Amilestone)
* [oVirt 4.5.0 PRs](https://github.com/pulls?q=is%3Aopen+is%3Apr+user%3Aovirt+archived%3Afalse+milestone%3Aovirt-4.5.0)
* [oVirt 4.5.1 PRs](https://github.com/pulls?q=is%3Aopen+is%3Apr+user%3Aovirt+archived%3Afalse+milestone%3Aovirt-4.5.1)

you can review/triage open issues for oVirt organization:

* [Untargeted issues(no milestone set)](https://github.com/issues?q=is%3Aopen+is%3Aissue+user%3Aovirt+archived%3Afalse+no%3Amilestone)
* [oVirt 4.5.0 issues](https://github.com/issues?q=is%3Aopen+is%3Aissue+user%3Aovirt+archived%3Afalse+milestone%3Aovirt-4.5.0)
* [oVirt 4.5.1 issues](https://github.com/issues?q=is%3Aopen+is%3Aissue+user%3Aovirt+archived%3Afalse+milestone%3Aovirt-4.5.1)


### Found a bug or documentation issue?

To submit a bug or suggest an enhancement for oVirt Release please use [oVirt Bugzilla for ovirt-release product](https://bugzilla.redhat.com/enter_bug.cgi?product=ovirt-release).

If you don't have a Bugzilla account, you can still report [issues](https://github.com/oVirt/ovirt-release/issues). If you find a documentation issue on the oVirt website, please navigate to the page footer and click "Report an issue on GitHub".

## Still need help?

If you have any other questions or suggestions, you can join and contact us on the [oVirt Users forum / mailing list](https://lists.ovirt.org/admin/lists/users.ovirt.org/).
