#!/bin/bash

FRESH_UBUNTU() {

sudo apt-get install -y synaptic compizconfig-settings-manager compiz-plugins-extra unity-tweak-tool

}

# linux headers
sudo apt-get install -y linux-headers-$(uname -r)

# build tools
sudo apt-get install -y build-essential

# libraries
#sudo apt-get install -y ubuntu-restricted-extras openjdk-8-jdk flac lame automake libtool

# apps
#sudo apt-get install -y \
#audacity \
#clementine \
#gdebi \
#git \
#pidgin \
#transmission \
#vim \
#vlc \
#;


# fonts
#sudo apt-get install -y fonts-inconsolata ttf-anonymous-pro fonts-roboto fonts-droid
# kill cache
#fc-cache -f -v

# python
sudo apt-get install -y python-pip python-dev
sudo pip install --upgrade pip
sudo pip install virtualenv
sudo pip install pylint

# node 6.x LTS
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y npm

mkdir ~/.npm-packages ~/.npm 2>/dev/null;

# npm packges
npm install -g bower yo grunt-cli gulp babel webpack npm-check-updates n vue-cli eslint

# essentials
sudo apt-get install -y \
autoconf \
automake \
cmake \
curl \
ffmpeg \
flac \
g++ \
libasound2 \
libasound2-plugins \
libboost-dev \
libboost-python-dev \
libcairo2 \
libcairo2-dev \
libjpeg-dev \
libjpeg8 \
libtool \
openssh-client \
openssh-server \
openssh-sftp-server \
openssl \
ppa-purge \
pylint \
samba \
samba-dsdb-modules \
samba-libs \
samba-vfs-modules \
shotwell \
smbclient \
smbnetfs \
ttf-mscorefonts-installer \
wget \
wine \
wmctrl \
xclip \
xdotool \
zlib1g \
zlib1g-dev \
;

# audio codecs
sudo apt-get install -y flac lame;

# /sites setup
cd /
sudo mkdir -p /sites/envs
sudo chown -R $(whoami):www-data /sites
sudo mkdir -p /sites/logs
sudo mkdir -p /sites/pool
sudo mkdir -p /sites/maxrelax
sudo chmod -R 0755 /sites

# dev-local setup
mkdir -p ~/dev-local

# powerline fonts
pushd $(pwd)
cd ~/dev-local
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
popd

# y-ppa-manager
sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt-get update
sudo apt-get install -y y-ppa-manager
