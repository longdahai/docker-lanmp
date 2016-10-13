#!/bin/bash
cd /var/www/html
hhvm -m server -p 80 -d hhvm.ini
