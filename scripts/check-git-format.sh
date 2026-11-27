#!/usr/bin/env bash
set -euo pipefail

case "$1" in
  branch)
    branch=$(git symbolic-ref --quiet --short HEAD)
    if [[ ! "$branch" =~ ^[a-z][a-z0-9-]*/[a-z0-9][a-z0-9._/-]*$ ]]; then
      echo "Use type/topic for the branch name, such as feat/boot-protocol." >&2
      exit 1
    fi
    ;;
  commit)
    message=$(git stripspace --strip-comments < "$2")
    subject=${message%%$'\n'*}
    if [[ ! "$subject" =~ ^[a-z][a-z0-9-]*(\([a-z0-9._/-]+\))?:\ .+ ]]; then
      echo "Use type: summary for the commit subject, such as fix: correct the boot sequence." >&2
      exit 1
    fi
    ;;
esac
