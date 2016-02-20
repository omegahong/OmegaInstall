#
# main install script for red hat/centos 
#

# following vars must be set in order to install 
DRUPAL_DB="omega_drup"
SCRIPT_DIR="/home/omega/install/scripts"

# untar all the code 
cd /home/omega/install/code
for i in *.tar.gz; do tar -xvf $i; done

cd /home/omega 

echo "*******************************************"
echo "making directories"
echo "*******************************************"
mkdir temp logs apps uploads bin

echo "*******************************************"
echo "installing packages"
echo "*******************************************"
# redhat 
sudo yum install -y libxml2-devel libxslt-devel zlib zlib-devel
sudo yum install -y mysql-server mysql-client mysql-devel
sudo yum install -y gcc gcc-c++ kernel-devel gd libpng-devel libjpeg-devel

# debian/ubuntu
# sudo apt-get install libxml2-dev libxslt-dev zlibc zlib1g-dev
# sudo apt-get install mysql-server mysql-client libmysqlclient-dev
# sudo apt-get install  
# sudo apt-get install build-essential


echo "*******************************************"
echo "starting mysql"
echo "*******************************************"
sudo /etc/init.d/mysqld start 
# disable this part for now, may need to call separate script 
#mysql -u root 
#create database $DRUPAL_DB
#GRANT ALL PRIVILEGES ON *.* TO 'drupal'@'localhost'  IDENTIFIED BY 'drupal' WITH GRANT OPTION;
#GRANT ALL PRIVILEGES ON *.* TO 'drupal'@'%'  IDENTIFIED BY 'drupal' WITH GRANT OPTION;
#exit; 

# this may work 
#mysql -u root -e "create database $DRUPAL_DB"

echo "*******************************************"
echo "installing free tds"
echo "*******************************************"
SCRIPT_DIR/install-freetds.sh

echo "*******************************************"
echo "install apache"
echo "*******************************************"
SCRIPT_DIR/install-apache.sh

echo "*******************************************"
echo "install php"
echo "*******************************************"
SCRIPT_DIR/install-php.sh

echo "*******************************************"
echo "configuring apache for php "
echo "*******************************************"
SCRIPT_DIR/configure-apache.sh

echo "*******************************************"
echo "installing java "
echo "*******************************************"
SCRIPT_DIR/install-java.sh


echo "*******************************************"
echo "installing tomcat "
echo "*******************************************"
SCRIPT_DIR/install-tomcat.sh

echo "*******************************************"
echo "installing mod_jk"
echo "*******************************************"
SCRIPT_DIR/install-mod_jk.sh



