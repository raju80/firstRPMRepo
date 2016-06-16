
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

rpmbuild -bb ~/rpmbuild/SPECS/first.spec

cp ~/rpmbuild/RPMS/noarch/*.rpm $WORKSPACE/RPMs


ls -l ~/rpmbuild/RPMS/noarch/




