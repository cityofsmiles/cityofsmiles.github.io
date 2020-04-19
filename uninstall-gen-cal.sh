#!/usr/bin/env bash 

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

cd ~

bash uninstall-algeb-solver-v2.sh

bash uninstall-synthetic-calc.sh

bash uninstall-systems-solver.sh

rm gen_cal.py &&

rm /data/data/com.termux/files/usr/bin/gcal &&

rm install-gen-cal.sh &&

echo "Successfully removed general calculator."

rm $__file