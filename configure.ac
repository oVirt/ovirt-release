dnl
dnl ovirt-release -- repo files for oVirt projects
dnl Copyright (C) 2014-2023 Red Hat, Inc.
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
dnl SPDX-License-Identifier: LGPL-2.1-or-later


define([VERSION_NUMBER], [4.5.6])
define([VERSION_SUFFIX], [_master])

AC_INIT([ovirt-release-master], VERSION_NUMBER[]VERSION_SUFFIX, [devel@ovirt.org])
AM_INIT_AUTOMAKE

PACKAGE_RPM_VERSION="VERSION_NUMBER"
AC_SUBST([PACKAGE_RPM_VERSION])

PACKAGE_SHORT_VERSION="$(echo VERSION_NUMBER | cut -d '.' -f 1,2,3)"
AC_SUBST([PACKAGE_SHORT_VERSION])

PACKAGE_RPM_RELEASE="0.0.$(echo VERSION_SUFFIX | sed 's/^_//')"
AC_SUBST([PACKAGE_RPM_RELEASE])

OVIRT_SLOT="master"
AC_SUBST([OVIRT_SLOT])

PACKAGE_NAME=ovirt-release-${OVIRT_SLOT}
PRODUCT_NAME=oVirt\ Packages\ Repository

AC_CONFIG_FILES([
            Makefile
            host-node/Makefile
            ovirt-el8-ppc64le-deps.repo
            ovirt-el8-x86_64-deps.repo
            ovirt-el8-stream-ppc64le-deps.repo
            ovirt-el8-stream-x86_64-deps.repo
            ovirt-el9-stream-aarch64-deps.repo
            ovirt-el9-stream-ppc64le-deps.repo
            ovirt-el9-stream-x86_64-deps.repo
            ovirt-el10-stream-aarch64-deps.repo
            ovirt-el10-stream-ppc64le-deps.repo
            ovirt-el10-stream-s390x-deps.repo
            ovirt-el10-stream-x86_64-deps.repo
            ovirt-release-master.spec
            ovirt-release-host-node.spec
            ovirt-snapshot.repo
])
AC_OUTPUT
