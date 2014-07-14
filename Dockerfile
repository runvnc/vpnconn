FROM ubuntu
ADD tinc /usr/bin/
ADD tincd /usr/bin/
ADD getip /usr/bin/
ADD tincinit /usr/bin/
RUN mkdir -p /usr/local/etc/tinc
#ENV MYDOMAIN
#ENV SERVERIMPORT
#ENV MYPRIVATEIP
CMD tincinit
