#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

pip install sympy

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver.tar.gz

cd /data/data/com.termux/files/usr/etc/

sed -n -i '/alias algeb/!p' bash.bashrc

echo "alias algeb='python ~/algeb-solver/algeb-solver.py'" >> bash.bashrc

cd ~

source /data/data/com.termux/files/usr/etc/bash.bashrc

tar -xzvf algeb-solver.tar.gz

rm algeb-solver.tar.gz

cd ~/algeb-solver

chmod +x *




