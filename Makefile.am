#
# ovirt-release -- repo files for oVirt projects
# Copyright (C) 2012-2019 Red Hat, Inc.
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
#
# SPDX-License-Identifier: LGPL-2.1-or-later

AUTOMAKE_OPTIONS = foreign 1.9

SUBDIRS = \
	host-node \
	$(NULL)

EXTRA_DIST = \
	autogen.sh \
	gpl-2.0.txt \
	lgpl-2.1.txt \
	LICENSE-2.0.txt \
	LICENSE.md \
	node-optional.el8.repo \
	node-optional.el9.repo \
	ovirt-release-master.spec \
	ovirt-release-master.spec.in \
	ovirt-release-host-node.spec.in \
	ovirt-release-host-node.spec \
	README.md \
	$(NULL)

pkgdata_DATA = \
	ovirt-el8-ppc64le-deps.repo \
	ovirt-el8-x86_64-deps.repo \
	ovirt-el8-stream-ppc64le-deps.repo \
	ovirt-el8-stream-x86_64-deps.repo \
	ovirt-el9-stream-aarch64-deps.repo \
	ovirt-el9-stream-ppc64le-deps.repo \
	ovirt-el9-stream-x86_64-deps.repo \
	ovirt-snapshot.repo \
	node-optional.el8.repo \
	node-optional.el9.repo \
	$(NULL)

dist_noinst_DATA = \
	$(srcdir)/ovirt-el8-ppc64le-deps.repo.in \
	$(srcdir)/ovirt-el8-x86_64-deps.repo.in \
	$(srcdir)/ovirt-el8-stream-ppc64le-deps.repo.in \
	$(srcdir)/ovirt-el8-stream-x86_64-deps.repo.in \
	$(srcdir)/ovirt-el9-stream-aarch64-deps.repo.in \
	$(srcdir)/ovirt-el9-stream-ppc64le-deps.repo.in \
	$(srcdir)/ovirt-el9-stream-x86_64-deps.repo.in \
	$(srcdir)/ovirt-snapshot.repo.in \
	$(NULL)

# vim: ts=8
