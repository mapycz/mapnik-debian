#!/bin/sh

docker build --no-cache -t mapnik-jessie -f jessie.Dockerfile .
docker build --no-cache -t mapnik-stretch -f stretch.Dockerfile .
docker build --no-cache -t mapnik-buster -f buster.Dockerfile .
