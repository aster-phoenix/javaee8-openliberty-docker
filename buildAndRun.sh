#!/bin/sh
mvn clean package && docker build -t xyz.pretsa/openlibertytest .
docker rm -f openlibertytest || true && docker run -d -p 9080:9080 -p 9443:9443 --name openlibertytest xyz.pretsa/openlibertytest
docker rmi $(docker images -qa -f "dangling=true")