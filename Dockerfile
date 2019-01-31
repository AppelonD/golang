FROM images/rhel76:latest

MAINTAINER Dennis Jensen "AppelonD@gmail.com"
RUN yum -y install git
RUN yum -y localinstall https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install hugo
RUN hugo server
