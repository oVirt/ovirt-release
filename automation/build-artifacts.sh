#!/bin/bash -xe
[[ -d exported-artifacts ]] \
|| mkdir -p exported-artifacts

[[ -d tmp.repos ]] \
|| mkdir -p tmp.repos

SUFFIX=".$(date -u +%Y%m%d%H%M%S).git$(git rev-parse --short HEAD)"

autoreconf -ivf
./configure
make dist
rpmbuild \
    -D "_topdir $PWD/tmp.repos" \
    -D "release_suffix ${SUFFIX}" \
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
    cp -vfl ovirt-release41-pre-4.1*.noarch.rpm ovirt-release40-pre.rpm
    popd
fi
