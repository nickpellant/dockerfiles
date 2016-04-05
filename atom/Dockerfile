FROM debian:jessie

MAINTAINER Nick Pellant <nick@nickpellant.com>

ENV ATOM_VERSION 1.6.2

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  fakeroot \
  gconf-service \
  gconf2 \
  git \
  gvfs-bin \
  libasound2 \
  libgconf-2-4 \
  libgnome-keyring-dev \
  libgtk2.0-0 \
  libnotify4 \
  libnss3 \
  libxtst6 \
  wget \
  xdg-utils \
  && curl -sSL https://github.com/atom/atom/releases/download/v${ATOM_VERSION}/atom-amd64.deb -o /tmp/atom-amd64.deb \
  && dpkg -i /tmp/atom-amd64.deb \
  && rm -rf /tmp/*.deb \
  && rm -rf /var/lib/apt/lists/*

COPY *.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["/usr/local/bin/boot.sh"]
