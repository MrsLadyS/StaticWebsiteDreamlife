# Marketing Site Deployment Guide

This guide explains how to deploy the Moneyling Marketing Site to various platforms.

## GitHub Pages (Automatic)

The site is configured for automatic deployment via GitHub Actions.

### Setup Steps:

1. **Enable GitHub Pages in Repository Settings:**
   - Go to your repository on GitHub
   - Navigate to Settings → Pages
   - Under "Source", select "GitHub Actions"

2. **Push to Main Branch:**
   - The workflow will automatically deploy when you push changes to the `marketing-site/` folder
   - The workflow file is located at `.github/workflows/deploy-marketing-site.yml`

3. **Access Your Site:**
   - After deployment, your site will be available at:
   - `https://[your-username].github.io/[repository-name]/`
   - Or your custom domain if configured

### Manual Trigger:

You can also manually trigger the deployment:
- Go to Actions tab in GitHub
- Select "Deploy Marketing Site" workflow
- Click "Run workflow"

## Netlify Deployment

### Option 1: Drag & Drop
1. Go to [Netlify](https://app.netlify.com)
2. Drag the `marketing-site` folder to the deploy area
3. Your site will be live instantly

### Option 2: Git Integration
1. Connect your GitHub repository to Netlify
2. Set build settings:
   - **Base directory**: `marketing-site`
   - **Publish directory**: `marketing-site` (or leave empty)
   - **Build command**: (leave empty - it's a static site)
3. Deploy!

## Vercel Deployment

1. Install Vercel CLI: `npm i -g vercel`
2. Navigate to the marketing-site directory: `cd marketing-site`
3. Run: `vercel`
4. Follow the prompts

Or connect your GitHub repository in the Vercel dashboard.

## Manual Deployment

### Using a Simple HTTP Server

For testing or simple hosting:

```bash
cd marketing-site
python -m http.server 8000
# or
npx http-server -p 8000
```

### Using FTP/SFTP

1. Upload all files from `marketing-site/` to your web server
2. Ensure `index.html` is in the root directory
3. Access via your domain

## Custom Domain Setup

### GitHub Pages:
1. Add a `CNAME` file in the `marketing-site` folder with your domain
2. Configure DNS records as per GitHub Pages instructions

### Netlify/Vercel:
- Configure custom domain in the platform's dashboard
- Update DNS records as instructed

## File Structure for Deployment

```
marketing-site/
├── index.html          # Main page (required)
├── css/
│   └── styles.css     # Styles (required)
├── js/
│   └── main.js        # JavaScript (required)
└── README.md          # Documentation (optional)
```

All files in the `marketing-site` directory should be deployed together.

## Troubleshooting

### GitHub Pages not updating?
- Check Actions tab for workflow errors
- Ensure GitHub Pages is enabled in Settings
- Verify the workflow file path is correct

### Styles not loading?
- Check that CSS file paths are correct (relative paths)
- Ensure all files are uploaded
- Check browser console for 404 errors

### Navigation not working?
- Verify JavaScript file is loaded
- Check browser console for errors
- Ensure all anchor links use `#` format

## Build Verification

Before deploying, verify locally:
1. Open `index.html` in a browser
2. Check all links work
3. Verify responsive design on mobile
4. Test navigation menu
5. Confirm footer displays correctly
