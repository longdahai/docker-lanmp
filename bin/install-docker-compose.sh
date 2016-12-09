#!/bin/bash
html=$(curl -s 'https://docs.docker.com/compose/install/')
cmd=$(echo $html|grep -Po '<code>\s*\$.*?</code>'|head -n 1|sed -e 's/<code>//' -e 's/<\/code>//' -e 's/\$//' | sed 's/^ //;s/ $//')
echo "run $cmd"
eval $cmd
chmod +x /usr/local/bin/docker-compose
