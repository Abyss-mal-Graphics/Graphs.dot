#!/bin/bash
mkdir -p images

for filename in ./graphs/*.dot; do
    out="${filename/#.\/graphs/.\/images}"
    out="${out/%.dot/.png}"
    cat "$filename" | docker container run --rm -i vladgolubev/dot2png > "$out"
done
