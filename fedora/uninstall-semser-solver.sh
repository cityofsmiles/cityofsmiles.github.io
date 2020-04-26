#!/usr/bin/env bash 

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

sudo rm -r semser-solver &&

sudo rm ~/install-semser-solver.sh &&

echo "Successfully removed semser-solver."

sudo rm $__file

sed -n -i '/alias semser/!p' ~/.bashrc



