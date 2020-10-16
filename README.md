# Tools
Small collection little scripts for pentesting

### Autoscan:

Autoscan runs a nmap ping scan and ouputs the live hosts to a file and excludes your ip from the list. It then runs individual scans on each ip and ouputs them into individually named .log file. For example a machine at 10.0.2.110 will be 10.0.2.110.log

Just a nice little tool to keep your scans organized and documented for further examination.

#### Syntax: 
##### ./autoscan.sh (nmap ip range) (your current ip on the network you are testing)
