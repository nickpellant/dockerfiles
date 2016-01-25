# OpenVPN

[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/nickpellant/openvpn/latest.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/nickpellant/openvpn.svg)]()

[OpenVPN](https://openvpn.net/) client [Docker](https://www.docker.com/) container.

## How-to Run
I maintain a collection of functions for running Docker containers. This is my recommendation:

```bash
couchpotato() {
	docker run -d \
		--name couchpotato \
		--restart always \
		-p 5050:5050 \
		-v /etc/localtime:/etc/localtime:ro \
		-v /media/downloads:/media/downloads \
		-v $HOME/.config/couchpotato:/etc/couchpotato \
    -v /media/movies:/media/movies \
		nickpellant/couchpotato
}
```

### Custom

* Link any containers you use for downloading (i.e. sabnzbd or transmission)
* Mount volumes for storing/processing downloads on the host machine
