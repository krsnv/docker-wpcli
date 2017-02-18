FROM ubuntu:16.04
MAINTAINER Vladimir Krasnov <v@krsnv.ru>

RUN apt-get update -qq && apt-get install wget php-cli less -y
RUN wget -O /usr/sbin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/sbin/wp

WORKDIR /wpcli

ENTRYPOINT ["wp"]
CMD ["--allow-root"]
