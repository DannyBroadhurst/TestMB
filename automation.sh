#!/bin/bash
# Download XML File to LINIX Box
mkdir /etc/3cxpbx
cd /etc/3cxpbx
wget https://raw.githubusercontent.com/DannyBroadhurst/TestMB/master/setupconfig.xml

# Install 3CX
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get install -y 3cxpbx
