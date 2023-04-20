Firewall rule
Script: Web_Server

sudo iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
#the above statement will allow tcp pockets to the destination port 443 

sudo iptables -A INPUT -i eth0 -p tcp --dport 80 -j ACCEPT
#the above expression will accept traffic from port 80 as specified

sudo iptables -A INPUT -i eth0 -p tcp --dport 8080 -j ACCEPT	
#this rule indicates that all packets from port 8080 that match the specified chain will be accepted 

sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
#the above expression will redirect all packets from port 80 to 8080

MySQL Script

sudo iptables -A INPUT -i eth0 -p tcp -m tcp --dport 3306 -j ACCEPT

#the above iptable rule will allow incoming request

SSH 
sudo iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
#this rule will allow incoming traffic on port 22

sudo iptables -P OUTPUT ACCEPT
#the above rule will establish outgoing connections

sudo iptables -P INPUT DROP

Telnet

Iptables -A INPUT -p tcp –dport 23 j DROP 
#the above rule will block telnet access

Iptables -A INPUT -I eth0.2 -j DROP

Prevent DDoS Attack 

iptables -I INPUT -p tcp --dport 80 -m state --state NEW -m recent --set

iptables -I INPUT -p tcp --dport 80 -m state --state NEW -m recent --update --seconds 60 --hitcount 150 -j DROP




