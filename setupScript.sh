sudo -s

mkdir .tmpDir
cd .tmpDir/

#Essentials XD
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:webupd8team/sublime-text-3

apt-get update
apt-get dist-upgrade -y

#Compilers
apt-get install oracle-java8-installer -y
apt-get install gcc -y
apt-get install yasm -y

#Compression algorithms
apt-get install rar bzip2 zip p7zip  -y

#Package managers
apt-get install gdebi -y
# apt-get install synaptic -y

#Tex editor along with most of the important LaTex files
apt-get install kile -y

#Text Editors
apt-get install sublime-text-installer -y
apt-get install scite -y

apt-get install chromium-browser -y
	
#Maven install (This link might need to be updated from time to time)
wget http://apache.saix.net/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -xzvf apache-maven-3.3.9-bin.tar.gz -C /opt/
ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
chmod 755 /usr/local/bin/mvn

#set the JAVA_HOME for maven 
echo JAVA_HOME="/usr/lib/jvm/java-8-oracle/" >> /etc/environment
source /etc/environment

#Improve overall system performance
echo vm.swappiness = 10 >> /etc/sysctl.conf
echo vm.vfs_cache_pressure = 50 >> /etc/sysctl.conf

apt-get autoremove -y
apt-get autoclean -y

cd ..
rm -rf .tmpDir

reboot