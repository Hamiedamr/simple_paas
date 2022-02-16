#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

while true; do
    echo "start"
    git pull origin master
    sleep 10
done