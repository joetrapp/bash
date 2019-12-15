apt install isc-dhcp-server
systemctl stop isc-dhcp-server
mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.orig
vim /etc/dhcp/dhcpd.conf

#Begin dhcp.conf file
# Addressing
subnet $networkid netmask $netmask {
	range $startrange $endsubnet;
	option routers $gateway;
	option domain-name-servers $dnsserver;
	}
option subnet-mask $netmask;
option broadcast-address $broadcastaddress;
option domain-name $domainname;

# Server options

default-lease-time 700000;
max-lease-time 700000;
authoritative;
# End dhcp.conf file

vim /etc/default/isc-dhcp-server
#Begin isc-dhcp-server file
INTERFACES=$dhcpinterface
#End isc-dhcp-server file

systemctl start isc-dhcp-server
systemctl status isc-dhcp-server

#tail -f /var/log/syslog
cat /var/lib/dhcpd.leases