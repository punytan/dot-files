#!/usr/bin/env bash

apt-get update;
apt-get upgrade -f -y;

apt-get build-dep perl -y;
apt-get install build-essential ssh htop vim git-core tmux -y;
apt-get install unzip global ctags curl spell strace sysstat tree -y;
apt-get install libpcre3-dev libssl-dev expat libexpat1-dev libxml2-dev libjpeg8-dev libgif-dev libpng12-dev -y;
apt-get install daemontools-run -y;
apt-get install arno-iptables-firewall -y;

