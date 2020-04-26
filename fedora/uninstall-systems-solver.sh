#!/usr/bin/env bash 

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

sudo rm -r systems-solver &&

sudo rm ~/install-systems-solver.sh &&

echo "Successfully removed systems-solver."

sudo rm $__file

sed -n -i '/alias syst/!p' ~/.bashrc



