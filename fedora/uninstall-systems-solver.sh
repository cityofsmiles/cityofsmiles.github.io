#!/usr/bin/env bash 

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

rm -r systems-solver &&

rm ~/install-systems-solver.sh &&

echo "Successfully removed systems-solver."

rm $__file

cd /data/data/com.termux/files/usr/etc/

sed -n -i '/alias syst/!p' bash.bashrc



