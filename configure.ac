dnl
dnl ovirt-release -- repo files for oVirt projects
dnl Copyright (C) 2014-2015 Red Hat, Inc.
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


define([VERSION_NUMBER], [4.2.0])
define([VERSION_SUFFIX], [_master])

AC_INIT([ovirt-release-master], VERSION_NUMBER[]VERSION_SUFFIX, [infra@ovirt.org])
AM_INIT_AUTOMAKE

PACKAGE_RPM_VERSION="VERSION_NUMBER"
AC_SUBST([PACKAGE_RPM_VERSION])

PACKAGE_RPM_RELEASE="0.5.$(echo VERSION_SUFFIX | sed 's/^_//')"
AC_SUBST([PACKAGE_RPM_RELEASE])

OVIRT_SLOT="master"
AC_SUBST([OVIRT_SLOT])

AC_ARG_WITH([ovirt-yum-repo],[AC_HELP_STRING([--with-ovirt-yum-repo],
            [Specify yum repo. default: "http://resources.ovirt.org"])],
            [OVIRT_YUM_REPO="$withval"],
            [OVIRT_YUM_REPO="http://resources.ovirt.org"])
AC_SUBST([OVIRT_YUM_REPO])

AC_ARG_WITH([repo-url-key],[AC_HELP_STRING([--with-repo-url-key],
            [Specify yum repo. default: "mirrorlist"])],
            [REPO_URL_KEY="$withval"],
            [REPO_URL_KEY="mirrorlist"])
AC_SUBST([REPO_URL_KEY])

AC_ARG_WITH([repo-path-normal],[AC_HELP_STRING([--with-repo-path-normal],
            [Specify path on yum-repo. default: "/pub/yum-repo/mirrorlist-ovirt-${OVIRT_SLOT}-snapshot-"])],
            [REPO_PATH_NORMAL="$withval"],
            [REPO_PATH_NORMAL="/pub/yum-repo/mirrorlist-ovirt-${OVIRT_SLOT}-snapshot-"])
AC_SUBST([REPO_PATH_NORMAL])

AC_ARG_WITH([repo-path-static],[AC_HELP_STRING([--with-repo-path-static],
            [Specify static path on yum-repo. default: "/pub/yum-repo/mirrorlist-ovirt-${OVIRT_SLOT}-snapshot-static-"])],
            [REPO_PATH_STATIC="$withval"],
            [REPO_PATH_STATIC="/pub/yum-repo/mirrorlist-ovirt-${OVIRT_SLOT}-snapshot-static-"])
AC_SUBST([REPO_PATH_STATIC])

AC_ARG_WITH([ovirt-yum-repo],[AC_HELP_STRING([--with-ovirt-yum-repo],
            [Specify yum repo. default: "http://resources.ovirt.org"])],
            [OVIRT_YUM_REPO="$withval"],
            [OVIRT_YUM_REPO="http://resources.ovirt.org"])
AC_SUBST([OVIRT_YUM_REPO])

PACKAGE_NAME=ovirt-release-${OVIRT_SLOT}
PRODUCT_NAME=oVirt\ Packages\ Repository

AC_CONFIG_FILES([
            Makefile
            host-node/Makefile
            ovirt-el7-ppc64le-deps.repo
            ovirt-el7-x86_64-deps.repo
            ovirt-experimental.repo
            ovirt-f25-deps.repo
            ovirt-f26-deps.repo
            ovirt-release-master.spec
            ovirt-snapshot.repo
            ovirt-tested.repo
])
AC_OUTPUT
