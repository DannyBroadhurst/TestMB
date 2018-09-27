#!/bin/bash
# Download XML File to LINIX Box
mkdir /etc/3cxpbx
cd /etc/3cxpbx
cat > /etc/3cxpbx/setupconfig.xml << "<EOF>"
<?xml version="1.0" encoding="utf-8"?>
<ArrayOfSerializedQuestion xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <!--PUT CONTENTS OF SETUPCONFIG.XML HERE--> 
<EOF>

# Install 3CX
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get install -y 3cxpbx
