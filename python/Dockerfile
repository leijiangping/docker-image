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
RUN pip install --upgrade pip
RUN pip install  virtualenv
RUN pip install requests
RUN pip install numpy
RUN pip install scipy
RUN pip install matplotlib
RUN pip install tensorflow
RUN pip install sklearn
RUN pip install theano
RUN pip install nltk
RUN pip install opencv-python
RUN pip install test_helper
RUN pip install matplotlib


# Latest versions of python tools via pip3
RUN pip3 install --upgrade pip
RUN pip3 install  virtualenv
RUN pip3 install requests
RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install matplotlib
RUN pip3 install tensorflow
RUN pip3 install sklearn
RUN pip3 install theano
RUN pip3 install nltk
RUN pip3 install opencv-python
RUN pip3 install test_helper
RUN pip3 install matplotlib









