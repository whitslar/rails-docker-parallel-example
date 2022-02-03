#!/bin/bash

set -euo pipefail

rake db:reset

echo "HELLO1"
echo $BUILDKITE_PARALLEL_JOB_COUNT
echo "HELLO2"

rake knapsack:rspec
