#!/usr/bin/env sh
export TARGET="${HOME}/.local/share/transfer.sh"
mkdir -p .local/share
if ! [ -f "${TARGET}" ] || [ -f "${TARGET}" ] && \
    curl -sSL https://gist.githubusercontent.com/nl5887/a511f172d3fb3cd0e42d/raw/transfer.sh | \
        { cmp -s /dev/fd/3 "${TARGET}"; } \
    3<&0
then
    curl -sSL https://gist.githubusercontent.com/nl5887/a511f172d3fb3cd0e42d/raw/transfer.sh \
        -o "${TARGET}"
fi