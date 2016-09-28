#!/bin/bash
docker run --rm --name php -v $(pwd):$(pwd) -w "$(pwd)" php:5.6.26-alpine php $@
