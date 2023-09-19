# Mininet in a container

A Docker image for [Mininet](http://mininet.org/), based on this one: https://github.com/iwaseyusuke/docker-mininet.

It basically adds these elements:
* wireshark-qt
* wget
* python-tk (for miniedit.py)
* git

and the download of the Mininet source code:
* git clone git://github.com/mininet/mininet


## Docker *build* Command
To build the image locally you can use:

```bash
$ docker build -t mininet-in-a-container . 
```


## Using the prebuilt image "pmanzoni/mininet-in-a-container"


### Use this command:
```bash
$ docker run -it --rm --privileged -e DISPLAY \
             -v /tmp/.X11-unix:/tmp/.X11-unix \
             -v /lib/modules:/lib/modules \
             pmanzoni/mininet-in-a-container
```

### For MacOS: 
```bash
$ docker run -it --rm --privileged -e DISPLAY \
      --env="DISPLAY=host.docker.internal:0" \
      -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
      -v /lib/modules:/lib/modules \
      pmanzoni/mininet-in-a-container
```




## Open X Window applications in containers

If you cannot not open `xterm` or other X Window applications, add docker user to the local access control list of xhost on your
"Docker host" (not on your containers).

```bash
$ xhost +local:*
```

For MacOS launch [XQuartz](https://www.xquartz.org) (install it before... easier with [Brew](https://brew.sh/)); under the XQuartz Preferences menu go to the security tab and ensure "Allow connections from network clients" is checked.

