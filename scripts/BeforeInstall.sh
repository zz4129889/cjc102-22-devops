#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 613870958811.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 613870958811.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-22-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 613870958811.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-22-ecr-repo
        docker pull 613870958811.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-22-ecr-repo:latest
else
        docker pull 613870958811.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-22-ecr-repo:latest
fi
