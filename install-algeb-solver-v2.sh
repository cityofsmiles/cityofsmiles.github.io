#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

python -c "import sympy"

if [ $? == "1" ]
	then pip install sympy
fi

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver-v2.tar.gz

wget https://cityofsmiles.github.io/uninstall-algeb-solver-v2.sh

cd /data/data/com.termux/files/usr/etc/

echo "alias algeb='cd ~/algeb_solver_v2; python algeb_solver_v2.py; cd ~'" >> bash.bashrc

cd ~

source /data/data/com.termux/files/usr/etc/bash.bashrcf

tar -xzvf algeb-solver-v2.tar.gz

rm algeb-solver-v2.tar.gz

cd ~/algeb_solver_v2

chmod +x *

echo "Restart Termux then enter 'algeb' to use the calculator."