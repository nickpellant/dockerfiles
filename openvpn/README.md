# OpenVPN

[OpenVPN](https://openvpn.net/) client [Docker](https://www.docker.com/) container.

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
