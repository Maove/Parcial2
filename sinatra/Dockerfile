FROM ubuntu_updated:latest

#FROM centos:6.8

#USER root

#RUN yum install -y nano && yum install -y wget

#RUN yum groupinstall "Development tools" -y

#RUN yum install -y gcc-c++ glibc-headers openssl openssl-devel readline libyaml-devel readline-devel zlib zlib-devel

#WORKDIR /home

#RUN wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz

#RUN tar xvfvz ruby-2.1.2.tar.gz

#WORKDIR /home/ruby-2.1.2

#RUN ./configure

#RUN make

#RUN make install

#RUN yum install -y postgresql-devel

#RUN yum install -y rvm && rvm reinstall 1.9.3

RUN gem update --system

RUN gem install bundler --no-ri --no-rdoc

RUN gem install foreman --no-ri --no-rdoc

RUN gem install pg

EXPOSE 5000

#RUN iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 5000 -j ACCEPT

#RUN service iptables save

COPY main.rb /home/main.rb

COPY Gemfile /home/Gemfile

COPY Procfile /home/Procfile

WORKDIR /home

RUN bundle install

CMD foreman start
