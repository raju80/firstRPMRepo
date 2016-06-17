#!/bin/bash

echo "hello.. this is a simple shell script"

ENV=$(echo $JOB_NAME |awk -F "/" '{print $3}'|awk -F "-" '{print $2}')
BUILD_NUMBER=${BUILD_NUMBER}
RPM_DIR = `/home/$USER/rpmbuild`


mkdir -p RPM_DIR/BUILD/
mkdir -p RPM_DIR/BUILDROOT/
mkdir -p RPM_DIR/RPMS/
mkdir -p RPM_DIR/SRPMS/
mkdir -p RPM_DIR/SOURCES/
mkdir -p RPM_DIR/SPECS/
mkdir -p RPMs

cp $WORKSPACE/package/first.spec  RPM_DIR/SPECS/

cp $WORKSPACE/package/files/* RPM_DIR/SOURCES

rpmbuild -v -bb --define 'BUILD_NUMBER '$BUILD_NUMBER --define 'ENV '$ENV ~/rpmbuild/SPECS/first.spec

cp RPM_DIR/RPMS/noarch/*.rpm $WORKSPACE/RPMs


ls -l RPM_DIR/RPMS/noarch/




