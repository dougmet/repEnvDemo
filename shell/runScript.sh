#!/bin/bash

# In Windows (gitbash) you'll need to replace $PWD with something like:
# //c/Users/USERNAME/path/to/project

docker run --rm -v $PWD:/home/docker/host repenv Rscript /home/docker/host/script.R

