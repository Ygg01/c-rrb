#!/usr/bin/env bash

DIR="tmp"
if [ -n "$1" ]; then
    DIR="$1"
fi

WORDS="09 10
07 12 issues whoopsie 250000 200000 ninety seriously branching rrb wow coffee
Delete error edit branches merge fix Create JavaScript 6a Java 51 21 14"

mkdir -p plots

for cores in 4; do ## add in 1 2 8 if wanted to.
    for word in $WORDS; do
        echo ./gen-tagged.sh "$cores" "$word" data/sum-2013-01-10.json "$DIR"
        ./gen-tagged.sh "$cores" "$word" data/sum-2013-01-10.json "$DIR"
    done
done

# ./gen-memory.sh 4
# ./memory-plots.sh 4
# ./gen-lined.sh 4 searchfilter
# ./gen-lined.sh 4 total
# ./gen-lined.sh 4 searchcat
