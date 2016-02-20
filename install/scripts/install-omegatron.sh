

WAR_FILE=$1

echo "War file is $WAR_FILE"

if [ -z $WAR_FILE ]; then 
	echo "War file is not defined. Exiting..."
	exit
fi 

# deploy code 
mkdir /home/omega/apps/OmegaTron
cd /home/omega/apps/OmegaTron
jar -xvf $WAR_FILE
cp /home/omega/install/apps/omegatron.xml /home/omega/tomcat/conf/Catalina/localhost

# cp deploy script 
cp /home/omega/install/apps/bin/deployOmegaTron.sh /home/omega/bin
