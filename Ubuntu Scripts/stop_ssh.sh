#!/usr/bin/sh


#script to stop incoming ssh
sudo iptables -A INPUT -p tcp -m tcp --dport 22 -j DROP

#script to stop outgoing ssh
sudo iptables -A OUTPUT -p tcp -m tcp --dport 22 -j DROP

#save rules

sudo iptables-save | sudo tee /etc/iptables/rules.v4
