FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

WORKDIR /root

# install storm
RUN wget http://mirrors.shu.edu.cn/apache/storm/apache-storm-1.2.1/apache-storm-1.2.1.tar.gz && \
    tar -xzvf apache-storm-1.2.1.tar.gz && \
    mv apache-storm-1.2.1 /usr/local/storm && \
    rm apache-storm-1.2.1.tar.gz

# set environment variable
ENV STORM_HOME /usr/local/storm
ENV PATH=$PATH:/usr/local/storm/bin

COPY conf/* $STORM_HOME/conf

RUN mkdir /storm

WORKDIR /root/storm

RUN mkdir /storm/data
RUN mkdir /storm/logs

EXPOSE 8080
