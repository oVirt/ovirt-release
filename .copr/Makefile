srpm:
	dnf -y install git autoconf automake make
	$(eval SUFFIX=$(shell sh -c " echo '.$$(date -u +%Y%m%d%H%M%S).git$$(git rev-parse --short HEAD)'"))
	mkdir -p tmp.repos/SOURCES
	autoreconf -ivf
	./configure
	make dist
	rpmbuild \
		-D "_topdir tmp.repos" \
		-D "release_suffix ${SUFFIX}" \
		-ts ovirt-release*.tar.gz
	cp tmp.repos/SRPMS/*.src.rpm $(outdir)
