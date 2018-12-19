FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

ENV CATALINA_HOME /usr/local/tomcat8
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir /usr/local/tomcat8 && \
    wget -qO- "https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz" | tar -zx --strip-components=1 -C /usr/local/tomcat8

ENV M2_HOME /usr/local/maven3   
ENV PATH $M2_HOME/bin:$PATH
RUN mkdir -p /usr/local/maven3 && \
    wget -qO- "https://archive.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz" | tar -zx --strip-components=1 -C /usr/local/maven3

EXPOSE 8080
CMD ["catalina.sh", "run"]
