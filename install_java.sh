#!/bin/bash
# Install Java
export JAVA_PKG=openjdk-11+28_linux-x64_bin.tar.gz
wget https://download.java.net/openjdk/jdk11/ri/$JAVA_PKG
sudo mkdir /opt/java
sudo tar -xvf $JAVA_PKG --directory /opt/java

##Install maven \
export MAVEN_PKG=apache-maven-3.8.6-bin.tar.gz
wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/$MAVEN_PKG
sudo mkdir /opt/maven
sudo tar -xvf $MAVEN_PKG --directory /opt/maven

## Setting up path
export export_path="$HOME/.oh-my-zsh/lib/oh-my-export.zsh"
echo "export JAVA_JDK=\"/opt/java/jdk-11\"" >> $export_path
echo "export #Setting java path" >> $export_path
echo "export JAVA_HOME=\"/opt/java/jdk-11\"" >> $export_path
echo "export PATH=\"\$JAVA_HOME/bin:\$PATH\"" >> $export_path
echo "export M2_HOME=/opt/maven/apache-maven-3.8.6" >> $export_path
echo "export PATH=\"\$M2_HOME/bin:\$PATH\"" >> $export_path

echo "JAVA VERSION $JAVA_HOME"
echo "MAVEN INSTALLED" && mvn -version
