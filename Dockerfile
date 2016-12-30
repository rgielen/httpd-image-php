FROM rgielen/httpd-image-simple:15.10
MAINTAINER "Rene Gielen" <rgielen@apache.org>

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
        php5-gd \
        php5-curl \
        libapache2-mod-php5 \
        libssh2-php \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/* \
      && rm -rf /tmp/* \
      && a2enmod php5

