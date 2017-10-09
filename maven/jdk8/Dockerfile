FROM maven:3.5.0-jdk-8-alpine

LABEL maintainer="modlost@modlost.net"

RUN mkdir -p /opt/code && \
  apk add --no-cache git

COPY entrypoint.sh /opt/entrypoint.sh
COPY settings.xml /root/.m2/settings.xml

WORKDIR /opt/code

ENTRYPOINT ["/opt/entrypoint.sh"]
