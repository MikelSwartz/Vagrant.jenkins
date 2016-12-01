#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git

yum install -y java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install -y jenkins
service jenkins start
if [ -f "/vagrant/apache-maven-3.3.9-bin.tar.gz" ]
then
	echo apache-maven-3.3.9-bin.tar.gz exists
else
	wget http://shinyfeather.com/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
#	wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
fi
tar xzf /vagrant/apache-maven-3.3.9-bin.tar.gz -C /usr/local
cd /usr/local
sudo ln -s apache-maven-3.3.9 maven
JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk.x86_64
M2_HOME=/usr/local/maven
PATH=${M2_HOME}/bin:$JAVA_HOME/bin:${PATH}
printf "export JAVA_HOME=${JAVA_HOME}\nexport M2_HOME=/usr/local/maven\nexport PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/maven.sh
printf "export JAVA_HOME=${JAVA_HOME}\nexport M2_HOME=/usr/local/maven\nexport PATH=${M2_HOME}/bin:${PATH}" > /home/vagrant/.profile
