#!/bin/bash

# Usage: git create <directory>

if [[ $1 == "" ]]; then
    echo "No directory given"

    exit 1
fi

read -p "Project name" projectName


mkdir $1 && cd $_

git init

printf $projectName > README.md

