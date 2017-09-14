FROM alpine:3.6

LABEL maintainer="modlost@modlost.net"

ARG USER_HOME_DIR="/root"

ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin

RUN set -x && apk add --no-cache openjdk7
RUN set -x && apk add --no-cache maven && \
  mkdir -p /opt/code
COPY entrypoint.sh /opt/entrypoint.sh

# VOLUME "$USER_HOME_DIR/.m2/repository"

WORKDIR /opt/code

ENTRYPOINT ["/opt/entrypoint.sh"]
