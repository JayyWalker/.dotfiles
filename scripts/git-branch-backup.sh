#!/bin/bash

git branch backup/$(git rev-parse --abbrev-ref HEAD)--$(date "+%Y%m%d_%H%M")
