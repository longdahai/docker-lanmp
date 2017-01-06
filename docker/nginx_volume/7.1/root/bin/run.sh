#!/bin/sh
cp /volume/* /usr/ -r

supervisord -n -c "/config/supervisord.conf"
