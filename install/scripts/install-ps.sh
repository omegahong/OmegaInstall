# deploy code 
mkdir /home/omega/apps/OmegaPs
cd /home/omega/apps/OmegaPs
jar -xvf /home/omega/install/apps/OmegaPs-3.0-SNAPSHOT.war
cp /home/omega/install/apps/ps.xml /home/omega/tomcat/conf/Catalina/localhost

# cp deploy script 
cp /home/omega/install/apps/bin/deployPs.sh /home/omega/bin

cd -
