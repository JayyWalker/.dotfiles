#!/bin/bash

SELECTED_BRANCH=$1

git rev-parse --verify ${SELECTED_BRANCH} > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
    printf "Branch already exists"
fi

