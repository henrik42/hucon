#!/bin/bash

##
## Build documentation with Docker.
##
## When you're not working on Linux you can still generate the HuCon
## documentation using Docker.
##
## https://www.mkdocs.org/
## https://wiki.ubuntuusers.de/pip/
##
## $ apt-get install python
## $ apt-get install python-pip
## $ pip install mkdocs


# TBD: volume bind-mount
# TBD: passendes Docker Image finden
# 

docker run --rm -v %CD%:/workdir mkdocs:1 bash -c "cd /workdir; ./build_doc.sh"
