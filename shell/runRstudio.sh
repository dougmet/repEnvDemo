#!/bin/bash

docker run -d -p 8787:8787 -v $PWD:/home/rstudio/host dougmet/r-studio:3.1.2

