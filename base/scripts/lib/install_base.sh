#!/bin/bash
set -e
# Set the timezone here
tz=Europe/Helsinki
cp -vf /usr/share/zoneinfo/$tz /etc/localtime
echo $tz | tee /etc/timezone
# Now, install the stuff
apt-get update -y
apt-get install -y curl bzip2 build-essential python git ntp
