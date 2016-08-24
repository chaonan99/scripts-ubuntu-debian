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

# This install protobuf and caffe loader
sudo apt-get install libprotobuf-dev protobuf-compiler
luarocks install loadcaffe

# Install hdf5 tools for torch
sudo apt-get install libhdf5-serial-dev hdf5-tools
git clone git@github.com/deepmind/torch-hdf5.git
cd torch-hdf5
luarocks make hdf5-0-0.rockspec LIBHDF5_LIBDIR="/usr/lib/x86_64-linux-gnu/"

