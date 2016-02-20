

# OPTIONAL :: manual settings 

# set the tomcat memory settings in bin/catalina.sh
JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxPermSize=256m"

# for tomcat set ssl decoding fields on connector if necessary 



set up vhosts 
----------------
-uncomment this line in httpd.conf

Include conf/extra/httpd-vhosts.conf

- use the sample httpd-vhosts.conf and alter it as needed. 

cp /home/omega/install/apps/httpd-vhosts.conf /home/omega/apache/conf/extra


omegatron setup 
----------------

- install java 

- install tomcat 

