#!/bin/bash
echo Script Configuración de interfaz usando DHCP
cd /etc/network/
sudo chmod a+w interfaces
echo '#' The primary network interface '('DHCP')' >> interfaces
echo auto eth0 >> interfaces
echo allow-hotplug eth0 >> interfaces
echo iface eth0 inet dhcp >> interfaces
sudo /etc/init.d/networking restart
ping -c 4 8.8.8.8
exit
