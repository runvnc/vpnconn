FROM ubuntu
RUN apt-get update -y -q
RUN apt-get install -y -q liblzo2-dev zlib1g-dev libncurses5-dev libssl-dev libreadline6
ADD tinc /usr/bin/
ADD tincd /usr/bin/
ADD getip /usr/bin/
ADD tincinit /usr/bin/
RUN mkdir -p /usr/local/etc/tinc
RUN mkdir -p /usr/local/var/run
ADD tinc-up /usr/local/etc/
#ENV MYDOMAIN
#ENV SERVERIMPORT
#ENV MYPRIVATEIP
CMD tincinit
