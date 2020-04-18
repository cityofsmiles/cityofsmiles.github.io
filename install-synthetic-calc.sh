#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

wget https://github.com/cityofsmiles/calculators/raw/master/synthetic-calc.tar.gz

#echo "alias synth='python ~/synthetic-calc/synthetic-calc.py'" >> /data/data/com.termux/files/usr/etc/bash.bashrc

#source /data/data/com.termux/files/usr/etc/bash.bashrc

tar -xzvf synthetic-calc.tar.gz

rm synthetic-calc.tar.gz

cd ~/synthetic-calc

chmod +x *

ln -s ./synthetic-calc.py /data/data/com.termux/files/usr/bin/synth

echo "Restart Termux then enter 'synth' to use the calculator."



