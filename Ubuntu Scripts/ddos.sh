#!/bin/sh
{
#script to stop ddos attack (maybe!)
##This script may also block legitimate traffic bc of its restrictiveness


#stop null packets
sudo iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP

#drop invalid packets
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP

#stop syn-flood attacks
sudo iptables -A INPUT -p tcp ! --syn -m state --state  NEW -j DROP

#stop XMAS packets
sudo iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

#block unusual max segment sizes
sudo iptables -t mangle -A PREROUTING -p tcp -m conntrack --ctstate NEW -m tcpmss ! --mss 536:65535 -j DROP



#saving IPtables, the sudo tee after the pipe ensures that the permissions writes to both the terminal and file as root
sudo iptables-save | sudo tee /etc/iptables/rules.v4 
}
