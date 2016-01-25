FROM alpine:latest

MAINTAINER Nick Pellant <nick@nickpellant.com>

RUN apk update \
  && apk add git python && \
  rm -rf /var/cache/apk/*

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /usr/src/couchpotato

EXPOSE 5050

WORKDIR /usr/src/couchpotato

ENTRYPOINT ["python", "CouchPotato.py"]
CMD [ "--data_dir", "/etc/couchpotato" ]
