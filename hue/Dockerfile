FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>

RUN apt-get update -y

RUN apt-get install -y software-properties-common
RUN apt-get update -y

RUN apt-get install --fix-missing -q -y \
  git \
  ant \
  gcc \
  g++ \
  libkrb5-dev \
  libmysqlclient-dev \
  libssl-dev \
  libsasl2-dev \
  libsasl2-modules-gssapi-mit \
  libsqlite3-dev \
  libtidy-0.99-0 \
  libxml2-dev \
  libxslt-dev \
  libffi-dev \
  make \
  maven \
  libldap2-dev \
  python-dev \
  python-setuptools \
  libgmp3-dev \
  libz-dev

RUN git clone https://github.com/cloudera/hue.git
WORKDIR hue
RUN make apps
EXPOSE 8888
VOLUME /hue/desktop/
CMD ["build/env/bin/hue", "runserver_plus", "0.0.0.0:8888"]