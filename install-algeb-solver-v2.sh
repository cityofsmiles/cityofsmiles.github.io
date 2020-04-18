#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

pip install sympy

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver-v2.tar.gz

cd /data/data/com.termux/files/usr/etc/

sed -n -i '/alias algeb/!p' bash.bashrc

sed -n -i '/alias algeb2/!p' bash.bashrc

#echo "alias algeb='cd ~/algeb-solver-v2; python algeb-solver-v2.py; cd ~'" >> bash.bashrc

cd ~

#source /data/data/com.termux/files/usr/etc/bash.bashrc

tar -xzvf algeb-solver-v2.tar.gz

rm algeb-solver-v2.tar.gz

cd ~/algeb-solver-v2

chmod +x *

ln -s ./algeb-solver-v2.py /data/data/com.termux/files/usr/bin/algeb


echo "Restart Termux then enter 'algeb' to use the calculator."