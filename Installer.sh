echo 'Copyright 2011 The LonghornLinux team ,distributed under the terms of the GNU General Public License'
echo 'Welcome to the Longhorn Transformation Pack for Linux'
echo 'Developed under the GNU licence by the longhorn linux team'
echo 'This is an unfinished testing product , and is not guarenteed to work properly'
echo 'if you have any emerald themes you wish to keep , they will be deleted in this installer so please backup your emerald directory now'
echo 'installer buildid : 1000'
echo 'TP Build ID : 3000'
echo 'you have about 10 seconds to cancel installation from now , or it will run automatically'
sleep 10
echo 'Installing PPAS , you may be prompted for your password'
echo 'The following PPAs will be added : gnomenu , elementarydesktop'
sudo apt-add-repository ppa:elementaryart/elementarydesktop
sudo apt-add-repository ppa:gnomenu-team/ppa
echo 'installing software'
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gnomenu emerald
echo 'Installing DWM Aero'
sleep 2
sudo dpkg -i gtk2-module-rgba_0.2-0ubuntu4~maverick1_i386.deb
sudo dpkg -i gtk2-engines-murrine_0.98.1.1-0ubuntu1_i386.deb
sudo dpkg -i gtk2-engines-murrine_0.98.1.1-1_i386.deb
echo 'Installing Icons'
cd icons
sudo cp -ap . /usr/share/icons
cd ..
cd cursor
sudo cp -ap . /usr/share/icons
cd ..
sudo mkdir /usr/share/sidebar
cd sidebar
sudo cp -ap . /usr/share/sidebar
cd ..
rm -rf $HOME/.emerald
mkdir $HOME/.emerald
cd emerald-decoration
sudo cp -ap . $HOME/.emerald
cd ..
cd togotohome
sudo cp -apfr . $HOME/
cd ..
cd themes
sudo cp -ap . /usr/share/themes
cd ..
cd screenlets
sudo cp -ap . /usr/share/screenlets
cd ..
cd fonts
sudo cp -ap . /usr/share/fonts/truetype
cd ..
cd gnomenu
cd Themes
cd Button
sudo cp -ap . /usr/share/gnomenu/Themes/Button
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install screenlets
echo 'Done'
cp -Rf togotohome $HOME
sleep 6
zenity --info --text='You Need to upgrade Nautilus from Synaptic. search for nautilus , then right click and hit upgrade'
sudo synaptic
zenity --info --text='It is highly recomended to enable proprietory graphics drivers and the compiz blur plugin to improve the look'






