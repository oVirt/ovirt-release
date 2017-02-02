#!/bin/bash -xe
[[ -d exported-artifacts ]] \
|| mkdir -p exported-artifacts

[[ -d tmp.repos ]] \
|| mkdir -p tmp.repos

SUFFIX=".$(date -u +%Y%m%d%H%M%S).git$(git rev-parse --short HEAD)"

autoreconf -ivf
./configure
make distcheck
rpmbuild \
    -D "_topdir $PWD/tmp.repos" \
    -D "release_suffix ${SUFFIX}" \
    -ta ovirt-release*.tar.gz

mv *.tar.gz exported-artifacts
find \
    "$PWD/tmp.repos" \
    -iname \*.rpm \
    -exec mv {} exported-artifacts/ \;
pushd exported-artifacts
    #Restoring sane yum environment
    yum reinstall -y system-release yum
    [[ -d /etc/dnf ]] && dnf -y reinstall dnf-conf
    [[ -d /etc/dnf ]] && sed -i -re 's#^(reposdir *= *).*$#\1/etc/yum.repos.d#' '/etc/dnf/dnf.conf'
    yum install -y ovirt-release-master-4*noarch.rpm
    rm -f /etc/yum/yum.conf
    yum repolist enabled
    yum --downloadonly install *noarch.rpm
popd

# Create a link to a predefined rpm name for easier consumption on el7 only.
# yum-repos has a symlink pointing to the el7 rpm.
if rpm --eval "%dist" | grep -qFi 'el'; then
    pushd exported-artifacts
        cp -vfl ovirt-release-master-4*.noarch.rpm ovirt-release-master.rpm
    popd
fi
