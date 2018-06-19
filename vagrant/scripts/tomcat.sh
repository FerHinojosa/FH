#!/usr/bin/env bash

add-apt-repository ppa:openjdk-r/ppa -y
apt-get update
echo "\n----- Installing Apache and Java 8 ------\n"
apt-get -y install apache2 openjdk-8-jdk
update-alternatives --config java
echo "\n----- Installing Tomcat ------\n"
groupadd tomcat
apt-get -y install tomcat8
apt-get install tomcat8-docs tomcat8-examples tomcat8-admin
service tomcat8 status


