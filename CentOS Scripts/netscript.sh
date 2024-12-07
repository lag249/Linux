#!
{
echo "Broadcast IP address:"
ip a show enp0s3
#The ip command will show the network interfaces IP information

echo "Network interface link information for broadcast IP address:"
ip link show enp0s3
#This command will show the network interface link information

echo "Routing table:"
ip route show
#Shows the ip routing table

echo "DNS lookup for NECC:"
dig www.necc.mass.edu
#sample DNS lookup for NECC's website

echo "Reverse DNS lookup for Ubuntu server"
dig -x 10.0.0.49
#reverse DNS lookup for server's broadcast address

echo "Network Statistics summary:"
ss -s
#ss command with -s option shows network statistics summary

echo "Open ports:" 
ss -tuln
##ss with -tuln option shows listening TCP and UDP ports

} > netscript.txt
