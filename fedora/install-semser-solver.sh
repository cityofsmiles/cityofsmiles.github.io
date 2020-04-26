#!/data/data/com.termux/files/usr/bin/sh

cd ~

dnf install -y python3 ncurses tar 

python -c "import sympy"

if [ $? == "1" ]
	then dnf install -y python3-sympy
fi

wget https://github.com/cityofsmiles/calculators/raw/master/semser-solver.tar.gz

wget https://cityofsmiles.github.io/fedora/uninstall-semser-solver.sh

tar -xzvf semser-solver.tar.gz

rm semser-solver.tar.gz

cd ~/semser-solver

chmod +x *

echo "Restart Termux then enter 'semser' to use the calculator."

echo "alias semser='cd ~/semser_solver; python semser_solver.py; cd ~'" >> ~/.bashrc

cd ~




