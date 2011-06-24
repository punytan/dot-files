#!/usr/bin/env bash

curl -L http://xrl.us/perlbrewinstall | bash;

~/perl5/perlbrew/bin/perlbrew init;

source ~/perl5/perlbrew/etc/bashrc;

perlbrew install -j 5 perl-5.12.4 &&

perlbrew switch perl-5.12.4 &&

perlbrew install-cpanm

