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
    yum install -y ovirt-release40-4*noarch.rpm
    rm -f /etc/yum/yum.conf
    yum repolist enabled
    yum --downloadonly install *noarch.rpm
popd

    # Create a link to a predefined rpm name for easier consumption
    cp -vfl ovirt-release40-4*.noarch.rpm ovirt-release40.rpm
    cp -vfl ovirt-release40-pre-4*.noarch.rpm ovirt-release40-pre.rpm
    cp -vfl ovirt-release40-snapshot-4*.noarch.rpm ovirt-release40-snapshot.rpm
popd
