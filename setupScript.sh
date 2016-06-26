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

apt-get install scite -y

apt-get install gcc -y
	
#Maven install (This link might need to be updated from time to time)
wget http://apache.saix.net/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -xzvf apache-maven-3.3.9-bin.tar.gz -C /opt/
#mv apache-maven-3.3.9 /opt/
ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
chmod 755 /usr/local/bin/mvn

#set the JAVA_HOME for maven 
echo JAVA_HOME="/usr/lib/jvm/java-8-oracle/" >> /etc/environment
source /etc/environment

#Improve overall system performance
echo vm.swappiness = 10 >> /etc/sysctl.conf
echo vm.vfs_cache_pressure = 50 >> /etc/sysctl.conf

apt-get autoremove
apt-get autoclean

cd ..
reboot