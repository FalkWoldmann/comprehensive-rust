#!/usr/bin/env bash
set -Eeuo pipefail

# Usage: build.sh <dest-dir>
#
# Build the course, including the PDF version and the exercise archive. The
# output can be found in $dest_dir.

dest_dir=${1:?"Usage: $0 <dest-dir>"}

echo "::group::Building course"

# Enable mdbook-pandoc to build PDF version of the course
export MDBOOK_OUTPUT__PANDOC__DISABLED=false

mdbook build -d "$dest_dir"

mv "$dest_dir/pandoc/pdf/comprehensive-rust.pdf" "$dest_dir/html/"
(cd "$dest_dir/exerciser" && zip --recurse-paths ../html/comprehensive-rust-exercises.zip comprehensive-rust-exercises/)

echo "::endgroup::"
