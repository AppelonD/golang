FROM images/hugo:latest

MAINTAINER Dennis Jensen "AppelonD@gmail.com"
RUN /root/go/bin/hugo server -s /root/src/hugo/docs --baseURL http://hugo.apps.appelon.net
