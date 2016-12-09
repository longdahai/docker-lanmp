#!/bin/bash
svn co https://github.com/docker-library/php/trunk/5.6/alpine nginx/
rm nginx/Dockerfile nginx/.svn -rf
