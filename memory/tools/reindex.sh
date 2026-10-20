#!/usr/bin/env bash
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
if command -v node >/dev/null 2>&1; then
  NODE=node
else
  NODE=""
  for c in "$HOME"/.dsh/dsh-runtimes/*/dependencies/node/bin/node.exe; do
    if [ -x "$c" ]; then NODE="$c"; break; fi
  done
fi
if [ -z "$NODE" ]; then
  echo "reindex: 找不到 node（PATH 与 ~/.dsh/dsh-runtimes 下都没有）" >&2
  exit 1
fi
exec "$NODE" "$here/reindex.mjs" "$@"
