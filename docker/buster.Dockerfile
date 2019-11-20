FROM docker.dev.dszn.cz/debian:buster-stable

RUN echo >> /etc/apt/sources.list
RUN echo "deb http://repo.dev.dszn.cz/repo/buster-dev buster-dev main" >> /etc/apt/sources.list
RUN echo >> /etc/apt/sources.list
RUN echo "deb http://repo.dev.dszn.cz/repo/buster-testing buster-testing main" >> /etc/apt/sources.list

RUN apt-get update && \
        apt-get install -y \
            dpkg-dev \
            pbuilder \
            git \
            aptitude \
            build-essential \
            curl \
            pkgconf \
            g++ \
            make \
            debhelper \
            fonts-dejavu \
            zlib1g-dev \
            libboost-thread-dev \
            libboost-filesystem-dev \
            libboost-regex-dev \
            libboost-system-dev \
            libboost-program-options-dev \
            libboost-python-dev \
            libwebp-dev \
            libpng-dev \
            libjpeg-dev \
            libtiff-dev \
            libharfbuzz-dev \
            libfreetype6-dev \
            libpq-dev \
            libproj-dev \
            libgdal-dev \
            libgdal20 \
            libxml2-dev \
            libicu-dev \
            libcairo2-dev \
            libsqlite3-dev \
            libcurl4-gnutls-dev \
            libxslt-dev \
            libprotobuf-dev \
            dh-python \
            python-all-dev \
            python-setuptools \
            python-cairo \
            python-cairo-dev \
            python-nose \
            python3-all-dev \
            python3-setuptools \
            python3-cairo \
            python3-cairo-dev \
            python3-nose \
            szn-libmapbox-variant-dev \
            szn-libmapbox-geometry-dev \
            szn-libprotozero-dev \
            szn-libwagyu-dev \
            szn-mapnik-vector-tile-dev \
            szn-libcairo \
            szn-libfreetype \
            sudo


COPY build.sh /

ENTRYPOINT /build.sh
