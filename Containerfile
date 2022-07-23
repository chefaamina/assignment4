#Containerfile for multistage containers

#create base image
FROM ubuntu as base
LABEL myimage
#removed tuxpaint and vim - only installing httpd
RUN  apt-get update &&
apt-get -y install httpd
#create volume "data"
VOLUME data
#opening port 80 and running httpd
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND

FROM base AS image1
#add to image1 myfile1.txt
ADD myfile1.txt

FROM base AS image2
#add to image2 myfile2.txt
ADD myfile2.txt

