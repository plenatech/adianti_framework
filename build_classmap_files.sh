#!/usr/bin/env bash
# build_classmap_files_pretty.sh
set -euo pipefail

BASE="framework/lib/adianti"

find "$BASE" -type f -name '*.php' -print0 \
| awk -v RS='\0' 'BEGIN{print "["}
     {
       gsub(/\\/,"\\\\"); gsub(/"/,"\\\"");
       printf("%s\n  \"%s\"", (NR==1?"":","), $0)
     }
     END{print "\n]"}'
