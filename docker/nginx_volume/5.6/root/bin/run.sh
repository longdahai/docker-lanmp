#!/bin/sh

command -v foo >/dev/null 2>&1 || { cp /volume/* /usr/ -r; }

supervisord -n -c "/config/supervisord.conf"
