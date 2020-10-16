#!/bin/bash

# Network enumeration script written by checkn8
# Just a quick script to help when using Nmap

printf "Your IP is: $2 \n";

printf "[+] Pinging Network...\n";
nmap -sn -T4 $1 >live_hosts.txt;

printf '\n[+] Live Targets: \n';
cat live_hosts.txt | grep "Nmap scan" | cut -d " " -f 5 | grep -v "$2";
cat live_hosts.txt | grep "Nmap scan" | cut -d " " -f 5 | grep -v "$2" > live_ip.txt;
printf '\n';

printf '[+] Running port and version enumeration: (nmap -T4 -p- -A) \n';

for i in $(<live_ip.txt);do
# nmap -sC -sV -oA i ;
	printf "\n[+] Scanning: $i";
	printf "\n";
	nmap -T4 -p- -A -vv -oN $i.log $i ;
	printf "\n";
done

printf '[+] Saved Scans';
