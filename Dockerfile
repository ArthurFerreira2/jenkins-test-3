FROM  centos
MAINTAINER ashutoshh@linux.com
RUN yum install httpd -y
WORKDIR /var/www/html/
COPY ashuwebapp .
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND 
# to start httpd service in any linux based OS
# we can't use systemctl start httpd command in docker 
# reason systemctl is dependent on Systemd that is the first process of linux based OS 
# so docker can't use any process that is dependent upon any other process 
