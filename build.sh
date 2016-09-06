
source ./environment.sh

cd $OBJECT_DIR

echo 'Configuring...'
$SOURCE_DIR/configure --prefix=$OBJECT_DIR/out --enable-languages=c,c++ > $LOGS_DIR/configure.log

echo 'Building...'
make -j 4

echo 'Installing...'
make -j 4 install
