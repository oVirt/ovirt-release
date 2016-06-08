#!/bin/bash -xe
[[ -d exported-artifacts ]] \
|| mkdir -p exported-artifacts

[[ -d tmp.repos ]] \
|| mkdir -p tmp.repos

SUFFIX=".$(date -u +%Y%m%d%H%M)"

autoreconf -ivf
./configure
make dist
rpmbuild \
    -D "_topdir $PWD/tmp.repos" \
    -D "placeholder_release_suffix ${SUFFIX}" \
    -ta ovirt-release*.tar.gz

mv *.tar.gz exported-artifacts
find \
    "$PWD/tmp.repos" \
    -iname \*.rpm \
    -exec mv {} exported-artifacts/ \;

# Create a link to a predefined rpm name for easier consumption
pushd exported-artifacts
    cp -vfl ovirt-release40-4.0*.noarch.rpm ovirt-release40.rpm
    cp -vfl ovirt-release40-pre-4.0*.noarch.rpm ovirt-release40-pre.rpm
    cp -vfl ovirt-release40-snapshot-4.0*.noarch.rpm ovirt-release40-snapshot.rpm
popd
