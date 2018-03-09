FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 
RUN apt-get install  dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]