#!/bin/sh
[[ $# != 2 ]] && { exit 1; }
tmp="$2"
cat "$1" > "$tmp"
modified="$(stat "$1" -c "%y" | cut -d ' ' -f 1)"
echo "<https://data.linguistik.de/lingframe-genreform#> dct:modified \"${modified}\" ." >> "$tmp"
