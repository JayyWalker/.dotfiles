#!/usr/bin/env bash

if [[ -z $1 ]]; then
    echo 'No URL given'
    exit 0
fi

Url=$1
UrlLength=${#Url}

FileExtension=${1:(UrlLength - 3)}

if [[ ${FileExtension} == 'zip' ]]; then
    TempFile=temp.zip
    wget ${Url} -O ${TempFile}; unzip ${TempFile}; rm ${TempFile}
elif [[ ${FileExtension} == '.gz' ]]; then
    TempFile=temp.tar.gz
    wget ${Url} -O ${TempFile}; tar -xvf ${TempFile}; rm ${TempFile}
elif [[ ${FileExtension} == '.tar' ]]; then
    TempFile=temp.tar
    wget ${Url} -O ${TempFile}; tar -xvf ${TempFile}; rm ${TempFile}
fi

