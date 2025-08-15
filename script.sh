#!/bin/bash
# This script runs after deployment

echo "✅ Post-deploy script started"
echo "Deployment directory contents:"
ls -l

# Optional: Verify index.html exists
if [ -f "index.html" ]; then
    echo "✅ index.html found!"
else
    echo "❌ index.html not found!"
fi

echo "✅ Post-deploy script completed"
