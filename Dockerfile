FROM    ubuntu:18.04
MAINTAINER  James Legg

RUN export DEBIAN_FRONTEND=noninteractive && \
apt-get update && \
apt-get -y install \
 curl \
 mongodb-clients \
 python-dev \
 python-setuptools \
 python-pip && \
pip install virtualenv tox && \
virtualenv /venv && \
mkdir /shardmonster

WORKDIR /shardmonster
CMD ["/bin/bash", "-c", "while :; do echo 'Hit CTRL+C'; sleep 10; done"]
