#!/bin/bash

# Display the rules for a valid username
echo "The username must:"
echo "- start with a lower case letter"
echo "- contain only lower case letters, digits, and underscores"
echo "- be between 3 and 12 characters long"

# Prompt the user to enter a username
read -p "Enter a potential username: " username

# Check if the username satisfies the conditions
while ! [[ "$username" =~ ^[a-z][a-z0-9_]{2,11}$ ]]; do
    echo "Invalid username. Please try again."
    read -p "Enter a potential username: " username
done

# If the username satisfies the conditions, thank the user and exit
echo "Thank you, $username is a valid username."
exit 0
