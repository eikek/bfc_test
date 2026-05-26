#!/usr/bin/env bash

echo "Starting $(date)"
max=${1}
if [ -z "$max" ]; then
    max=${MAX_COUNT:-30}
fi

rc=${RETURN_CODE:-0}

for i in $(seq 1 $max); do
    sleep 1
    echo "Counting: $i / $max"
done
echo "Done."
if [ $rc -ne 0 ]; then
    echo "ERROR: Return with exit code $rc"
fi
exit $rc
