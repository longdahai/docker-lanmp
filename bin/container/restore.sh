docker stop db
# docker run -v /Users/backup:/backup --volumes-from dbdata alpine /bin/sh -c "cd /var/lib/mysql && tar xvf /backup/dbdata.tar"
docker run --rm -v /Users/backup:/backup --volumes-from dbdata alpine /bin/sh -c "cd /var/lib/mysql && rm * -rf && cp -rv /backup/var/lib/mysql /var/lib/"