
source ./environment.sh

echo "Downloading source from '$GCC_SRC_URL'..."
curl -XGET $GCC_SRC_URL > "$GCC_FSNAME.tar.gz"

echo "Decompressing 'source.tar.gz'..."
tar -xzf "$GCC_FSNAME.tar.gz"

export REPO_DIR=$(pwd)
export SOURCE_DIR=$(pwd)/$GCC_FSNAME
export OBJECT_DIR=$(pwd)/object
export LOGS_DIR=$(pwd)/logs
mkdir $OBJECT_DIR $OBJECT_DIR/out $LOGS_DIR

cd $SOURCE_DIR
echo 'Downloading prerequisites...'
./contrib/download_prerequisites > $LOGS_DIR/prerequisites.log

cd $OBJECT_DIR

echo 'Configuring...'
$SOURCE_DIR/configure --prefix=$OBJECT_DIR/out --enable-languages=c,c++ > $LOGS_DIR/configure.log

echo 'Building...'
make

echo 'Installing...'
make install
