#!/bin/bash

set -eo pipefail

export VERSION="$1"
STRIP_PREFIX="regle_cli_${VERSION}_"
echo "Stripping $STRIP_PREFIX"

function extract_sha() {
    while IFS= read -r line; do
        SHA=$(echo $line | awk '{print $1}')
        ARCH=$(echo $line | awk '{print $2}' | xargs basename -s .tar.gz)
        VAR=$(echo ${ARCH#"$STRIP_PREFIX"} | tr '[:lower:]' '[:upper:]' | tr '-' '_')
        echo $VAR="$SHA"
        export $VAR="$SHA"
    done <"$1"
}

URL_PREFIX="https://github.com/regledev/homebrew-tap/releases/download/v$VERSION"
TEMP_DIR=$(mktemp -d)
pushd $TEMP_DIR

wget -q $URL_PREFIX/darwin.txt
wget -q $URL_PREFIX/linux.txt

extract_sha darwin.txt
extract_sha linux.txt

popd

cat ./regle.rb.template | envsubst >regle.rb
