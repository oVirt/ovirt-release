Summary: oVirt 4.2 packages from the CentOS Virtualization SIG repository
Name: centos-release-ovirt42
Version: 1.0
Release: 3%{?dist}
License: GPLv2
URL: http://wiki.centos.org/SpecialInterestGroup/Virtualization
Source0: CentOS-oVirt-4.2.repo
Source1: COPYING

BuildArch: noarch

Requires: centos-release-virt-common
Requires: centos-release-qemu-ev
Requires: centos-release-gluster
Requires: centos-release-opstools
Requires: centos-release


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
* Fri Feb 01 2019 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-3
- Using mirrorlist in centos-release-* packages
  See https://lists.centos.org/pipermail/centos-devel/2018-December/017152.html

* Wed Feb 28 2018 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-2
- Added altarch support

* Mon Sep  4 2017 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-1
- Initial packaging
