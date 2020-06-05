FROM centos:latest
RUN yum install java -y
RUN yum insall openssh-server -y
RUN yum insall kubectl -y
RUN yum insall sudo -y
RUN yum install git -y

