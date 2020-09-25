uname -a

cd ~/

sudo apt update -y
sudo apt install wget -y

wget https://raw.githubusercontent.com/wildRaccoon/file-share/master/update.sh
wget https://raw.githubusercontent.com/wildRaccoon/file-share/master/.tmux.conf

chmod +x ./update.sh 
./update.sh 

sudo add-apt-repository ppa:danielrichter2007/grub-customizer 
sudo apt update -y
sudo apt install grub-customizer

#general
sudo apt install bleachbit mc neofetch screenfetch python3 pypy3 nano tmux htop xclip terminator -y
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

#docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose  -y

#add user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER


#microsoft
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update -y
sudo apt install code -y

#dotnet
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update -y
sudo apt install -y dotnet-sdk-3.1 -y

#skypeforlinux
echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add - 
sudo apt update  -y
sudo apt install skypeforlinux  -y

#dbeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt update -y
sudo apt install dbeaver-ce  -y

#insomnia
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /"     | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc     | sudo apt-key add -
sudo apt update -y
sudo apt install insomnia  -y

#google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update -y
sudo apt install google-chrome-stable -y

#golang
wget https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.2.linux-amd64.tar.gz 
rm go1.15.2.linux-amd64.tar.gz 
echo 'export PATH=$PATH:/usr/local/go/bin' > .profile

#remove snap
sudo snap remove snap-store
sudo snap remove software-boutique
sudo snap remove ubuntu-mate-welcome
snap remove core18

sudo umount (df --output=source | grep snap)
sudo apt purge snapd

rm -rf ~/snap
rm -rf /snap
rm -rf /var/snap
rm -rf /var/lib/snap
