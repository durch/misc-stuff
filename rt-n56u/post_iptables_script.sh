#!/bin/sh

### Custom user script
### Called after internal iptables reconfig (firewall update)

iptables -t nat -A PREROUTING --source 192.168.1.1/24 -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 3128
