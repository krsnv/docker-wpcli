FROM ubuntu:16.04

LABEL maintainer="v@krsnv.ru"
LABEL version="1.0"

RUN apt-get update -qq && \
    apt-get install wget php-cli less -y && \
    wget -O /usr/sbin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/sbin/wp

WORKDIR /app

ENTRYPOINT ["wp", "--allow-root"]