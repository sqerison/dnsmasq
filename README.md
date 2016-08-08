# dnsmasq
Docker Container with Dnsmasq based on Alpine OS

Sources: https://github.com/sqerison/dnsmasq

The daemon will additionally read all hosts in the file mounted to /etc/dnsmasq.hosts:

Example:
''''
docker run -d \
-v $(pwd)/dnsmasq.hosts:/dnsmasq.hosts \
-p 127.0.0.10:53:5353/udp \
--name dnsmasq \
sqerison/dnsmasq
''''


Overwrite the internal configuration

docker run -d \
-v $(pwd)/dnsmasq.hosts:/dnsmasq.hosts \
-v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf \
-p 127.0.0.10:53:5353/udp \
--name dnsmasq \
sqerison/dnsmasq
