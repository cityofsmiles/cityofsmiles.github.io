#!/usr/bin/env bash 

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

sudo rm -r algeb-solver-v2 &&

sudo rm ~/install-algeb-solver-v2.sh &&

echo "Successfully removed algeb-solver."

rm $__file

sed -n -i '/alias algeb/!p' ~/.bashrc


