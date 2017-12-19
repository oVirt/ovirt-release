#!/bin/bash -xe
[[ -d exported-artifacts ]] \
|| mkdir -p exported-artifacts

[[ -d tmp.repos ]] \
|| mkdir -p tmp.repos


autoreconf -ivf
./configure
make distcheck
rpmbuild \
    -D "_topdir $PWD/tmp.repos" \
    -ta ovirt-release*.tar.gz

mv *.tar.gz exported-artifacts
find \
    "$PWD/tmp.repos" \
    -iname \*.rpm \
    -exec mv {} exported-artifacts/ \;
pushd exported-artifacts
    #Restoring sane yum environment
    rm -f /etc/yum.conf
    yum reinstall -y system-release yum
    [[ -d /etc/dnf ]] && [[ -x /usr/bin/dnf ]] && dnf -y reinstall dnf-conf
    [[ -d /etc/dnf ]] && sed -i -re 's#^(reposdir *= *).*$#\1/etc/yum.repos.d#' '/etc/dnf/dnf.conf'
    yum install -y ovirt-release42-4*noarch.rpm
    rm -f /etc/yum/yum.conf
    yum repolist enabled
    DISTVER="$(rpm --eval "%dist"|cut -c2-)"
    if [[ "${DISTVER}" == "fc26" ]]; then
        # Fedora 26 support is broken, just provide a hint on what's missing
        # without causing the test to fail.
        yum --downloadonly install --skip-broken *noarch.rpm
    elif [[ "${DISTVER}" == "fc27" ]]; then
        # Fedora 27 support is broken, just provide a hint on what's missing
        # without causing the test to fail.
        yum --downloadonly install --skip-broken *noarch.rpm
    else
        yum --downloadonly install *noarch.rpm
    fi
popd

