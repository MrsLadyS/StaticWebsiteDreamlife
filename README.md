# Dreamlife Sim Marketing Landing Page

A standalone marketing funnel landing page for Dreamlife Sim, designed for Credit Unions and Financial Institutions.

## Features

- **Single HTML File**: Everything embedded for easy deployment
- **Responsive Design**: Mobile-first, works on all devices
- **Marketing Funnel Sections**:
  - Hero section with clear value proposition
  - About section explaining the platform
  - Features section highlighting core capabilities
  - Pricing section with flexible plans
  - Contact form for lead generation
- **SEO Optimized**: Meta tags, semantic HTML
- **Brand Consistent**: Uses Dreamlife Sim colors and fonts

## Deployment to GitHub Pages

1. This repository is already set up for GitHub Pages
2. Go to repository Settings → Pages
3. Select source branch (usually `main` or `master`)
4. Your site will be live at: `https://mrsladys.github.io/StaticWebsiteDreamlife/`

## Customization

### Update Contact Form
The contact form currently logs to console. To enable email sending:

1. Set up an email service (e.g., Formspree, EmailJS, or your own backend)
2. Update the JavaScript in `index.html` (around line 800) with your endpoint
3. Uncomment the fetch code and add your endpoint URL

### Update Colors
Colors are defined in the `:root` CSS variables at the top of the `<style>` section.

### Update Content
All content is in the HTML - simply edit the text in each section.

## File Structure

```
StaticWebsiteDreamlife/
├── index.html          # Complete landing page (single file)
└── README.md           # This file
```

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## License

© 2025 Moneyling. All rights reserved.
