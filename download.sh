
source ./environment.sh

stat $SOURCE_DIR && (
    echo "$SOURCE_DIR already exists."
) || (

    stat $GCC_SRC_ARC && (
        echo "$GCC_SRC_ARC already exists."
    ) || (
        echo "Downloading source from '$GCC_SRC_URL'..."
        curl -XGET $GCC_SRC_URL > $GCC_SRC_ARC
    )

    echo "Decompressing '$GCC_SRC_URL'..."
    tar -xzf $GCC_SRC_URL

)
