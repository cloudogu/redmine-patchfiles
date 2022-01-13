#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

scriptPath=$(realpath "$0")
patchesDir=$(dirname "$scriptPath")

matchstring="$patchesDir/*.patch"

for patchfile in $matchstring
do
  echo "Applying patchfile $patchfile"
  git apply "$patchfile"
done
