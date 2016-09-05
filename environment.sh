export GCC_VERSION=$(./version.sh)
export GCC_MIRROR=$(./mirror.sh)
export GCC_FSNAME="gcc-$GCC_VERSION"
export GCC_SRC_URL="$GCC_MIRROR/gcc/releases/$GCC_FSNAME/$GCC_FSNAME.tar.gz"
