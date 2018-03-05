FROM leijiangping/ubuntu:16.04

MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update &&apt-get install wget -y  && apt-get install git -y gcc make

ENV FASTDFS_PATH=/opt/fdfs \
    FASTDFS_BASE_PATH=/var/fdfs \
    PORT= \
    GROUP_NAME= \
    TRACKER_SERVER=

#create the dirs to store the files downloaded from internet
RUN mkdir -p ${FASTDFS_PATH}/libfastcommon \
 && mkdir -p ${FASTDFS_PATH}/fastdfs \
 && mkdir ${FASTDFS_BASE_PATH}

#compile the libfastcommon
WORKDIR ${FASTDFS_PATH}/libfastcommon

RUN git clone --branch V1.0.36 --depth 1 https://github.com/happyfish100/libfastcommon.git ${FASTDFS_PATH}/libfastcommon \
 && ./make.sh \
 && ./make.sh install \
 && rm -rf ${FASTDFS_PATH}/libfastcommon

#compile the fastdfs
WORKDIR ${FASTDFS_PATH}/fastdfs

RUN git clone --branch V5.11 --depth 1 https://github.com/happyfish100/fastdfs.git ${FASTDFS_PATH}/fastdfs \
 && ./make.sh \
 && ./make.sh install \
 && rm -rf ${FASTDFS_PATH}/fastdfs


EXPOSE 22122 23000 8080 8888
VOLUME ["$FASTDFS_BASE_PATH", "/etc/fdfs"]   

COPY conf/*.* /etc/fdfs/

COPY start.sh /usr/bin/

#make the start.sh executable 
RUN chmod 777 /usr/bin/start.sh

ENTRYPOINT ["/usr/bin/start.sh"]
CMD ["tracker"]
