#!/bin/bash
## Borrowed from: https://github.com/chriswessels/meteor-tupperware
## and futher edited by japskua

set -e
# Autoremove any junk
apt-get autoremove -y

# Clean out docs, BUT NOT THE LOCALE OR TIMEZONES!
rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man

# Clean out package management dirs
rm -rf /var/lib/cache /var/lib/log

# Clean out /tmp
rm -rf /tmp/*

# Clear npm cache
npm cache clear