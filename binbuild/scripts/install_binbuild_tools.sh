set -e
# Set the timezone here
echo "Europe/Helsinki" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
# for npm module re-building
apt-get -y install build-essential libssl-dev git python
npm install -g node-gyp
# pre-install node source code for faster building
$(npm bin -g)/node-gyp install ${NODE_VERSION}

bash $METEORD_DIR/lib/cleanup.sh
