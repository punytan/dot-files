#!/usr/bin/env bash

# server
apt-get install nginx -y;
apt-get install mysql-server-5.1 libmysqld-dev -y;

# Kyoto Tycoon
cd /tmp && wget http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.51.tar.gz && tar zxvf kyotocabinet-1.2.51.tar.gz && cd kyotocabinet-1.2.51 && ./configure && make && make check && make install;

cd /tmp && wget http://fallabs.com/kyototycoon/pkg/kyototycoon-0.9.38.tar.gz && tar zxvf kyototycoon-0.9.38.tar.gz && cd kyototycoon-0.9.38 && ./configure && make && make check && make install;

