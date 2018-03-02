#!/bin/bash

DIR=`pwd`
echo $DIR

#cd sonarqube; wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-7.0.zip

# plugin 1
cd $DIR 
git clone https://github.com/Sagacify/sonar-scala.git
cd sonar-scala
git fetch origin  pull/23/head:p 
git checkout p 
mvn package -DskipTests
cp target/sonar-scala-plugin-0.1.0-SNAPSHOT.jar ../sonarqube

# plugin 2
cd $DIR 
git clone https://github.com/arthepsy/sonar-scala-extra.git
cd sonar-scala-extra
mvn package -DskipTests
cp sonar-scapegoat-plugin/target/sonar-scapegoat-plugin-1.3.1.jar ../sonarqube




