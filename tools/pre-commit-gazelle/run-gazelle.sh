#!/usr/bin/env bash
#
set -e -o pipefail

if ! command -v bazel &> /dev/null ; then
    echo "bazel not installed or available in the PATH" >&2
    exit 1
fi

files=()

for file in "$@"; do
    files+=( "${file%/*}" )
done

exec bazel run //:gazelle -- "${files[@]}"
