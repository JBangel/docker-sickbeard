FROM ubuntu:precise
MAINTAINER Joshua Bangel <falornan@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git python2.7 python-cheetah

ENV SB_HOME /opt/sickbeard
RUN git clone git://github.com/midgetspy/Sick-Beard.git $SB_HOME
ADD scripts/startsb.sh /usr/local/bin/startsb.sh
RUN chmod +x /usr/local/bin/startsb.sh

EXPOSE 8081

ENTRYPOINT ["/usr/local/bin/startsb.sh"]
