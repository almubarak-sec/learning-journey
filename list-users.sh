#!/bin/bash
# Simple script to list users on the system
# Created by: lamar-sec
# Date: 2026-5-24
echo "=== Users on This System ==="
echo ""

cut -d: -f1,3 /etc/passwd | while IFS=: read name id; do
    if ["$id" -ge 1000] || ["$name" == "root"]; then
        echo "👤 User: $name (ID: $id)"
    fi
done

echo ""
echo "=== Script ended ==="
