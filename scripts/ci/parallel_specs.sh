#!/bin/bash

set -euo pipefail

rake db:reset

echo "HELLO1"
echo $BUILDKITE_PARALLEL_JOB
echo "HELLO2"

rake knapsack:rspec
