#!/usr/bin/env bash
OUT=/tmp/log.txt
echo "*** apt-get update"
sudo apt-get update > ${OUT}
echo "*** apt-get install apache2 htop mc"
sudo apt-get -y install --no-install-recommends apache2 htop mc >> ${OUT}
echo "*** useradd usuario"
sudo useradd -m -p sa5u2O0Xjsufg -s /bin/bash usuario >> ${OUT}
echo "*** add tmpfs to fstab"
sudo echo "tmpfs     /dev/shm     tmpfs     defaults,noexec,nosuid     0     0 " >> /etc/fstab
