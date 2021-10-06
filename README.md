# Mininet in a container

A Docker image for [Mininet](http://mininet.org/), based on this one: https://github.com/iwaseyusuke/docker-mininet.

I created it for these two Lab. session in one of my courses:
* [Lab 1 - Mininet - Introduction to Mininet](https://hackmd.io/@rse2021/lab1)
* [Lab 2 - Mininet - SDN with Mininet](https://hackmd.io/@rse2021/lab2)

It basically adds this elements:
* wireshark-qt
* wget
* python-tk (for miniedit.py)
* git

and the download of the Mininet source code:
* git clone git://github.com/mininet/mininet

## Docker Run Command

```bash
$ docker run -it --rm --privileged -e DISPLAY \
             -v /tmp/.X11-unix:/tmp/.X11-unix \
             -v /lib/modules:/lib/modules \
             pmanzoni/mininet-in-a-container
```


## Open X Window applications in containers

If you cannot not open `xterm` or other X Window applications, add docker user to the local access control list of xhost on your
"Docker host" (not on your containers).

```bash
$ xhost +local:*
```
