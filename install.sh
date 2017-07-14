sudo apt-get install curl -y
sudo apt-get install chromium-browser -y

sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update -y
sudo apt-get install ukuu -y

sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update -y
sudo apt-get install grub-customizer -y

sudo apt-add-repository ppa:gnome3-team/gnome3-staging -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo add-apt-repository ppa:moka/stable -y
sudo apt-get update -y
sudo apt-get install moka-icon-theme -y

sudo add-apt-repository ppa:numix/ppa -y
sudo apt-get update -y
sudo apt-get install numix-gtk-theme numix-icon-theme-circle -y

sudo add-apt-repository ppa:snwh/pulp -y
sudo apt-get update -y
sudo apt-get install paper-icon-theme -y
sudo apt-get install paper-cursor-theme -y
sudo apt-get install paper-gtk-theme -y

sudo apt install ubuntu-restricted-extras libavcodec-extra libdvd-pkg -y

sudo add-apt-repository ppa:paulo-miguel-dias/mesa -y
sudo apt-get update -y

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -y
sudo apt-get install gcc-7 g++-7 -y

wget https://download.01.org/gfx/RPM-GPG-GROUP-KEY-ilg
sudo apt-key add RPM-GPG-GROUP-KEY-ilg -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install intel-linux-graphics-update-tool -y

sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
sudo apt-get update -y
sudo apt-get install dotnet-dev-1.0.4 -y

sudo add-apt-repository ppa:caffeine-developers/ppa
sudo apt-get update -y
sudo apt-get install caffeine -y

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update -y
sudo apt-get install code -y
