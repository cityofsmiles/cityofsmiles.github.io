#!/data/data/com.termux/files/usr/bin/sh

cd ~

dnf check-update && dnf upgrade

dnf install -y wget

# install algeb-solver-v2

wget https://cityofsmiles.github.io/fedora/install-algeb-solver-v2.sh

bash install-algeb-solver-v2.sh

# install synthetic-calc

wget https://cityofsmiles.github.io/fedora/install-synthetic-calc.sh

bash install-synthetic-calc.sh

# Install systems-solver
wget https://cityofsmiles.github.io/fedora/install-systems-solver.sh

bash install-systems-solver.sh

# Install Semser-solver
wget https://cityofsmiles.github.io/fedora/install-semser-solver.sh

bash install-semser-solver.sh

# install gen-cal

wget https://github.com/cityofsmiles/calculators/raw/master/gen-cal.tar.gz

wget https://cityofsmiles.github.io/fedora/uninstall-gen-cal.sh

tar -xzvf gen-cal.tar.gz

rm gen-cal.tar.gz

sudo chmod +x gen_cal.py

echo "Restart Termux then enter 'gcal' to use the calculator."

echo "alias gcal='cd ~; python gen_cal.py'" >> ~/.bashrc

cd ~

