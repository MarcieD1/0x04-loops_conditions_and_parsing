#!/usr/bin/env bash
# This script generates an RSA key pair and shares the public key.

# Generate RSA key pair
ssh-keygen -t rsa -b 4096 -C "marciatarisai.com"

# Check if the key pair is generated successfully
if [ $? -eq 0 ]; then
    echo "RSA key pair generated successfully"
else
    echo "Error generating RSA key pair"
    exit 1
fi

# Save the public key to the specified file
pub_key_file="0x04-loops_conditions_and_parsing/0-RSA_public_key.pub"
cat ~/.ssh/id_rsa.pub > "$pub_key_file"

# Display the public key
echo "Public key saved to $pub_key_file:"
cat "$pub_key_file"

# Instructions for the user
echo ""
echo "Add the following public key to your intranet profile:"
cat "$pub_key_file"
echo ""
echo "Keep the private key in a secure location."
echo "You may store it in a password manager, Dropbox, Google Drive, or a USB key."
echo "If you set a passphrase, make sure to save it securely as well."
