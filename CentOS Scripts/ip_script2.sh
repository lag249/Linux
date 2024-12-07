#!/usr/bin/sh
#iptables script

#Allow established connections
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT


#Allow incoming traffic on port 22 (ssh), port 80 (http), port 443 (https), port 3306 (mysql)
sudo iptables -A INPUT -p tcp  --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT



#Allow outgoing traffic on port 22 (ssh), port 80 (http), and port 443 (https), port 3306 (mysql)
sudo iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 8080 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 3306 -j ACCEPT


#set up prerouting rule to forward traffic from port 80 to port 8080 on Ubuntu SErver
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

#block telnet on port 23
sudo iptables -A INPUT -p tcp --dport 23 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 23 -j DROP

#block ping/ICMP
##sudo iptables -A INPUT -p icmp -j DROP

#save all rules
sudo service iptables save
