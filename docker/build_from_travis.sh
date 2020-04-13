#!/usr/bin/env bash

LINUX_IMAGE_DISTRO=${1}

if [[ ( ${LINUX_IMAGE_DISTRO} == "centos" ) ]]; then
  bash -ex docker/build_outside.sh \
    docker/Dockerfile-centos-8.1-for-pmacct \
    centos8.1-for-pmacct \
    master
elif [[ ( ${LINUX_IMAGE_DISTRO} == "ubuntu" ) ]]; then
  bash -ex docker/build_outside.sh \
    docker/Dockerfile-ubuntu-bionic-for-pmacct \
    ubuntu-bionic-for-pmacct \
    master
else
  echo "unsupported linux distribution: ["${LINUX_IMAGE_DISTRO}"]"
  exit 1
fi
