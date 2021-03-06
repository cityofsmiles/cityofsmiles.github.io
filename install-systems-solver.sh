#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

python -c "import sympy"

if [ $? == "1" ]
	then pip install sympy
fi

python -c "import numpy"

if [ $? == "1" ]
	then pip install numpy
fi

wget https://github.com/cityofsmiles/calculators/raw/master/systems-solver.tar.gz

wget https://cityofsmiles.github.io/uninstall-systems-solver.sh

tar -xzvf systems-solver.tar.gz

rm systems-solver.tar.gz

cd ~/systems-solver

chmod +x *

echo "Restart Termux then enter 'syst' to use the calculator."

cd /data/data/com.termux/files/usr/etc/

echo "alias syst='cd ~/systems-solver; python systems-solver.py; cd ~'" >> bash.bashrc

cd ~




