FROM gradle:4.2.0-jdk8

LABEL maintainer="modlost@modlost.net"

RUN mkdir -p /opt/code
COPY entrypoint.sh /opt/entrypoint.sh

WORKDIR /opt/code

ENTRYPOINT ["/opt/entrypoint.sh"]
