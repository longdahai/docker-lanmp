#!/bin/bash
id=$(sudo docker images|tail -n +2|awk '{print $2"\t"$3}'|grep '<none>'|awk '{print $2}')
sudo docker rmi $id -f
