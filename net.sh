#!/bin/bash

echo "Nome de usuário: $USER"
echo "Data e hora: $(date +'%Y-%m-%d %H:%M:%S')"

echo "IPv6: $(curl -s ifconfig.me)"
echo "IPv4: $(curl -4 -s ifconfig.me)"

echo "Rastreamento:"
if command -v traceroute &> /dev/null; then
  traceroute google.com
else
  sudo apt update && \
  sudo apt install -y traceroute && \
  traceroute google.com
  exit 0
fi
