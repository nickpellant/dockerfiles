FROM alpine:latest

MAINTAINER Nick Pellant <nick@nickpellant.com>

RUN apk update \
  && apk add openvpn \
	&& rm -rf /var/cache/apk/*

WORKDIR /etc/openvpn
ENTRYPOINT ["openvpn"]
