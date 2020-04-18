#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

pip install numpy sympy

wget https://github.com/cityofsmiles/calculators/raw/master/systems-solver.tar.gz

wget https://cityofsmiles.github.io/uninstall-systems-solver.sh

#echo "alias syst='python ~/systems-solver/systems-solver.py'" >> /data/data/com.termux/files/usr/etc/bash.bashrc

#source /data/data/com.termux/files/usr/etc/bash.bashrc

tar -xzvf systems-solver.tar.gz

rm systems-solver.tar.gz

cd ~/systems-solver

chmod +x *

ln -s ./systems-solver.py /data/data/com.termux/files/usr/bin/syst

echo "Restart Termux then enter 'syst' to use the calculator."



