# Marketing Site Deployment Script (PowerShell)
# This script prepares the marketing site for deployment

Write-Host "🚀 Preparing Marketing Site for Deployment..." -ForegroundColor Cyan

# Get the script directory
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

# Check if we're in the marketing-site directory
if (-not (Test-Path "index.html")) {
    Write-Host "❌ Error: index.html not found. Please run this script from the marketing-site directory." -ForegroundColor Red
    exit 1
}

Write-Host "✅ Marketing site files found" -ForegroundColor Green

# Verify required files exist
Write-Host "🔍 Verifying required files..." -ForegroundColor Cyan
$RequiredFiles = @("index.html", "css\styles.css", "js\main.js")

foreach ($file in $RequiredFiles) {
    if (-not (Test-Path $file)) {
        Write-Host "❌ Error: Required file missing: $file" -ForegroundColor Red
        exit 1
    }
}

Write-Host "✅ All required files present" -ForegroundColor Green

# Create deployment package if requested
if ($args[0] -eq "--package") {
    Write-Host "📦 Creating deployment package..." -ForegroundColor Cyan
    $PackageName = "marketing-site-$(Get-Date -Format 'yyyyMMdd-HHmmss').zip"
    
    # Get all files except exclusions
    $FilesToZip = Get-ChildItem -Recurse | Where-Object {
        $_.FullName -notmatch '\.git' -and
        $_.Name -ne 'README.md' -and
        $_.Name -ne 'DEPLOYMENT.md' -and
        $_.Name -ne 'deploy.sh' -and
        $_.Name -ne 'deploy.ps1' -and
        $_.Name -notmatch '\.zip$' -and
        $_.Name -ne '.DS_Store'
    }
    
    Compress-Archive -Path $FilesToZip -DestinationPath $PackageName -Force
    Write-Host "✅ Package created: $PackageName" -ForegroundColor Green
    Write-Host "📤 Ready to upload to your hosting provider" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "📋 Deployment Checklist:" -ForegroundColor Yellow
Write-Host "  ✓ All files verified" -ForegroundColor Green
Write-Host "  ✓ Ready for deployment" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 Deployment Options:" -ForegroundColor Yellow
Write-Host "  1. GitHub Pages: Push to main branch (auto-deploys)" -ForegroundColor White
Write-Host "  2. Netlify: Drag & drop this folder" -ForegroundColor White
Write-Host "  3. Vercel: Run 'vercel' from this directory" -ForegroundColor White
Write-Host "  4. Manual: Upload all files to your web server" -ForegroundColor White
Write-Host ""
Write-Host "✨ Happy deploying!" -ForegroundColor Cyan
