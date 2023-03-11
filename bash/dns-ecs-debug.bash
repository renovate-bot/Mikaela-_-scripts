#!/usr/bin/env bash

# This script just digs domains that return information the authoritative
# nameserver receives which is resolver's IP and ECS if the server in
# question sends that.
# $@ takes all parameters so another DNS server can be specified
# e.g. ./dns-ecs-debug.bash @9.9.9.11

echo "Google $@"
dig +short TXT o-o.myaddr.l.google.com. "$@"
echo ""

echo "Akamai dualstack $@"
dig +short TXT whoami.ds.akahelp.net. "$@"
echo ""

echo "Akamai IPv6 $@"
dig +short TXT whoami.ipv6.akahelp.net. "$@"
echo ""

echo "Akamai IPv4 $@"
dig +short TXT whoami.ipv4.akahelp.net. "$@"
echo ""
