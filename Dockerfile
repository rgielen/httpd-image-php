FROM rgielen/httpd-image-simple:15.10
MAINTAINER "Rene Gielen" <rgielen@apache.org>

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
        php5-gd \
        php5-curl \
        libapache2-mod-php5 \
        libssh2-php \
      && a2enmod php5

