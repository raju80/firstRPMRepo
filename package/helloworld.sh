
echo "hello.. this is a simple shell script"

#!/bin/bash
mkdir -p ~/rpmbuild/BUILD/
mkdir -p ~/rpmbuild/BUILDROOT/
mkdir -p ~/rpmbuild/RPMS/
mkdir -p ~/rpmbuild/SRPMS/
mkdir -p ~/rpmbuild/SOURCES/
mkdir -p ~/rpmbuild/SPECS/
mkdir -p RPMs

cp $WORKSPACE/package/first.spec  ~/rpmbuild/SPECS/

rpmbuild -v -bb $BUILD_NUMBER ~/rpmbuild/SPECS/first.spec

cp ~/rpmbuild/RPMS/noarch/*.rpm $WORKSPACE/RPMs


ls -l ~/rpmbuild/RPMS/noarch/




