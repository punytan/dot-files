#!/usr/bin/env bash

TARGET_VERSION="perl-5.28.1"
NCPU=`sysctl -n hw.ncpu`

curl -L https://install.perlbrew.pl | bash;

~/perl5/perlbrew/bin/perlbrew init;

source ~/perl5/perlbrew/etc/bashrc;

perlbrew install -j "$NCPU" "$TARGET_VERSION" &&

perlbrew switch "$TARGET_VERSION" &&

perlbrew install-cpanm

