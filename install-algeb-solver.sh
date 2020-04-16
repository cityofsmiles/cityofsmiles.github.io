#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python tput

pip install -upgrade pip

pip install sympy

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver.tar.gz

echo "alias algeb='bash ~/algeb-solver/algeb-solver.sh'" >> /data/data/com.termux/files/usr/etc/bash.bashrc

source /data/data/com.termux/files/usr/etc/bash.bashrc

tar -xzvf algeb-solver.tar.gz





