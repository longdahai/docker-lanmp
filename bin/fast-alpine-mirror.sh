#!/bin/bash
i=0
url=''
min=0;
for mirror in `curl -s 'http://rsync.alpinelinux.org/alpine/MIRRORS.txt'`
do
    ip=`echo $mirror| sed -r 's/http:\/\/([^\/]+)\/.*/\1/'`
    time=`ping $ip -c 1|grep time=|sed -r 's/.*time=(.*) ms/\1/'`

    #default mirror
    if [[ i++ -eq 0 ]]; then
        url=$mirror
        min=$time
    fi
    echo mirror: $mirror, ping: $ip, time: $time

    # if quick
    if [ $time ] && [ $time -lt $min ]; then
        min=$time
        url=$mirror
    fi

done

echo fast mirror: $url, min time: $min

echo ${url}v3.4/main
echo ${url}v3.4/community
