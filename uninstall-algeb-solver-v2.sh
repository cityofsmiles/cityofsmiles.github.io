#!/usr/bin/env bash 

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

rm -r algeb-solver-v2 &&

#rm /data/data/com.termux/files/usr/bin/algeb &&

rm ~/install-algeb-solver-v2.sh &&

echo "Successfully removed algeb-solver."

rm $__file

cd /data/data/com.termux/files/usr/etc/

sed -n -i '/alias algeb/!p' bash.bashrc


