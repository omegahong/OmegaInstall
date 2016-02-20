#dvariables
HOME=/home/omega
INSTALL_DIR=$HOME/install
TOMCAT_TARGET_INSTALL_DIRECTORY=$HOME/tomcat
TOMCAT_DIRECTORY_OLD=$HOME/tomcat_old
TOMCAT_FOLDER=apache-tomcat-8.0.28
TOMCAT_ZIP=$INSTALL_DIR/code/"$TOMCAT_FOLDER.tar.gz"
TOMCAT_UNZIP_FOLDER=$INSTALL_DIR/code/$TOMCAT_FOLDER


if [ -d "$TOMCAT_TARGET_INSTALL_DIRECTORY" ]; then
  echo "Move existing tomcat directory to tomcat_old..."
  mv $TOMCAT_TARGET_INSTALL_DIRECTORY $TOMCAT_DIRECTORY_OLD
fi

if [ ! -f "$TOMCAT_ZIP" ]; then
  # Create new directory if not found
  echo "Tomcat zip $TOMCAT_ZIP does not exist..."
fi

# Create new directory if not found
echo "changing directory to $HOME"
cd $HOME

echo "unzip $TOMCAT_ZIP"
tar -xvf $TOMCAT_ZIP

mv $HOME/$TOMCAT_FOLDER $TOMCAT_TARGET_INSTALL_DIRECTORY
echo "Moving $HOME/$TOMCAT_FOLDER to $TOMCAT_TARGET_INSTALL_DIRECTORY"

# copy the setenv.sh over to tomcat/bin folder
echo "copy $INSTALL_DIR/apps/bin/setenv.sh to $TOMCAT_TARGET_INSTALL_DIRECTORY/bin/setenv.sh"
cp $INSTALL_DIR/apps/bin/setenv.sh $TOMCAT_TARGET_INSTALL_DIRECTORY/bin/setenv.sh

# copy the general_error.html over to ROOT folder
echo "copy $INSTALL_DIR/code/general-error.html $TOMCAT_TARGET_INSTALL_DIRECTORY/webapps/ROOT/general-error.html"
cp $INSTALL_DIR/code/general-error.html $TOMCAT_TARGET_INSTALL_DIRECTORY/webapps/ROOT/general-error.html

# update web.xml for general error handling
echo "copy $INSTALL_DIR/code/web.xml $TOMCAT_TARGET_INSTALL_DIRECTORY/conf/web.xml"
cp $INSTALL_DIR/code/web.xml $TOMCAT_TARGET_INSTALL_DIRECTORY/conf/web.xml
# change port to 8081
#sed -i -e 's/8080/8081/g' /home/omega/tomcat/conf/server.xml

echo "copy $INSTALL_DIR/code/server.xml $TOMCAT_TARGET_INSTALL_DIRECTORY/conf/server.xml"
cp $INSTALL_DIR/code/server.xml $TOMCAT_TARGET_INSTALL_DIRECTORY/conf/server.xml

