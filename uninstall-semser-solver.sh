#!/usr/bin/env bash 

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

rm -r semser_solver &&

rm ~/install-semser-solver.sh &&

echo "Successfully removed semser-solver."

rm $__file

cd /data/data/com.termux/files/usr/etc/

sed -n -i '/alias semser/!p' bash.bashrc



