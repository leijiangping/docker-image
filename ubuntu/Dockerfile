FROM ubuntu:16.04
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update &&apt-get install wget -y  && apt-get install git -y
RUN apt-get install inetutils-ping  -y 
RUN apt-get install net-tools  
RUN apt-get install vim  -y 
RUN apt-get install -y lrzsz
RUN apt-get install -y tzdata
RUN echo "Asia/Shanghai" > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG C.UTF-8





