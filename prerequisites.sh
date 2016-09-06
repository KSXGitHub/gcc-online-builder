
source ./environment.sh

cd $SOURCE_DIR
echo 'Downloading prerequisites...'
./contrib/download_prerequisites > $LOGS_DIR/prerequisites.log && (
    echo 'Success'
    exit 0
) || (
    exitcode=$?
    echo 'Failed' >&2
    exit $exitcode
)
