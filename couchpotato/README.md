# CouchPotato

[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/nickpellant/couchpotato/latest.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/nickpellant/couchpotato.svg)]()

[CouchPotato](https://couchpota.to/) [Docker](https://www.docker.com/) container.

## How-to Run
I maintain a collection of functions for running Docker containers. This is my recommendation:

```bash
openvpn() {
  local conf=$1

  docker run -d \
    --cap-add NET_ADMIN \
    --device /dev/net/tun \
    --name openvpn \
    --net host \
    --restart always \
    -v $HOME/.config/openvpn:/etc/openvpn \
    nickpellant/openvpn \
    --config /etc/openvpn/$conf
}
```
