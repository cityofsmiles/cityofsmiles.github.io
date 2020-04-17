#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

pip install sympy

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver.tar.gz

echo "alias algeb='python ~/algeb-solver-v2/algeb-solver-v2.py'" >> /data/data/com.termux/files/usr/etc/bash.bashrc

source /data/data/com.termux/files/usr/etc/bash.bashrc

tar -xzvf algeb-solver.tar.gz

rm algeb-solver.tar.gz





