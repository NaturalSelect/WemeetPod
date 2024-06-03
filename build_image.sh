#!/bin/bash

source prepare.sh

docker build . -t naturalselect/wemeetpod:${TAG}