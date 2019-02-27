#!/bin/sh

docker build -t mapnik-jessie -f jessie.Dockerfile .
docker build -t mapnik-stretch -f stretch.Dockerfile .
