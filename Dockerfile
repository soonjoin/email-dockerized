#postfix docker image source files
FROM debian:11-slim

ENV container=docker LC_ALL=C
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y install postfix postfix-mysql

EXPOSE 25
EXPOSE 465
EXPOSE 587

#VOLUME ["/etc/postfix"]
ENTRYPOINT ["/usr/sbin/postfix", "start-fg"]
