# Download XML File to LINIX Box
wget https://raw.githubusercontent.com/DannyBroadhurst/TestMB/master/automation.xml

# Define XML Filename
filename="automation.xml"

# Define Variables for XML File
licensekey=$(sed -n 's|<lickey>\(.*\)</lickey>|\1|p'  $filename)
fqdn=$(sed -n 's|<fqdn>\(.*\)</fqdn>|\1|p'  $filename)

echo $filename
echo $licensekey
echo $fqdn