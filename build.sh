
source ./environment.sh

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
