FROM openjdk:8

ADD sonarqube-7.0.zip /usr/src
RUN unzip /usr/src/sonarqube-7.0.zip -d /usr/src
COPY sonar.properties /usr/src/sonarqube-7.0/conf
COPY run.sh /usr/src/sonarqube-7.0/bin
COPY sonar-scapegoat-plugin-1.3.1.jar /usr/src/sonarqube-7.0/extensions/plugins
COPY sonar-scala-plugin-0.1.0-SNAPSHOT.jar /usr/src/sonarqube-7.0/extensions/plugins

RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube

RUN chmod +x /usr/src/sonarqube-7.0/bin/run.sh
RUN chown -R sonarqube:sonarqube /usr/src/sonarqube-7.0

EXPOSE 9000

USER sonarqube
CMD /usr/src/sonarqube-7.0/bin/run.sh
