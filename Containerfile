#Containerfile for multistage containers
FROM fedora:latest
#build image1 using myfile1.txt
ENTRYPOINT build -ti image1 -f myfile1.txt

FROM ubuntu
#build image2 using myfile2.txt
ENTRYPOINT build -ti image2 -f myfile2.txt

