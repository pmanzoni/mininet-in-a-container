# Mininet in a container

A Docker image for [Mininet](http://mininet.org/). 

It is based on this: https://github.com/iwaseyusuke/docker-mininet, basically with the addition of wireshark already installed in the image.

## Docker Run Command

```bash
$ docker run -it --rm --privileged -e DISPLAY \
             -v /tmp/.X11-unix:/tmp/.X11-unix \
             -v /lib/modules:/lib/modules \
             pmanzoni/mininet-in-a-container
```


## Open X Window applications in containers

If you could not open `xterm` or other X Window applications, add docker user to the local access control list of xhost on your
"Docker host" (not on your containers).

```bash
$ xhost +local:*
```
