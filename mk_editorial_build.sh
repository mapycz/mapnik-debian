#!/bin/bash

set -o errexit
set -o nounset

revision=$1

sed -i "s/) Seznam/~editorial-${revision}) Seznam/" changelog
sed -i "s/editorial-1/editorial-${revision}/" ../include/mapnik/version.hpp
