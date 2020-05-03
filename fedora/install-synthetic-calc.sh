#!/data/data/com.termux/files/usr/bin/sh

cd ~

dnf install -y python3 ncurses tar 

wget https://github.com/cityofsmiles/calculators/raw/master/synthetic-calc.tar.gz

wget https://cityofsmiles.github.io/fedora/uninstall-synthetic-calc.sh

tar -xzvf synthetic-calc.tar.gz

sudo rm synthetic-calc.tar.gz

cd ~/synthetic-calc

sudo chmod +x *

echo "Restart terminal then enter 'synth' to use the calculator."

echo "alias synth='cd ~/synthetic-calc; python3 synthetic-calc.py; cd ~'" >> ~/.bashrc

source ~/.bashrc

