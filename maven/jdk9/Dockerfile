FROM maven:3.5.0-jdk-8-slim

LABEL maintainer="modlost@modlost.net"

RUN mkdir -p /opt/code
COPY entrypoint.sh /opt/entrypoint.sh

WORKDIR /opt/code

ENTRYPOINT ["/opt/entrypoint.sh"]
