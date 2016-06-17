#!/bin/bash

echo "hello.. this is a simple shell script"

ENV=$(echo $JOB_NAME |awk -F "/" '{print $3}'|awk -F "-" '{print $2}')
BUILD_NUMBER=${BUILD_NUMBER}

mkdir -p ~/rpmbuild/BUILD/
mkdir -p ~/rpmbuild/BUILDROOT/
mkdir -p ~/rpmbuild/RPMS/
mkdir -p ~/rpmbuild/SRPMS/
mkdir -p ~/rpmbuild/SOURCES/
mkdir -p ~/rpmbuild/SPECS/
mkdir -p RPMs

cp $WORKSPACE/package/first.spec  ~/rpmbuild/SPECS/

cp $WORKSPACE/package/files/* ~/rpmbuild/SOURCES

rpmbuild -v -bb --define 'BUILD_NUMBER '$BUILD_NUMBER --define 'ENV '$ENV ~/rpmbuild/SPECS/first.spec

cp ~/rpmbuild/RPMS/noarch/*.rpm $WORKSPACE/RPMs


ls -l ~/rpmbuild/RPMS/noarch/




