#!/usr/bin/env bash 

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

sudo rm -r synthetic-calc &&

sudo rm /data/data/com.termux/files/usr/bin/synth &&

sudo rm install-synthetic-calc.sh &&

echo "Successfully removed synthetic-calc."

sudo rm $__file

sed -n -i '/alias synth/!p' ~/.bashrc


