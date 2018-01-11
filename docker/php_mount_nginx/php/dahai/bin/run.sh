#!/bin/sh

command -v nginx >/dev/null 2>&1 || {\
    cp /volume/usr/sbin/nginx /usr/sbin;\
    cp /volume/usr/lib/nginx /usr/lib -r;\
    cp /volume/usr/lib/* /usr/lib/ -r;\
    cp /volume/etc/nginx /etc -r;\
    cp /volume/var/log/nginx /var/log -r;\
    cp /volume/var/cache/nginx /var/cache -r;\
}

supervisord -n -c "/config/supervisord.conf"
