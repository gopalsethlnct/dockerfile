FROM centos:latest
COPY ./kube.repo /etc/yum.repos.d/
RUN yum install java -y
RUN yum install openssh-server -y
RUN yum install kubectl -y
RUN yum install git -y
RUN yum install sudo -y

