#!/bin/bash
# Download XML File to LINIX Box
wget https://raw.githubusercontent.com/DannyBroadhurst/TestMB/master/automation.xml

# Define XML Filename
filename="automation.xml"

# Define Variables for XML File
lickey=$(sed -n 's|<lickey>\(.*\)</lickey>|\1|p'  $filename)
fqdn=$(sed -n 's|<fqdn>\(.*\)</fqdn>|\1|p'  $filename)
admpwd=$(sed -n 's|<admpwd>\(.*\)</admpwd>|\1|p'  $filename)
mbemail=$(sed -n 's|<mbemail>\(.*\)</mbemail>|\1|p'  $filename)
mbphone=$(sed -n 's|<mbphone>\(.*\)</mbphone>|\1|p'  $filename)
mbresellerid=$(sed -n 's|<mbresellerid>\(.*\)</mbresellerid>|\1|p'  $filename)
contactname=$(sed -n 's|<contactname>\(.*\)</contactname>|\1|p'  $filename)
companyname=$(sed -n 's|<companyname>\(.*\)</companyname>|\1|p'  $filename)

# Install 3CX
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get install -y 3cxpbx

# Configure 3CX
2
1
$lickey
echo -e "admin"
echo -e $admpwd
1
1
1
1
echo -e $fqdn
echo -e "6"
echo -e "18"
2
echo -e
echo -e
echo -e
echo -e
4
support@microbyte.co.uk
1
3
echo -e "54"
echo -e "43"
echo -e
echo -e "Microbyte"
echo -e "Support"
echo -e $mbemail
echo -e
echo -e "13"
echo -e $contactname
echo -e $companyname
echo -e $mbemail
echo -e $mbphone
echo -e $mbresellerid
