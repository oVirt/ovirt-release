Summary: Advanced Virtualization packages from the CentOS Virtualization SIG repository
Name: centos-release-advanced-virtualization
Version: 1.0
Release: 1%{?dist}
License: GPLv2
URL: http://wiki.centos.org/SpecialInterestGroup/Virtualization
Source0: CentOS-Advanced-Virtualization.repo
Source1: COPYING

BuildArch: noarch

Requires: centos-release-virt-common
Requires: centos-release

%description
yum configuration and basic docs for Advanced Virtualization packages as delivered via the
CentOS Virtualization SIG.

%prep
cp %{SOURCE1} .

%install
install -D -m 644 %{SOURCE0} %{buildroot}%{_sysconfdir}/yum.repos.d/CentOS-Advanced-Virtualization.repo


%files
%defattr(-,root,root)
%config(noreplace) %{_sysconfdir}/yum.repos.d/CentOS-Advanced-Virtualization.repo
%license COPYING

%changelog
* Thu Jun 04 2020 Sandro Bonazzola <sbonazzo@redhat.com> - 1.0-1
- Initial packaging
