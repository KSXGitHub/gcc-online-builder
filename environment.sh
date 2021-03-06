export GCC_VERSION=$(./version.sh)
export GCC_MIRROR=$(./mirror.sh)
export GCC_FSNAME="gcc-$GCC_VERSION"
export GCC_ARCHIVE="$GCC_FSNAME.tar.gz"
export GCC_SRC_URL="$GCC_MIRROR/gcc/releases/$GCC_FSNAME/$GCC_ARCHIVE"
export REPO_DIR=$(pwd)
export GCC_SRC_ARC=$REPO_DIR/$GCC_ARCHIVE
export SOURCE_DIR=$(pwd)/$GCC_FSNAME
export OBJECT_DIR=$(pwd)/object
export LOGS_DIR=$(pwd)/logs
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:/usr/lib/i386-linux-gnu
mkdir $OBJECT_DIR $OBJECT_DIR/out $LOGS_DIR
