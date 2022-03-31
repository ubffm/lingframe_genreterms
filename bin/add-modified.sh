#!/bin/sh
# Copyright 2020-2022, UB JCS, Goethe University Frankfurt am Main
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
[[ $# != 2 ]] && { exit 1; }
tmp="$2"
cat "$1" > "$tmp"
modified="$(stat "$1" -c "%y" | cut -d ' ' -f 1)"
echo "<https://data.linguistik.de/lingframe-genreform#> dct:modified \"${modified}\" ." >> "$tmp"
