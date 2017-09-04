Summary: oVirt 4.2 packages from the CentOS Virtualization SIG repository
Name: centos-release-ovirt42
Version: 1.0
Release: 1%{?dist}
License: GPLv2
URL: http://wiki.centos.org/SpecialInterestGroup/Virtualization
Source0: CentOS-oVirt-4.2.repo
Source1: COPYING

BuildArch: noarch

Requires: centos-release-virt-common
Requires: centos-release-qemu-ev
Requires: centos-release-gluster
Requires: centos-release-opstools


%description
yum configuration and basic docs for oVirt 4.2 packages as delivered via the
CentOS Virtualization SIG.

%prep
cp %{SOURCE1} .

%build
# nothing to build

%install
install -D -m 644 %{SOURCE0} %{buildroot}%{_sysconfdir}/yum.repos.d/CentOS-oVirt-4.2.repo

%files
%config(noreplace) %{_sysconfdir}/yum.repos.d/CentOS-oVirt-4.2.repo
%license COPYING

%changelog
* Mon Sep  4 2017 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-1
- Initial packaging
