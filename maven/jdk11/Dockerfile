FROM maven:3-jdk-11-slim

LABEL maintainer="modlost@modlost.net"

RUN apt-get update && \
    apt-get install -y \
      git \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/code
COPY entrypoint.sh /opt/entrypoint.sh
COPY settings.xml /root/.m2/settings.xml

WORKDIR /opt/code

ENTRYPOINT ["/opt/entrypoint.sh"]
