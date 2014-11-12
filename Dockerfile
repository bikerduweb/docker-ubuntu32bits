FROM ubuntu:trusty

MAINTAINER veilleperso "https://github.com/veilleperso"

# Install packages for building ruby
RUN apt-get update && apt-get upgrade -y --force-yes
RUN apt-get install -y --force-yes docker.io debootstrap
RUN wget -qO - https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage-debootstrap.sh > /root/mkimage-debootstrap.sh
RUN chmod 755 /root/mkimage-debootstrap.sh

COPY ./.dockercfg /root/.dockercfg
COPY ./build_image.sh /root/build_image.sh
CMD sh /root/build_image.sh
