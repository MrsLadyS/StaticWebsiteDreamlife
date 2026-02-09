#!/bin/bash

# Marketing Site Deployment Script
# This script prepares the marketing site for deployment

set -e

echo "🚀 Preparing Marketing Site for Deployment..."

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Check if we're in the marketing-site directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the marketing-site directory."
    exit 1
fi

echo "✅ Marketing site files found"

# Create a deployment package (optional - for manual deployment)
if [ "$1" == "--package" ]; then
    echo "📦 Creating deployment package..."
    PACKAGE_NAME="marketing-site-$(date +%Y%m%d-%H%M%S).zip"
    
    # Create zip file (excluding git files and readme)
    zip -r "$PACKAGE_NAME" . \
        -x "*.git*" \
        -x "*.DS_Store" \
        -x "README.md" \
        -x "DEPLOYMENT.md" \
        -x "deploy.sh" \
        -x "*.zip"
    
    echo "✅ Package created: $PACKAGE_NAME"
    echo "📤 Ready to upload to your hosting provider"
fi

# Verify required files exist
echo "🔍 Verifying required files..."
REQUIRED_FILES=("index.html" "css/styles.css" "js/main.js")

for file in "${REQUIRED_FILES[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ Error: Required file missing: $file"
        exit 1
    fi
done

echo "✅ All required files present"
echo ""
echo "📋 Deployment Checklist:"
echo "  ✓ All files verified"
echo "  ✓ Ready for deployment"
echo ""
echo "🌐 Deployment Options:"
echo "  1. GitHub Pages: Push to main branch (auto-deploys)"
echo "  2. Netlify: Drag & drop this folder"
echo "  3. Vercel: Run 'vercel' from this directory"
echo "  4. Manual: Upload all files to your web server"
echo ""
echo "✨ Happy deploying!"
