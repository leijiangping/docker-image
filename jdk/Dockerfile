FROM leijiangping/ubuntu:16.04
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update &&apt-get install wget -y  && apt-get install git -y
RUN wget \
    --tries=3 \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    -qO- \
    "https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz?AuthParam=1546669202_acb0c3bf2a59ecce94ce7b786c250fd5" | tar -zx -C /opt/
     
ENV JAVA_HOME /opt/jdk1.8.0_191
ENV PATH $JAVA_HOME/bin:$PATH






