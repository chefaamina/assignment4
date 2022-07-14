#Containerfile for tuxpaint, vim and httpd
FROM fedora:latest
RUN yum -y install tuxpaint \
&& yum -y install vim \
&& yum -y install httpd
COPY assignment4/my-info.html /var/www/html/my-info.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
