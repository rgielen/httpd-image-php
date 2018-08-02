FROM rgielen/httpd-image-simple:18.04
MAINTAINER "Rene Gielen" <rgielen@apache.org>

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
        php-gd \
        php-curl \
        libapache2-mod-php \
        php-ssh2 \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/* \
      && rm -rf /tmp/* \
      && a2enmod php7.1

