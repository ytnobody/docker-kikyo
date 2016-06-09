FROM ytnobody/alpine-perl
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apk update && apk add mariadb-dev mysql-client

WORKDIR /root
RUN git clone https://github.com/ytnobody/Kikyo.git kikyo

WORKDIR /root/kikyo
RUN git submodule update --init
RUN cpm install
RUN cpm install Starlet Server::Starter

ENV KIKYO_DSN=dbi:mysql:host=172.17.42.1;database=kikyo
ENV PERL5LIB=/root/kikyo/local/lib/perl5
ENV PATH=/root/kikyo/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 8901

CMD start_server --port 8901 -- plackup -s Starlet -E production --max-woekers=16 --max-keepalive-reqs=1 --max-reqs-per-child=10000 -a app.psgi
