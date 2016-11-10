#
# ovirt-release -- repo files for oVirt projects
# Copyright (C) 2012-2016 Red Hat, Inc.
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

AUTOMAKE_OPTIONS = foreign 1.9

SUBDIRS = \
	host-node \
	$(NULL)

EXTRA_DIST = \
	autogen.sh \
	ovirt-release-master.spec \
	ovirt-release-master.spec.in \
	$(NULL)

pkgdata_DATA = \
	ovirt-el7-deps.repo \
	ovirt-experimental.repo \
	ovirt-f24-deps.repo \
	ovirt-snapshot.repo \
	$(NULL)

dist_noinst_DATA = \
	$(srcdir)/ovirt-el7-deps.repo.in \
	$(srcdir)/ovirt-experimental.repo.in \
	$(srcdir)/ovirt-f24-deps.repo.in \
	$(srcdir)/ovirt-snapshot.repo.in \
	$(NULL)

# vim: ts=2
