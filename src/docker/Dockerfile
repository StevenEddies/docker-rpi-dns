FROM resin/rpi-raspbian

MAINTAINER Steven Eddies <steven@eddies.me.uk>

RUN apt-get update \
	&& apt-get install -y bind9 \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 53/udp

VOLUME /etc/bind

ENTRYPOINT ["/usr/sbin/named", "-c", "/etc/bind/named.conf"]

CMD ["-f"]
