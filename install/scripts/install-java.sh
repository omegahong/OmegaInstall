# 64 bit
JDK=jdk-8u66-linux-x64.tar.gz
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CODE_DIR=$SCRIPTS_DIR/../code
JAVA_DIR=$SCRIPTS_DIR/../../java

#Download JDK if requried
$SCRIPTS_DIR/download-java.sh

#Unzip the jdk to the right folder
cd $CODE_DIR
tar -zxf $JDK
cp -rf $CODE_DIR/jdk1.8.0_66/ $JAVA_DIR

#echo 'export JAVA_HOME=/home/omega/java' >> ~/.bash_profile && echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bash_profile  && source ~/.bash_profile
