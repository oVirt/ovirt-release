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
    yum --downloadonly install *.rpm

    # Create a link to a predefined rpm name for easier consumption
    cp -vfl ovirt-release36-3*.noarch.rpm ovirt-release36.rpm
    cp -vfl ovirt-release36-pre-3*.noarch.rpm ovirt-release36-pre.rpm
    cp -vfl ovirt-release36-snapshot-3*.noarch.rpm ovirt-release36-snapshot.rpm
popd
