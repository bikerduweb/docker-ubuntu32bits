#!/bin/sh
DOCKER_USERNAME=$(cat /tmp/docker_username)
if [ "${DOCKER_USERNAME}" -eq "" ]; then
  echo "ERROR: you must configure your docker username before running this vagrant machine"
  exit
fi

# Install packages for building ruby
apt-get update
apt-get upgrade -y --force-yes
apt-get install -y --force-yes docker.io debootstrap
wget -qO - https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage-debootstrap.sh > /root/mkimage-debootstrap.sh
chmod 755 /root/mkimage-debootstrap.sh

/root/mkimage-debootstrap.sh -ai386 ${DOCKER_USERNAME}/trusty32 trusty http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/

mv /tmp/.dockercfg /root/.dockercfg
docker push ${DOCKER_USER}/trusty32