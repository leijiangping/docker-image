FROM leijiangping/dnsmasq
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

ARG SERF_VERSION=1.3.9

ENV PATH $PATH:/


WORKDIR /

RUN set -euxo pipefail && \
    apk add --no-cache wget unzip ca-certificates && \
    wget -t 100 --retry-connrefused -O "serf-${SERF_VERSION}.zip" "https://archive.apache.org/dist/serf/serf-${SERF_VERSION}.zip"
    rm -fv "serf-${SERF_VERSION}.zip" && \
    apk del wget unzip ca-certificates

EXPOSE 7946 7373

ENTRYPOINT ["/serf"]
