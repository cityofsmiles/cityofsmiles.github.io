#!/data/data/com.termux/files/usr/bin/sh

cd ~

pkg upgrade

pkg install -y wget

# install algeb-solver-v2

wget https://cityofsmiles.github.io/install-algeb-solver-v2.sh

bash install-algeb-solver-v2.sh

# install synthetic-calc

wget https://cityofsmiles.github.io/install-synthetic-calc.sh

bash install-synthetic-calc.sh

# Install systems-solver
wget https://cityofsmiles.github.io/install-systems-solver.sh

bash install-systems-solver.sh

# install gen-cal

wget https://github.com/cityofsmiles/calculators/raw/master/gen-cal.tar.gz

wget https://cityofsmiles.github.io/uninstall-gen-cal.sh

tar -xzvf gen-cal.tar.gz

rm gen-cal.tar.gz

chmod +x gen_cal.py

ln -s gen_cal.py /data/data/com.termux/files/usr/bin/gcal

echo "Restart Termux then enter 'gcal' to use the calculator."



