#!/bin/bash
set -e -x

# docker run --rm -v $(pwd):/io ghcr.io/diamondlightsource/manylinux-dls-2010_x86_64":latest /bin/bash /releng/build_manylinux_binding.sh
# bash build_manylinux_binding.sh

cd /io

JBIN=$(readlink -f `which java`)
export JDKDIR=$(dirname $(dirname $(dirname $JBIN)))

make Makefiles
make distclean
make javawrapper javatests CBFLIB_DONT_BUILD_HDF5=yes CBFLIB_DONT_USE_LOCAL_REGEX=yes CBFLIB_DONT_USE_PYCIFRW=yes

JARFILE="jcbf/cbflib-*.jar"
VERSION=`basename $JARFILE | sed -e 's/cbflib-\(.*\)\.jar/\1/g'`

DEST=/io/dist/$VERSION/linux/$PLAT/$ARCH
mkdir -p $DEST
cp $JARFILE $DEST
cp solib/libcbf*.so $DEST
cp /usr/lib64/libpcre.so $DEST
