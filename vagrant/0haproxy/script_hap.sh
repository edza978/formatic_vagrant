#!/usr/bin/env bash
OUT=/tmp/log.txt
echo "*** apt-get update"
sudo apt-get update > ${OUT}
echo "*** apt-get install HAProxy"
sudo DEBIAN_FRONTEND=noninteractive  apt-get -y  -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install --no-install-recommends haproxy >>  ${OUT}
