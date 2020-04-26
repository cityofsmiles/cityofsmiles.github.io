#!/data/data/com.termux/files/usr/bin/sh

cd ~

dnf install -y python3 ncurses tar 

python -c "import sympy"

if [ $? == "1" ]
	then dnf install -y python3-sympy
fi

wget https://github.com/cityofsmiles/calculators/raw/master/algeb-solver-v2.tar.gz

wget https://cityofsmiles.github.io/uninstall-algeb-solver-v2.sh


echo "alias algeb='cd ~/algeb-solver-v2; python algeb-solver-v2.py; cd ~'" >> ~/.bashrc

tar -xzvf algeb-solver-v2.tar.gz

rm algeb-solver-v2.tar.gz

cd ~/algeb-solver-v2

chmod +x *

echo "Restart Termux then enter 'algeb' to use the calculator."

source ~/.bashrc