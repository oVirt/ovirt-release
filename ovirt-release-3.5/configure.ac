dnl
dnl ovirt-release -- repo files for oVirt projects
dnl Copyright (C) 2012-2014 Red Hat, Inc.
dnl
dnl This library is free software; you can redistribute it and/or
dnl modify it under the terms of the GNU Lesser General Public
dnl License as published by the Free Software Foundation; either
dnl version 2.1 of the License, or (at your option) any later version.
dnl
dnl This library is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
dnl Lesser General Public License for more details.
dnl
dnl You should have received a copy of the GNU Lesser General Public
dnl License along with this library; if not, write to the Free Software
dnl Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
dnl


define([VERSION_NUMBER], [004])
define([VERSION_SUFFIX], [])
define([OVIRT_VERSION_MAJOR], [3])
define([OVIRT_VERSION_MINOR], [5])

AC_INIT([ovirt-release][]OVIRT_VERSION_MAJOR[]OVIRT_VERSION_MINOR, VERSION_NUMBER[]VERSION_SUFFIX, [infra@ovirt.org])

PACKAGE_RPM_VERSION="VERSION_NUMBER"
PACKAGE_RPM_RELEASE="1"
OVIRT_SLOT="OVIRT_VERSION_MAJOR.OVIRT_VERSION_MINOR"
AC_SUBST([PACKAGE_RPM_VERSION])
AC_SUBST([PACKAGE_RPM_RELEASE])
AC_SUBST([OVIRT_SLOT])

AC_CONFIG_AUX_DIR([.])
AM_INIT_AUTOMAKE

AC_CONFIG_FILES([
	Makefile
	ovirt-el6-deps.repo
    ovirt-el7-deps.repo
	ovirt-f19-deps.repo
	ovirt-f20-deps.repo
    ovirt-f21-deps.repo
	ovirt-release35.spec
	ovirt.repo
	ovirt-snapshot.repo
])
AC_OUTPUT
