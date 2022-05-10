.PHONY: installdeps srpm git_config_pre

installdeps:
	dnf -y install git autoconf automake make

git_config_pre:
	# From git 2.35.2 we need to mark temporary directory, where the project is cloned to, as safe, otherwise
	# git commands won't work
	$(eval REPO_DIR=$(shell pwd))
	git config --global --add safe.directory ${REPO_DIR}

srpm: installdeps git_config_pre
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
