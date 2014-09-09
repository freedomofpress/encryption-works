#!/bin/bash

# stop script if any command fails
set -e

# create a directory for build artificats
mkdir build

# compile encryption_works.md with pandoc
pandoc -s -t html5 encryption_works.md > build/encryption_works.html
