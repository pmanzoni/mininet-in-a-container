FROM ubuntu:18.04

USER root
WORKDIR /root

COPY ENTRYPOINT.sh /

COPY .Xresources /root/

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    iproute2 \
    iputils-ping \
    mininet \
    net-tools \
    openvswitch-switch \
    openvswitch-testcontroller \
    tcpdump \
    vim \
    x11-xserver-utils \
    xterm \
    wireshark-qt \
    wget \
 && rm -rf /var/lib/apt/lists/* \
 && chmod +x /ENTRYPOINT.sh

RUN apt-get update && apt-get install -y --no-install-recommends \
    python-tk

RUN apt-get update && apt-get install -y --no-install-recommends \
    git

RUN git clone git://github.com/mininet/mininet

EXPOSE 6633 6653 6640

ENTRYPOINT ["/ENTRYPOINT.sh"]
