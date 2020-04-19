#!/usr/bin/env bash 

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

rm -r synthetic-calc &&

rm /data/data/com.termux/files/usr/bin/synth &&

rm install-synthetic-calc.sh &&

echo "Successfully removed synthetic-calc."

rm $__file

cd /data/data/com.termux/files/usr/etc/

sed -n -i '/alias synth/!p' bash.bashrc


