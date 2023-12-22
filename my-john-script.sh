#!/bin/bash

# Ask for Metasploitable2 target IP address
echo "Enter tha target IP address:"
READ TARGET_IP


# Path to the file with hashed passwords 
HASH_FILE="/home/parallels/Desktop/ParallelsSharedFolders/Downloads/hashfile.txt"


# Path to the rockyou.txt wordlist
WORDLIST="/usr/share/wordlists/rockyou.txt"


# Running John the Ripper
echo "Starting John the Ripper on $TARGET_IP..."
john --wordlist=$WORDLIST $HASH_FILE

# Displaying the results
echo "Password cracking complete. Displaying cracked passwords..."
john --show $HASH_FILE

# End of script
