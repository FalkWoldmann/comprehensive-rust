#!/usr/bin/env bash
set -Eeuo pipefail

# Usage: build.sh <dest-dir>
#
# Build the course, including the exercise archive. The output can be found in
# $dest_dir.

dest_dir=${1:?"Usage: $0 <dest-dir>"}

echo "::group::Building course"

mdbook build -d "$dest_dir"

(cd "$dest_dir/exerciser" && zip --recurse-paths ../html/comprehensive-rust-exercises.zip comprehensive-rust-exercises/)

echo "::endgroup::"
