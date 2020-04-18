#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg install -y python ncurses-utils tar

pip install --upgrade pip

pip install sympy

wget https://github.com/cityofsmiles/calculators/raw/master/gen-cal.tar.gz

tar -xzvf gen-cal.tar.gz

rm gen-cal.tar.gz

chmod +x gen_cal.py

ln -s ~/gen_cal.py /data/data/com.termux/files/usr/bin/gcal


echo "Restart Termux then enter 'gcal' to use the calculator."



