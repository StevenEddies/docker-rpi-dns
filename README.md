# Raspberry Pi DNS

This is a docker image for the Bind9 DNS server, built for the Raspberry Pi.

It is designed primarily for my own personal use. Feel free to use it, but do not expect it to be well documented.



## Run Commands

In each case, replace `/home/pi/data/dns/conf/` with a folder in which you have prepared the configuration files.

 * Normal use: `sudo docker run -d --restart=unless-stopped -p 53:53/udp -v /home/pi/data/dns/conf/:/etc/bind/ steveneddies/rpi-dns`
 * Debugging: `sudo docker run -it --restart=unless-stopped -p 53:53/udp -v /home/pi/data/dns/conf/:/etc/bind/ steveneddies/rpi-dns -g -d 99`



## Links

 * Master source repository: https://github.com/StevenEddies/owl-ms-core
 * Image repository: https://hub.docker.com/r/steveneddies/rpi-dns/

