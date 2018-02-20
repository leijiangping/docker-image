FROM leijiangping/ubuntu:16.04
MAINTAINER leijiangping <leijiang21@126.com>
RUN sudo apt-get update && sudo apt-get install git -y
RUN wget \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    -qO- \
    "http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz" | sudo tar -zx -C /opt/
     
ENV JAVA_HOME /opt/jdk1.8.0_51
RUN echo "export JAVA_HOME=$JAVA_HOME" >> /home/user/.bashrc
ENV PATH $JAVA_HOME/bin:$PATH
RUN echo "export PATH=$PATH" >> /home/user/.bashrc
