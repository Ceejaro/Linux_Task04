#!/bin/bash
# Verifies that every image referenced in the activity READMEs exists on disk.
# Usage: bash scripts/check_screenshots.sh   (run from the repo root)

missing=0
total=0

while IFS= read -r readme; do
  dir=$(dirname "$readme")
  while IFS= read -r ref; do
    path="${ref#*](}"
    path="${path%)}"
    total=$((total + 1))
    if [ ! -f "$dir/$path" ]; then
      echo "MISSING: $dir/$path"
      missing=$((missing + 1))
    fi
  done < <(grep -o '!\[[^]]*\]([^)]*\.png)' "$readme")
done < <(find activities -name README.md | sort)

echo "----"
echo "Checked $total screenshot references, $missing missing."
[ "$missing" -eq 0 ]
