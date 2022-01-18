.PHONY: installdeps srpm

installdeps:
	dnf -y install git autoconf automake make

srpm: installdeps
	$(eval SUFFIX=$(shell sh -c " echo '.$$(date -u +%Y%m%d%H%M%S).git$$(git rev-parse --short HEAD)'"))
	# changing the spec file as passing -D won't preserve the suffix when rebuilding in mock
	sed "s:%{?release_suffix}:${SUFFIX}:" -i ovirt-release44.spec.in
	mkdir -p tmp.repos
	autoreconf -ivf
	./configure
	make dist
	rpmbuild \
		-D "_topdir tmp.repos" \
		-ts ovirt-release*.tar.gz
	cp tmp.repos/SRPMS/*.src.rpm $(outdir)
