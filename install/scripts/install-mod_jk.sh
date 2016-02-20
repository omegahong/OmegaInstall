# build connector 
echo "Building connector..."
cd /home/omega/install/code/tomcat-connectors-1.2.32-src/native/

./configure --with-apxs=/home/omega/apache/bin/apxs

make clean 
make 

# copy to modules folder 
echo "Copying to modules dir..."
cp /home/omega/install/code/tomcat-connectors-1.2.32-src/native/apache-2.0/mod_jk.so /home/omega/apache/modules/
chmod 755 /home/omega/apache/modules/mod_jk.so 

# configure apache 
echo "Configuring apache..."
echo "LoadModule jk_module modules/mod_jk.so" >> /home/omega/apache/conf/httpd.conf
echo "JkWorkersFile conf/workers.properties" >> /home/omega/apache/conf/httpd.conf
echo "JkLogFIle /home/omega/apache/logs/mod_jk.log" >> /home/omega/apache/conf/httpd.conf
cp /home/omega/install/code/workers.properties /home/omega/apache/conf

# restart apache 
echo "Restarting apache..."
/home/omega/apache/bin/apachectl restart

cd /home/omega/install/scripts
