#!/bin/bash
apt-get install curl python-setuptools -y
html=$(curl 'https://github.com/docker/compose/releases')
url=$(echo $html|grep -Po 'href="[^"]+"'|grep gz|head -n 1|sed -e 's/href="//;s/"//')
url="https://github.com$url"
curl -Lo docker-compose.tar.gz $url
rm docker-compose -rf
mkdir docker-compose
tar xf docker-compose.tar.gz -C docker-compose --strip-components=1
cd docker-compose
python setup.py install
rm docker-compose.tar.gz docker-compose -rf
