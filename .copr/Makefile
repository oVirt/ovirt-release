.PHONY: installdeps srpm

installdeps:
	dnf -y install git autoconf automake make

srpm: installdeps
	$(eval SUFFIX=$(shell sh -c " echo '.$$(date -u +%Y%m%d%H%M%S).git$$(git rev-parse --short HEAD)'"))
	# changing the spec file as passing -D won't preserve the suffix when rebuilding in mock
	mkdir -p tmp.repos/SOURCES
	autoreconf -ivf
	./configure
	make dist
	cp ovirt-release*.tar.gz tmp.repos/SOURCES
	sed "s:%{?release_suffix}:${SUFFIX}:" -i ovirt-release-master.spec ovirt-release-host-node.spec
	rpmbuild \
		-D "_topdir tmp.repos" \
		-bs ovirt-release-master.spec
	rpmbuild \
		-D "_topdir tmp.repos" \
		-bs ovirt-release-host-node.spec

	cp tmp.repos/SRPMS/$(shell sh -c "basename '$(spec)'|cut -f1 -d.")*.src.rpm $(outdir)
