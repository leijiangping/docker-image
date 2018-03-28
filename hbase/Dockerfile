FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>

RUN apt-get update 

ENV JAVA_HOME=/opt/jdk1.8.0_161

ENV HBASE_VERSION 1.2.6

ENV HBASE_URL http://mirror.bit.edu.cn/apache/hbase/stable/hbase-1.2.6-bin.tar.gz

ENV HBASE_HOME=/opt/hbase

RUN apt-get install  curl   -y

RUN curl -fSL $HBASE_URL -o /tmp/hbase.tar.gz \
    && tar -xvf /tmp/hbase.tar.gz -C /opt \
    && mv /opt/hbase-$HBASE_VERSION  $HBASE_HOME \
    && rm -f /tmp/hbase.tar.gz

COPY  conf/*    /opt/hbase/conf/

ENV PATH=$PATH:/opt/hbase/bin

# zookeeper
EXPOSE 2181
# HBase Master API port
EXPOSE 16000
# HBase Master Web UI
EXPOSE 16010
# Regionserver API port
EXPOSE 16020
# HBase Regionserver web UI
EXPOSE 16030

CMD hbase master start