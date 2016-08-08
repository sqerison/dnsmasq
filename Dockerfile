FROM alpine
MAINTAINER Volodymyr Shynkar <volodymyr.shynkar@gmail.com>

RUN apk add --update dnsmasq

COPY dnsmasq.conf /etc/
COPY resolv.dnsmasq.conf /etc/

EXPOSE 5353

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]