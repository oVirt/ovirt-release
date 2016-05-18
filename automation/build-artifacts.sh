#!/bin/bash -xe
[[ -d exported-artifacts ]] \
|| mkdir -p exported-artifacts

[[ -d tmp.repos ]] \
|| mkdir -p tmp.repos


autoreconf -ivf
./configure
make dist
rpmbuild \
    -D "_topdir $PWD/tmp.repos" \
    -ta ovirt-release*.tar.gz

mv *.tar.gz exported-artifacts
find \
    "$PWD/tmp.repos" \
    -iname \*.rpm \
    -exec mv {} exported-artifacts/ \;

# Create a link to a predefined rpm name for easier consumption
pushd exported-artifacts
    cp -vfl ovirt-release40-4.0*.noarch.rpm ovirt-release40.rpm
    cp -vfl ovirt-release40-snapshot-4.0*.noarch.rpm ovirt-release40-snapshot.rpm
popd
