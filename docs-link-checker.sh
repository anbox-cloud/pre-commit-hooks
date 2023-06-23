#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

awk '{
  if (match($0, "anbox-cloud.io/docs") != 0) { print "\033[31m Error \033[0m: In "FILENAME", line "FNR", col "RSTART", URL "$0" - Documentation links should point to Discourse"; err = 1 }
} END {exit err}' "$@"
