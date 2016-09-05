
source ./environment.sh

echo "Downloading source from '$GCC_SRC_URL'..."
curl -XGET $GCC_SRC_URL > "$GCC_FSNAME.tar.gz"

echo "Decompressing 'source.tar.gz'..."
tar -xzf "$GCC_FSNAME.tar.gz"

export SOURCE_DIR=$GCC_FSNAME
export OBJECT_DIR=$(pwd)/object
mkdir $OBJECT_DIR

cd $SOURCE_DIR
ls -a $SOURCE_DIR

echo 'Downloading prerequisites...'
./contrib/download_prerequisites

cd $OBJECT_DIR

echo 'Configuring...'
$SOURCE_DIR/configure --prefix=$OBJECT_DIR/out --enable-languages=c,c++

echo 'Building...'
make

echo 'Testing...'
make -k check

echo 'Installing...'
make install

echo "Contents of '$OBJECT_DIR'"
ls -a $OBJECT_DIR
echo "Contents of '$OBJECT_DIR/out'"
ls -a $OBJECT_DIR/out
echo "Contents of '$OBJECT_DIR/out/bin'"
ls -a $OBJECT_DIR/out/bin
