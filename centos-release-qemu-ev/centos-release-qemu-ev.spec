Summary: QEMU Enterprise Virtualization packages from the CentOS Virtualization SIG repository
Name: centos-release-qemu-ev
Version: 1.0
Release: 3%{?dist}
License: GPLv2
URL: http://wiki.centos.org/SpecialInterestGroup/Virtualization
Source0: CentOS-QEMU-EV.repo
Source1: COPYING

BuildArch: noarch

Requires: centos-release-virt-common
Requires: centos-release

%description
yum configuration and basic docs for QEMU Enterprise Virtualization packages as delivered via the
CentOS Virtualization SIG.

%prep
cp %{SOURCE1} .

%install
install -D -m 644 %{SOURCE0} %{buildroot}%{_sysconfdir}/yum.repos.d/CentOS-QEMU-EV.repo


%files
%defattr(-,root,root)
%config(noreplace) %{_sysconfdir}/yum.repos.d/CentOS-QEMU-EV.repo
%license COPYING

%changelog
* Wed Feb 28 2018 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-3
- add altarch support

* Thu Dec 01 2016 Alan Pevec <apevec AT redhat.com> - 1.0-2
- centos-qemu-ev-test repo is unsigned

* Tue Oct  6 2015 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-1
- Initial version based on centos-release-openstack
