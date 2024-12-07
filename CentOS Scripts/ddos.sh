#!/bin/sh
{
#script to stop ddos attack (maybe!)
##This script may also block legitimate traffic bc of its restrictiveness
#Using the -C option checks to see if rule exists


#stop null packets
null="sudo iptables -A -C INPUT -p tcp --tcp-flags ALL NONE -j DROP"

#drop invalid packets
invalid="sudo iptables -A -C INPUT -m conntrack --ctstate INVALID -j DROP"

#stop syn-flood attacks
synflood="sudo iptables -A -C INPUT -p tcp ! --syn -m state --state  NEW -j DROP"

#stop XMAS packets
xmas="sudo iptables -A -C INPUT -p tcp --tcp-flags ALL ALL -j DROP"

#block unusual max segment sizes
max="sudo iptables -t mangle -A -C PREROUTING -p tcp -m conntrack --ctstate NEW -m tcpmss ! --mss 536:65535 -j DROP"





#saving IPtables
sudo service iptables save
}
