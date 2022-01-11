.PHONY: installdeps srpm

installdeps:
	dnf -y install git autoconf automake make

srpm: installdeps
	mkdir -p tmp.repos
	autoreconf -ivf
	./configure
	make dist
	rpmbuild \
		-D "_topdir tmp.repos" \
		-ts ovirt-release*.tar.gz
	cp tmp.repos/SRPMS/*.src.rpm $(outdir)
