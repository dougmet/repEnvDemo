#!/bin/bash

docker run -p 8888:8888 -it -v $PWD:/home/condauser/notebooks/host rothnic/anaconda-notebook

