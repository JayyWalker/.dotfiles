#!/usr/bin/env bash

set -xe

FILE=$1

tar -cjf "$1.tar.bzip" $1

rm -rf $1

