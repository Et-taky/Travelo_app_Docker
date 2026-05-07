#!/bin/sh
echo "Waiting for frontend DNS..."
until nslookup frontend > /dev/null 2>&1; do
    echo "  frontend not ready, retrying in 3s..."
    sleep 3
done

echo "Waiting for backend DNS..."
until nslookup backend > /dev/null 2>&1; do
    echo "  backend not ready, retrying in 3s..."
    sleep 3
done

echo "All upstream services resolved. Starting Nginx..."
exec nginx -g "daemon off;"