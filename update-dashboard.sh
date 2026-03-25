#!/bin/bash

# Update Dashboard Script
# This script copies the latest dashboard and pushes it to GitHub Pages

echo "📋 Copying latest dashboard..."
cp ~/meeting-facilitator-dashboard.html ~/Documents/meeting-dashboard-site/index.html

echo "📝 Committing changes..."
cd ~/Documents/meeting-dashboard-site
git add index.html
git commit -m "Update dashboard - $(date '+%Y-%m-%d %H:%M:%S')"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Dashboard updated! View at: https://lauren-escalante.github.io/meeting-dashboard/"
