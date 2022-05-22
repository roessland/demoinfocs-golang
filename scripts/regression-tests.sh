#!/bin/bash

set -e

scripts_dir=$(dirname "$0")
$scripts_dir/download-test-data.sh\
    default.7z\
    unexpected_end_of_demo.7z\
    regression-set.7z\
    retake_unknwon_bombsite_index.7z\
    broken.7z\
    overtime-demos.7z\
    valve_matchmaking.7z

go test -tags unassert_panic ./...
