wget https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20210212_all.deb
sudo apt-get install libnewt0.52 whiptail parted triggerhappy lua5.1 alsa-utils -y
# Auto install dependancies on eg. ubuntu server on RPI
sudo apt-get install -fy
sudo dpkg -i raspi-config_20210212_all.deb
rm 	raspi-config_20210212_all.deb