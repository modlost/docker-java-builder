FROM java:6-jdk

LABEL maintainer="modlost@modlost.net"

RUN mkdir -p /opt/code && \
    apt-get update && apt-get install -y --no-install-recommends \
		git maven \
	&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /opt/entrypoint.sh
COPY settings.xml /root/.m2/settings.xml

WORKDIR /opt/code

ENTRYPOINT ["/opt/entrypoint.sh"]
