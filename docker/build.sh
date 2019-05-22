#!/bin/bash

set -exu

export JOBS=4

cd /mapnik

dpkg-buildpackage

mv ../*.deb /pkgs

dpkg -i /pkgs/*.deb

apt update
apt install szn-mapnik-vector-tile-dev

export JOBS=8
export MAPNIK_POSTGIS_TESTS=f
export MAPNIK_VISUAL_TESTS=f

cd /python-mapnik

dpkg-buildpackage

mv ../*.deb /pkgs

