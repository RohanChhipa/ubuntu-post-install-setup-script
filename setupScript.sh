sudo -s

mkdir .tmpDir
cd .tmpDir/

#Essentials XD
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:webupd8team/sublime-text-3

apt-get update
apt-get dist-upgrade -y

apt-get install oracle-java8-installer -y
apt-get install sublime-text-installer -y

apt-get install gdebi -y

apt-get install kile -y
	
#Maven install (This link might need to be updated from time to time)
wget http://apache.saix.net/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar xzvf apache-maven-3.3.9-bin.tar.gz
mv apache-maven-3.3.9 /opt/
ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
chmod 755 /usr/local/bin/mvn

#Improve overall system performance
echo vm.swappiness = 10 >> /etc/sysctl.conf
echo vm.vfs_cache_pressure = 50 >> /etc/sysctl.conf

apt-get autoremove
apt-get autoclean

cd ..
reboot