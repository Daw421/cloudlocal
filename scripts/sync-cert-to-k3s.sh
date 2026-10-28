#!/bin/bash
set -e

CERT_DIR="/etc/ssl/dawinstall.com"
kubectl create secret tls dawinstall-tls \
  --cert="${CERT_DIR}/fullchain.pem" \
  --key="${CERT_DIR}/privkey.pem" \
  --dry-run=client -o yaml | kubectl apply -f -
