FROM debian:buster-slim

ENV VARNISH_VERSION 6.1.1-1
ENV VARNISH_SIZE 100M

RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends varnish; \
	rm -rf /var/lib/apt/lists/*

WORKDIR /etc/varnish

COPY docker-varnish-entrypoint /usr/local/bin/
ENTRYPOINT ["docker-varnish-entrypoint"]

EXPOSE 80 8443
CMD []
