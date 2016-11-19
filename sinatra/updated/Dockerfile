FROM centos:6.8

USER root

RUN yum install -y nano && yum install -y wget

RUN yum groupinstall "Development tools" -y

RUN yum install -y gcc-c++ glibc-headers openssl openssl-devel readline libyaml-$

WORKDIR /home

RUN wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz

RUN tar xvfvz ruby-2.1.2.tar.gz

WORKDIR /home/ruby-2.1.2

RUN ./configure

RUN make

RUN make install

RUN yum install -y postgresql-devel
