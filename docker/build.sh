#!/bin/bash

set -exu

export JOBS=4

cd /mapnik

dpkg-buildpackage

mkdir -p pkgs
mv ../*.deb pkgs

dpkg -i /mapnik/pkgs/*.deb

apt install szn-mapnik-vector-tile-dev

export JOBS=8

cd /python-mapnik

dpkg-buildpackage

mkdir -p pkgs
mv ../*.deb pkgs

