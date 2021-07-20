# Mininet in a container

The Docker image for [Mininet](http://mininet.org/). 

Based on this: https://github.com/iwaseyusuke/docker-mininet, basically with the addition of wireshark already installed.

## Docker Run Command

```bash
docker run -it --rm --privileged -e DISPLAY \
             -v /tmp/.X11-unix:/tmp/.X11-unix \
             -v /lib/modules:/lib/modules \
             pmanzoni/mininet-in-a-container
```


## Open X Window applications in containers

If you could not open `xterm` or other X Window applications, or faced to the
following error message;

```bash
root@26f36691a400:~# xterm
No protocol specified
Warning: This program is an suid-root program or is being run by the root user.
The full text of the error or warning message cannot be safely formatted
in this environment. You may get a more descriptive message by running the
program as a non-root user or by removing the suid bit on the executable.
xterm: Xt error: Can't open display: %s
```

Please add docker user to the local access control list of xhost on your
"Docker host" (not on your containers).

```bash
$ xhost +local:*
```
