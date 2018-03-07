FROM leijiangping/ubuntu:16.04
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update &&apt-get install wget -y  && apt-get install git -y

RUN apt-get update && apt-get install -y \ 
    build-essential \
    python3 \
    python \
    python3-dev \
    python-dev \
    libxml2-dev \
    libxslt-dev \
    libssl-dev \
    zlib1g-dev \
    libyaml-dev \
    libffi-dev \
    python-pip \
    python3-pip

# Latest versions of python tools via pip
RUN pip install --upgrade pip \
                        virtualenv \
                        requests \
			numpy \
			scipy \
			matplotlib \
			tensorflow \
			sklearn \
			theano \
			nltk \
			opencv-python \
			test_helper \
			matplotlib \
			pyspark \
			supervisor \
			mysql-server \
			libmysqlclient-dev \
RUN pip3 install virtualenv \
	requests \
	numpy \
	scipy \
	matplotlib \
	tensorflow \
	sklearn \
	theano \
	nltk \
	opencv-python \
	test_helper \
	matplotlib \
	pyspark \
	supervisor \
	mysql-server \
	libmysqlclient-dev \







