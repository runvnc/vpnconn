FROM ubuntu
ADD tinc /usr/bin/
ADD tincd /usr/bin/
ADD getip /usr/bin/
RUN mkdir -p /usr/local/etc/tinc
RUN mknod -m 600 /dev/net/tun c 10 200
CMD tincinit
