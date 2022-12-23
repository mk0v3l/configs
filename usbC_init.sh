sudo echo "dtoverlay=dwc2, dr_mode=peripheral" >> /boot/config.txt
#sudo echo "modules-load=dwc2, g_ether" >> /boot/cmdline.txt avant rootwait
sudo echo "auto usb0
allow-hotplug usb0
iface usb0 inet static
	address 10.55.0.1
	netmask 255.255.255.248" >> /etc/network/interfaces.d/usb0
sudo apt install dnsmasq
sudo echo "interface=usb0
dhcp-range=10.55.0.2,10.55.0.6,255.255.255.248,1h
dhcp-option=3
leasefile-ro" >>  /etc/dnsmasq.d/usb
sudoo echo "denyinterfaces" >> /etc/dhcpcd.conf
