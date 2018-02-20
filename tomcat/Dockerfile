FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

ENV CATALINA_HOME /usr/local/tomcat8
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir /usr/local/tomcat8 && \
    wget -qO- "http://mirrors.hust.edu.cn/apache/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz" | tar -zx --strip-components=1 -C /usr/local/tomcat8 && \
    rm -rf /usr/local/tomcat8/webapps/*
     
ENV M2_HOME /usr/local/maven3   
ENV PATH $M2_HOME/bin:$PATH
RUN mkdir -p /usr/local/maven3 && \
    wget -qO- "http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz" | tar -zx --strip-components=1 -C /usr/local/maven3

EXPOSE 8080
CMD ["catalina.sh", "run"]