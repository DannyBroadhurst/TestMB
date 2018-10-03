#!/bin/bash -e
mkdir /etc/3cxpbx
cat > /etc/3cxpbx/setupconfig.xml << "<EOF>"
<?xml version="1.0" encoding="utf-8"?>
<ArrayOfSerializedQuestion xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<SetupConfig xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <tcxinit>
        <option>
            <code>InstallationType</code>
            <answer>new</answer>
        </option>
        <option>
            <code>LicenseKey</code>
            <answer>DKO3-XMPB-EDWH-DINC</answer>
        </option>
        <option>
            <code>AdminUsername</code>
            <answer>admin</answer>
        </option>
        <option>
            <code>AdminPassword</code>
            <answer>Discovery@12</answer>
        </option>
        <option>
            <code>PublicIP</code>
            <answer>auto</answer>
        </option>
        <option>
            <code>ManualPublicIP</code>
            <answer>auto<answer/>
        </option>
        <option>
            <code>StaticOrDynamicIP</code>
            <answer>static</answer>
        </option>
        <option>
            <code>LocalIP</code>
            <answer>auto</answer>
        </option>
        <option>
            <code>NeedFqdn</code>
            <answer>yes</answer>
        </option>
        <option>
            <code>Hostname</code>
            <answer>accsys</answer>
        </option>
        <option>
            <code>DomainGroup</code>
            <answer>Europe</answer>
        </option>
        <option>
            <code>DnsSuffix</code>
            <answer>uk</answer>
        </option>
        <option>
            <code>HasLocalDns</code>
            <answer>no</answer>
        </option>
        <option>
            <code>HttpsPort</code>
            <answer>5001</answer>
        </option>
        <option>
            <code>HttpPort</code>
            <answer>5000</answer>
        </option>
        <option>
            <code>SipPort</code>
            <answer>5060</answer>
        </option>
        <option>
            <code>TunnelPort</code>
            <answer>5090</answer>
        </option>
        <option>
            <code>NumberOfExtensions</code>
            <answer>4</answer>
        </option>
        <option>
            <code>AdminEmail</code>
            <answer>support@microbyte.co.uk</answer>
        </option>
        <option>
            <code>MailServerType</code>
            <answer>3CX</answer>
        </option>
        <option>
            <code>Continent</code>
            <answer>Europe</answer>
        </option>
        <option>
            <code>Country</code>
            <answer>United Kingdom</answer>
        </option>
        <option>
            <code>Timezone</code>
            <answer>36</answer>
        </option>
        <option>
            <code>OperatorExtension</code>
            <answer>0000</answer>
        </option>
		<option>
		<code>OperatorFirstName</code>
		 <answer><answer/>
		</option>
		<option>
			<code>OperatorLastName</code>
			 <answer><answer/>
		</option>
		<option>
			<code>OperatorEmail</code>
			<answer>support@microbyte.co.uk</answer>
		</option>
		<option>
			<code>OperatorVoicemail</code>
			<answer>999</answer>
		</option>
        <option>
            <code>Promptset</code>
            <answer>UKEnglish</answer>
        </option>
        <option>
            <code>LicenseContactName</code>
            <answer>Accsys</answer>
        </option>
        <option>
            <code>LicenseCompanyName</code>
            <answer>Accsys</answer>
        </option>
        <option>
            <code>LicenseEmail</code>
            <answer>support@microbyte.co.uk</answer>
        </option>
        <option>
            <code>LicensePhone</code>
            <answer>+441733577055</answer>
        </option>
		<option>
			<code>ResellerId</code>
			<answer><answer/>
		</option>
    </tcxinit>
</SetupConfig>
<EOF>
wget -O- http://downloads.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads.3cx.com/downloads/3cxpbx/ /" > /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get -y install nginx
rm -f /etc/nginx/sites-enabled/default
systemctl reload nginx
apt-get -y install 3cxpbx
