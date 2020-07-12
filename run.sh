#!/bin/bash

docker stop python_server
docker rm python_server

docker rmi python_server

docker build -t python_server .

docker run -d -p 2222:8080 --name python_server python_server
