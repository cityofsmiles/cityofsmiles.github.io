#!/data/data/com.termux/files/usr/bin/sh

cd ~

dnf install -y python3 ncurses tar 

python -c "import sympy"

if [ $? == "1" ]
	then dnf install -y python3-sympy
fi

python -c "import numpy"

if [ $? == "1" ]
	then dnf install -y python3-numpy
fi

wget https://github.com/cityofsmiles/calculators/raw/master/systems-solver.tar.gz

wget https://cityofsmiles.github.io/fedora/uninstall-systems-solver.sh

tar -xzvf systems-solver.tar.gz

rm systems-solver.tar.gz

cd ~/systems-solver

chmod +x *

echo "Restart Termux then enter 'syst' to use the calculator."

echo "alias syst='cd ~/systems-solver; python3 systems-solver.py; cd ~'" >> ~/.bashrc

cd ~




