
source ./environment.sh

echo "Downloading source from '$GCC_SRC_URL'..."
curl -XGET $GCC_SRC_URL > "$GCC_FSNAME.tar.gz"

echo "Decompressing 'source.tar.gz'..."
tar -xzf "$GCC_FSNAME.tar.gz"

export REPO_DIR=$(pwd)
export SOURCE_DIR=$(pwd)/$GCC_FSNAME
export OBJECT_DIR=$(pwd)/object
export LOGS_DIR=$(pwd)/logs
mkdir $OBJECT_DIR $LOGS_DIR

cd $SOURCE_DIR
echo 'Downloading prerequisites...'
./contrib/download_prerequisites

cd $OBJECT_DIR

echo 'Configuring...'
$SOURCE_DIR/configure --prefix=$OBJECT_DIR/out

echo "Contents of '$SOURCE_DIR'"
ls -a $SOURCE_DIR
echo "Contents of '$OBJECT_DIR'"
ls -a $OBJECT_DIR
echo "Contents of '$REPO_DIR'"
ls -a $REPO_DIR

echo 'Building...'
make > $LOGS_DIR/make.log

echo 'Testing...'
make -k check > $LOGS_DIR/make-check.log

echo 'Installing...'
make install > $LOGS_DIR/make-install.log

echo "Contents of '$OBJECT_DIR'"
ls -a $OBJECT_DIR
echo "Contents of '$OBJECT_DIR/out'"
ls -a $OBJECT_DIR/out
echo "Contents of '$OBJECT_DIR/out/bin'"
ls -a $OBJECT_DIR/out/bin
