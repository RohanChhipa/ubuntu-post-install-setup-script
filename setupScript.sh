

echo "*********************************************"
echo -e "   \e[93mWelcome to the Ubuntu Software install\e[39m"
echo "*********************************************"
echo -e "Please note that this script needs sudo permissions"
echo -e " and will \e[41mautomatically reboot\e[49m once completed."

echo -e "\e[34mPress [c] to continue ...\e[39m"

while :
do
	read -t 1 -n 1 key
	
	if [[ $key = c ]]
	then
		break
	fi
done
echo ""
sudo echo "sudo permissions detected ..."
echo ""
echo "Creating temporary files ..."
mkdir .tmpDir
cd .tmpDir/

echo -e "\e[1mProcess will now start :)\e[0m"
### ==============      Commands       ====================

#Essentials XD
echo -e "\e[36mSetting up Essentials XD \e[39m"
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

sudo apt-get update
sudo apt-get dist-upgrade -y

#Compilers
echo -e "\e[36mSetting up Compilers \e[39m"
sudo apt-get install oracle-java8-installer -y
sudo apt-get install gcc -y
sudo apt-get install yasm -y


#Compression algorithms
echo -e "\e[36mSetting up Compression algorithms \e[39m"
sudo apt-get install rar bzip2 zip p7zip  -y

#Package managers
echo -e "\e[36mSetting up Package managers \e[39m"
sudo apt-get install gdebi -y

# apt-get install synaptic -y


#Tex editor along with most of the important LaTex files
echo -e "\e[36mSetting up LaTeX editor XD \e[39m"
sudo apt-get install kile -y

#Text Editors
echo -e "\e[36mSetting up Text Editors \e[39m"
sudo apt-get install sublime-text-installer -y
sudo apt-get install scite -y

#Media
echo -e "\e[36mSetting up Media Essentials XD \e[39m"
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install vlc -y

sudo apt-get install git
sudo apt-get install git-flow
sudo apt-get install chromium-browser -y
	
#Maven install (This link might need to be updated from time to time)
echo -e "\e[36mSetting up Maven \e[39m"
wget http://apache.saix.net/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
sudo tar -xzvf apache-maven-3.3.9-bin.tar.gz -C /opt/
sudo ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
sudo chmod 755 /usr/local/bin/mvn

#set the JAVA_HOME for maven 
echo -e "\e[36mConfiguring Java 8 \e[39m"
echo JAVA_HOME="/usr/lib/jvm/java-8-oracle/" >> /etc/environment
source /etc/environment

#Improve overall system performance
echo -e "\e[36mImproving System Performance \e[39m"
echo vm.swappiness = 10 >> /etc/sysctl.conf
sudo apt-get install preload -y


echo -e "\e[92mCleaning Up XD \e[39m"
sudo apt-get autoremove -y
sudo apt-get autoclean -y







### =======================================================

echo "Removing temporary files ..."
cd ..
rm -rf .tmpDir

echo ""
echo "==============================================="
echo -e "           \e[32mCOMPLETED -> REBOOTING .....\e[39m"
echo "==============================================="
reboot
