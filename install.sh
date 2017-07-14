sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install ukuu

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer

sudo apt-add-repository ppa:gnome3-team/gnome3-staging
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo add-apt-repository ppa:moka/stable
sudo apt-get update
sudo apt-get install moka-icon-theme

sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle

sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme
sudo apt-get install paper-cursor-theme
sudo apt-get install paper-gtk-theme

sudo apt install ubuntu-restricted-extras libavcodec-extra libdvd-pkg

sudo add-apt-repository ppa:paulo-miguel-dias/mesa
sudo apt-get update

sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-7 g++-7

wget https://download.01.org/gfx/RPM-GPG-GROUP-KEY-ilg
sudo apt-key add RPM-GPG-GROUP-KEY-ilg
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install intel-linux-graphics-update-tool
