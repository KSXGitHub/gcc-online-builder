
# Use this for non-ci environment

./download.sh && ./prerequisites.sh && ./build.sh && {
    echo 'SUCCESS'
} || {
    exitcode=$?
    echo 'FAILED' >&2
    exit exitcode
}
