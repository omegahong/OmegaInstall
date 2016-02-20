# sudo rpm --install install/code/rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm
sudo rpm --install install/code/rpmforge-release-0.5.2-2.el5.rf.i386.rpm 
# You may need this 
#wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
#sudo rpm -ivh epel-release-6-8.noarch.rpm

sudo yum install freetds freetds-devel --enablerepo=rpmforge

#cd /usr/lib
#sudo ln -s /usr/lib64/libtds.so
#sudo ln -s /usr/lib64/libtds.so.5
#sudo ln -s /usr/lib64/libtds.so.5.0.0
#sudo ln -s /usr/lib64/libsybdb.so.5
#sudo ln -s /usr/lib64/libsybdb.so.5
#sudo ln -s /usr/lib64/libsybdb.so.5.0.0 
