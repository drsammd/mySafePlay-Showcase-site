#!/bin/bash

# Deployment script for mySafePlay Showcase Site
echo "=== mySafePlay Showcase Site Deployment ==="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "Error: index.html not found. Please run this script from the project root."
    exit 1
fi

echo "✅ Project files found"
echo ""

# Add vercel.json to git if not already committed
git add vercel.json
git commit -m "Add Vercel configuration" 2>/dev/null || echo "Vercel config already committed"

echo "🚀 Ready for deployment!"
echo ""
echo "To deploy to Vercel:"
echo "1. Run: vercel login"
echo "2. Run: vercel --prod"
echo ""
echo "To deploy to Netlify:"
echo "1. Go to https://app.netlify.com/drop"
echo "2. Drag and drop this entire folder"
echo ""
echo "To deploy to GitHub Pages:"
echo "1. Push to GitHub first"
echo "2. Go to repository Settings > Pages"
echo "3. Select 'Deploy from a branch' and choose 'main'"
echo ""
echo "Current project structure:"
ls -la
