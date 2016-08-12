#!/bin/bash
set -e
# Set the timezone here
echo "Europe/Helsinki" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
# Now, install the stuff
apt-get update -y
apt-get install -y curl bzip2 build-essential python git ntp
