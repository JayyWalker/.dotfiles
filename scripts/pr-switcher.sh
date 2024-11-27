#!/bin/bash

set -x

current_directory=$(basename "$PWD")

if [[ "$current_directory" != "cp2-api" ]]; then
    echo "Current folder is not cp2-api"
exit
fi

echo "should be here if right dir"

gh pr checkout $1

npm ci

npm run build

docker compose up --build --force-recreate -d

npx prisma migrate reset --force
