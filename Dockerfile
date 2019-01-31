FROM registry.redhat.io/rhel7.6

MAINTAINER Dennis Jensen "AppelonD@gmail.com"
RUN yum -y update
RUN yum -y install git
RUN yum -y localinstall https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install golang-bin
RUN mkdir -p /go/src/github.com/openshift/golang-ex
WORKDIR /go/src/github.com/openshift/golang-ex
COPY . /go/src/github.com/openshift/golang-ex
RUN go build
CMD ["./golang-ex"]
