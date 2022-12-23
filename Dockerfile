FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl wget screen git dnsutils iputils-ping traceroute net-tools tini

COPY layers/ /

ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]
