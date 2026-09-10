#!/bin/bash

set -e

URL="http://localhost:8080/health"

echo "Application Health Check"
echo ""

echo "Checking: $URL"

response=$(curl -s "$URL")

echo ""
echo "Response:"
echo "$response"

if echo "$response" | grep -q '"status":"healthy"'; then
    echo ""
    echo "Application is healthy."
else
    echo ""
    echo "Application health check failed."
    exit 1

