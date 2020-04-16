#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python 

pip install sympy

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver.zip

tar -xzvf ./algeb-solver.tar.gz

echo "alias algeb='bash ~/algeb-solver/algeb-solver.sh'" >> ~/.bashrc

source ~/.bashrc

