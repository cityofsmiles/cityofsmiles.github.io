#!/usr/bin/env bash 

cd ~

bash uninstall-algeb-solver-v2.sh

bash uninstall-synthetic-calc.sh

bash uninstall-systems-solver.sh

rm gen_cal.py &&

rm /data/data/com.termux/files/usr/bin/gcal &&

echo "Successfully removed general calculator."