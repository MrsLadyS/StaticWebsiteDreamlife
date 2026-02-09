# Moneyling Dreamlife Marketing Site

Static marketing site for Moneyling Dreamlife Sim, designed for credit unions and financial institutions. The site uses funnel‑focused copy to drive demo requests and highlights member engagement outcomes.

## Structure

```
marketing-site/
├── assets/            # Marketing images
├── index.html          # Main landing page
├── css/
│   └── styles.css     # Global styles matching LMS branding
├── js/
│   └── main.js        # JavaScript for interactivity
└── README.md          # This file
```

## Features

- **Brand-Aligned Design**: Matches Moneyling brand visual system
  - Primary green color (#77a440)
  - Raleway and Open Sans typography
  - Consistent spacing and layout

- **Responsive Layout**: Mobile-first design that works on all devices

- **Navigation**:
  - Home, About, Tools, Courses, Contact US, Login
  - Mobile hamburger menu
  - Smooth scrolling

- **Funnel Copy**:
  - Credit‑union positioning and outcomes
  - Demo‑first CTA flow
  - About + Dreamlife context with official links

- **Images**:
  - Hero, in‑app experience, workshop, and CTA sections

- **Footer**:
  - Quick Links section
  - Contact information
  - Social media links (Facebook, Instagram, Pinterest, LinkedIn)
  - Copyright with dynamic year
  - "Developed by WorldWin Coder" attribution

## Local Development

### Option 1: Simple HTTP Server

```bash
# Using Python 3
cd marketing-site
python -m http.server 8000

# Using Node.js (if you have http-server installed)
npx http-server -p 8000
```

Then open http://localhost:8000 in your browser.

### Option 2: VS Code Live Server

1. Install the "Live Server" extension in VS Code
2. Right-click on `index.html`
3. Select "Open with Live Server"

## Deployment

This static site can be deployed to:
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

Simply upload the contents of this repository (or the `marketing-site` folder if using it as a subdirectory) to your hosting provider.

## Brand Colors

- **Primary Green**: #77a440
- **Primary Green Dark**: #466431
- **Gold**: #ccb269
- **Title Blue**: #2c4b8e
- **Warning/Orange**: #ea7d59

## Typography

- **Primary Font**: Raleway (Headings)
- **Secondary Font**: Open Sans (Body text)

## Links

- **LMS Courses**: https://lms.moneyling.org/courses/
- **Dreamlife App**: https://dreamlife.moneyling.org
- **Dreamlife App Overview**: https://moneyling.org/dreamlife-sim
- **About Moneyling**: https://moneyling.org/about
- **Contact Email**: info@moneyling.org
- **Privacy Policy**: https://moneyling.org/privacy
