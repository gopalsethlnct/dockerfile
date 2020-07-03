FROM centos:latest

COPY ./kube.repo /etc/yum.repos.d/

RUN yum install openssh-server -y
RUN yum install java-11-openjdk.x86_64 -y
RUN yum install kubectl -y
RUN yum install git -y
RUN yum install sudo -y
COPY ca.crt /root/
COPY client.crt /root/
COPY client.key /root/
COPY config /root/.kube/
RUN ssh-keygen -A
CMD ["/usr/sbin/sshd", "-D"] && /bin/bash
