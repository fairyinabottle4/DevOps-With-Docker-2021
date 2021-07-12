#!/bin/bash

git clone https://github.com/docker-hy/docker-hy.github.io

cd docker-hy.github.io

docker build . -t fairyinabottle4/coursepage:3-2

docker login

docker push fairyinabottle4/coursepage:3-2

