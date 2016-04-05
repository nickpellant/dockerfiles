# Atom

[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/nickpellant/atom/latest.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/nickpellant/atom.svg)]()

[Atom](https://atom.io/) [Docker](https://www.docker.com/) container.

## How-to Run
I maintain a collection of functions for running Docker containers. This is my recommendation:

```bash
atom() {
  docker run -d \
  --name atom \
  --device /dev/snd \
  --device /dev/dri \
  -e DISPLAY=unix$DISPLAY \
  -e PGID=$(id -g $USER) \
  -e PUID=$(id -u $USER) \
  -e PUSER=$USER \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME/.dconfig/atom:/home/$USER/.atom \
  -v $HOME/src:/home/$USER/src \
  atom $args
}
```
