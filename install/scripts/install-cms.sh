# deploy code 
mkdir /home/omega/apps/OmegaCms
cd /home/omega/apps/OmegaCms 
jar -xvf /home/omega/install/apps/OmegaCms-3.0-SNAPSHOT.war
cp /home/omega/install/apps/j.xml /home/omega/tomcat/conf/Catalina/localhost

# cp deploy script 
cp /home/omega/install/apps/bin/deployCms.sh /home/omega/bin

cd -
