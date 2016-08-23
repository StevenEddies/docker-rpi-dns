FROM resin/rpi-raspbian

MAINTAINER Steven Eddies <steven@eddies.me.uk>

RUN apt-get update \
	&& apt-get upgrade -y

RUN apt-get install bind9

EXPOSE 53/udp

VOLUME /etc/bind

ENTRYPOINT ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"]
