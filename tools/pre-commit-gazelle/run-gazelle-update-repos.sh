#!/usr/bin/env bash
#
set -e -o pipefail

if ! command -v bazel &> /dev/null ; then
    echo "bazel not installed or available in the PATH" >&2
    exit 1
fi

exec 5>&1
output="$(bazel run //:gazelle -- update-repos --build_file_proto_mode=disable -from_file=./go.mod -to_macro=deps.bzl%third_party_go_dependencies | tee /dev/fd/5)"
[[ -z "$output" ]]
