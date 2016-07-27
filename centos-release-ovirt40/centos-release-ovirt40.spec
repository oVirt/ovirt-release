Summary: oVirt 4.0 packages from the CentOS Virtualization SIG repository
Name: centos-release-ovirt40
Version: 1.0
Release: 1%{?dist}
License: GPLv2
URL: http://wiki.centos.org/SpecialInterestGroup/Virtualization
Source0: CentOS-oVirt-4.0.repo
Source1: COPYING

BuildArch: noarch

Requires: centos-release-virt-common
Requires: centos-release-qemu-ev
Requires: centos-release-gluster37


%description
yum configuration and basic docs for oVirt 4.0 packages as delivered via the
CentOS Virtualization SIG.

%prep
cp %{SOURCE1} .

%install
install -D -m 644 %{SOURCE0} %{buildroot}%{_sysconfdir}/yum.repos.d/CentOS-oVirt-4.0.repo

%files
%config(noreplace) %{_sysconfdir}/yum.repos.d/CentOS-oVirt-4.0.repo
%license COPYING

%changelog
* Wed Jul 27 2016 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-1
- Initial version based on 3.6 package
