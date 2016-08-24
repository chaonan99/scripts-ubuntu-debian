# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch;
./install.sh
source ~/.bashrc

# Install lua packages
luarocks install nn
luarocks install optim
luarocks install nngraph
luarocks install cutorch
luarocks install cunn
luarocks install image
luarocks install loadcaffe

