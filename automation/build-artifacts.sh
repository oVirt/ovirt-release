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

# Create a link to a predefined rpm name for easier consumption on el7 only.
# yum-repos has a symlink pointing to the el7 rpm.
if rpm --eval "%dist" | grep -qFi 'el'; then
    pushd exported-artifacts
    cp -vfl ovirt-release41-4.1*.noarch.rpm ovirt-release41.rpm
    cp -vfl ovirt-release41-pre-4.1*.noarch.rpm ovirt-release41-pre.rpm
    cp -vfl ovirt-release41-snapshot-4.1*.noarch.rpm ovirt-release41-snapshot.rpm
    popd
fi
