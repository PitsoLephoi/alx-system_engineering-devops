#!/bin/bash

ls -d .[!.]* * | LC_COLLATE=C sort -k1.2,1.2 -k1,1 -t/ --field-separator=/ | awk '{ if (NR > 1) printf ",%s", $0; else printf "%s", $0 } END { print "" }'
