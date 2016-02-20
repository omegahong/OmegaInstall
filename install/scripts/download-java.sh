JDK=jdk-8u66-linux-x64.tar.gz
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CODE_DIR=$SCRIPTS_DIR/../code
echo "*******************************************"
echo "Downloading  $JDK to  $CODE_DIR"
echo "*******************************************"

wget -nc -P $CODE_DIR --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u66-b17/$JDK"
