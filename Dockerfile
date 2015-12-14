FROM rgielen/httpd-image-simple
MAINTAINER "Rene Gielen" <rgielen@apache.org>

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
        php5-gd \
        php5-curl \
        libssh2-php 

