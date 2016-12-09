docker rm `docker ps -a|awk '{print $1}'|grep -v '<none>'|tail -n +2` -f
