#!/bin/sh

#This script can be used as a template to allow or block a specific mac address from communicating

#This command allows the MAC address 08:00:27:e6:5a:c3, this MAC address belongs to my Kali VM
sudo iptables -A INPUT -m mac --mac-source  08:00:27:e6:5a:c3 -j ACCEPT

#This command drops a specific MAC address to communicate, this MAC address is not real
sudo iptables -A INPUT -m mac --mac-source 01:23:45:67:89:ab -j DROP 

#This command saves the new rules to the iptables
sudo iptables-save | sudo tee /etc/iptables/rules.v4


