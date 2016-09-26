FROM alpine:latest

ENV RSYNC_INTERVAL 0
ENV RSYNC_PASSWORD foobar

VOLUME /var/www/html

RUN apk add --update rsync bash

ADD /start /start
ADD /docker-rsync.include /
ADD /docker-rsync.exclude /

RUN chmod +x /start

#samba
RUN apk add samba samba-common-tools && rm -rf /var/cache/apk/*
RUN mkdir /samba_data && chmod 777 /samba_data
RUN echo [home] >> /etc/samba/smb.conf 
RUN echo path = /samba_data  >> /etc/samba/smb.conf 
RUN echo public = yes  >> /etc/samba/smb.conf 
RUN echo writable = yes  >> /etc/samba/smb.conf 
RUN echo create mask = 0777 >> /etc/samba/smb.conf 
RUN echo browseable = yes >> /etc/samba/smb.conf 
RUN echo guest ok = yes >> /etc/samba/smb.conf 
RUN echo -e "123\n123" | smbpasswd -a -s root
RUN echo [web] >> /etc/samba/smb.conf 
RUN echo path = /var/www/html  >> /etc/samba/smb.conf 
RUN echo public = yes  >> /etc/samba/smb.conf 
RUN echo writable = yes  >> /etc/samba/smb.conf 
RUN echo create mask = 0777 >> /etc/samba/smb.conf 
RUN echo browseable = yes >> /etc/samba/smb.conf 
RUN echo guest ok = yes >> /etc/samba/smb.conf 
RUN echo -e "123\n123" | smbpasswd -a -s root
EXPOSE 137 139 445

ENTRYPOINT ["/start"]