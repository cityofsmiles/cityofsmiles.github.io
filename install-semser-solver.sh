#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

python -c "import sympy"

if [ $? == "1" ]
	then pip install sympy
fi

wget https://github.com/cityofsmiles/calculators/raw/master/semser-solver.tar.gz

wget https://cityofsmiles.github.io/uninstall-semser-solver.sh

tar -xzvf semser-solver.tar.gz

rm semser-solver.tar.gz

cd ~/semser_solver

chmod +x *

echo "Restart Termux then enter 'semser' to use the calculator."

cd /data/data/com.termux/files/usr/etc/

echo "alias semser='cd ~/semser_solver; python semser_solver.py; cd ~'" >> bash.bashrc

cd ~




