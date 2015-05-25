  
Summary: KVM common packages from the CentOS Virtualization SIG repository
Name: centos-release-kvm
Version: 1.0
Release: 1%{?dist}
License: GPLv2
URL: http://wiki.centos.org/SpecialInterestGroup/Virtualization
Source0: CentOS-KVM.repo
Source1: COPYING

BuildArch: noarch

Requires: centos-release-virt-common

%description
yum configuration and basic docs for KVM common packages as delivered via the 
CentOS Virtualization SIG.

%prep
cp %{SOURCE1} .

%install
install -D -m 644 %{SOURCE0} %{buildroot}%{_sysconfdir}/yum.repos.d/CentOS-KVM-common.repo


%files
%defattr(-,root,root)
%config(noreplace) %{_sysconfdir}/yum.repos.d/CentOS-KVM-common.repo
%license COPYING

%changelog
* Fri Sep  4 2015 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-1
- Initial version based on centos-release-openstack
