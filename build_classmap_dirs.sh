#!/usr/bin/env bash
# build_classmap_dirs_pretty.sh
set -euo pipefail

BASE="framework/lib/adianti"

find "$BASE" -type f -name '*.php' -printf '%h\n' \
| sort -u \
| awk 'BEGIN{print "["}
     {
       gsub(/\\/,"\\\\"); gsub(/"/,"\\\"");
       printf("%s\n  \"%s\"", (NR==1?"":","), $0)
     }
     END{print "\n]"}'
