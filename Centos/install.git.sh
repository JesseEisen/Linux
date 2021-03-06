#!/bin/bash

sudo yum groupinstall "Development Tools"

sudo yum install zlib-devel perl-ExtUtils-MakeMaker asciidoc xmlto openssl-devel

wget -O git.zip https://github.com/git/git/archive/master.zip

unzip git.zip

cd git-master

make configure

./configure --prefix=/usr/local

make all doc

sudo make install install-doc install-html
