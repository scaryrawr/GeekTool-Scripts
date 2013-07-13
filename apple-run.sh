#! /usr/bin/env bash
if [ "$*" != "" ]; then
  dir="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"
  output=`osascript ${dir}/$1`
  echo ${output}
fi

