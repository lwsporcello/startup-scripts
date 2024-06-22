#!/bin/bash
apt-get update
apt-get install gnupg curl
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/>
apt-get update
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod
