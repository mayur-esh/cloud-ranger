## Currently supported cloud ranges:
## AWS
## Microsoft Azure
## Clourflave IPv4
## Clourflave IPv6
## DigitalOcean
## Google Cloud
## Oracle OCI

if [ ! -d "cloudranger" ] 
then
	mkdir cloudranger
	cd cloudranger
else 
	cd cloudranger


urls="https://ip-ranges.amazonaws.com/ip-ranges.json https://www.microsoft.com/en-us/download/confirmation.aspx?id=56519 https://www.cloudflare.com/ips-v4 https://www.cloudflare.com/ips-v6 https://www.digitalocean.com/geo/google.csv https://www.gstatic.com/ipranges/cloud.json https://docs.oracle.com/en-us/iaas/tools/public_ip_ranges.json"
 
## let us grab it ##
for u in $urls
do
   echo "\n[+]Downloading: $u\n"
   curl -O "$u"
done