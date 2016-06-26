sudo -s
	
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:webupd8team/sublime-text-3

apt-get update
apt-get dist-upgrade -y

apt-get install oracle-java8-installer -y
apt-get install sublime-text-installer -y

#Improve overall system performance
echo vm.swappiness = 10 >> /etc/sysctl.conf
echo vm.vfs_cache_pressure = 50 >> /etc/sysctl.conf

reboot