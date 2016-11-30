#!/bin/bash
cd /vagrant/
yum update
yum install -y vim java git
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install -y jenkins
service jenkins start
JAVA_HOME=/usr/java/jdk1.7.0_60
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH

