FROM leijiangping/ubuntu:16.04
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update &&apt-get install wget -y  && apt-get install git -y
RUN wget \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    -qO- \
    "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz?AuthParam=1519122570_c335a7a01325eae4a791919f3858a183" | tar -zx -C /opt/
     
ENV JAVA_HOME /opt/jdk1.8.0_161
RUN echo "export JAVA_HOME=$JAVA_HOME" >> /home/user/.bashrc
ENV PATH $JAVA_HOME/bin:$PATH
RUN echo "export PATH=$PATH" >> /home/user/.bashrc
