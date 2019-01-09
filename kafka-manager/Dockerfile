FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

ENV JAVA_HOME=/opt/jdk1.8.0_191 \
    ZK_HOSTS=localhost:2181 \
    KM_VERSION=1.3.3.22 \
    KM_CONFIGFILE="conf/application.conf"

ADD start-kafka-manager.sh /kafka-manager-${KM_VERSION}/start-kafka-manager.sh

RUN mkdir /usr/local/kafka-manager-${KM_VERSION} && \
    wget -qO- "https://codeload.github.com/yahoo/kafka-manager/tar.gz/${KM_VERSION}" | tar -zx --strip-components=1 -C /usr/local/kafka-manager-${KM_VERSION}
    chmod +x /kafka-manager-${KM_VERSION}/start-kafka-manager.sh

WORKDIR /kafka-manager-${KM_VERSION}

EXPOSE 9000
ENTRYPOINT ["./start-kafka-manager.sh"]
