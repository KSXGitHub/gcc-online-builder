
# Use this for non-ci environment

./download.sh && ./prerequisites.sh && ./build.sh || {
    exitcode=$?
    echo 'FAILED' >&2
    exit exitcode
}
