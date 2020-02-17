#!/bin/bash
if (( $EUID != 0 )); then
    echo -e "\e[31mEl comando se debe ejecutar como root\e[0m"
    exit
fi

clear
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

echo -e "Actualizando repositorios"
apt-get -y update
apt-get -y dist-upgrade

wget https://github.com/sharkdp/bat/releases/download/v0.11.0/bat_0.11.0_amd64.deb 
dpkg -i bat_0.11.0_amd64.deb

for i in $(cat packages.lst);do 
	echo -e "\e[36m***********************************"
	echo -e "Instalando ... --->\e[1m"  $i
	echo -e "\e[36m****************************************\e[0m" 
	apt-get -y install -f $i
done; 

gdebi bat_0.11.0_amd64.deb

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s $(which zsh)


echo -e "\e[36mInstalando InSync\e[0m"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C

echo -e "\e[36mInstalando Calibre\e[0m"

wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

echo -e "Purgando Paquetes"
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get autoremove
dpkg -i /home/daniel/Downloads/deb/*.deb
echo -e "Creando enlaces simbolicos"
#rm -rf /home/daniel/Downloads /home/daniel/Documents /home/daniel/Pictures 
#ln -s /data/Documentos /home/daniel/Documents
#ln -s /data/Descargas /home/daniel/Downloads
#ln -s /data/home/Pictures /home/daniel/Pictures
#ln -s /data/.ssh /home/daniel/.ssh
#ln -s /opt/Android /home/daniel/Android
cp /data/home/.tmux /home/daniel

