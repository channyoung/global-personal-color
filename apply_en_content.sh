#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- en content batch
# Adds /en/guide/ section: 14 articles + index, wired into
# homepage/footer nav, sitemap updated with all new URLs.
# Run from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Adding en/guide content section..."
mkdir -p en/guide

cat > sitemap.xml <<'EOF_GPC'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xhtml="http://www.w3.org/1999/xhtml">

  <!-- Home pages (per language), cross-linked with hreflang -->
  <url>
    <loc>https://global-personal-color.vercel.app/ko/</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
    <xhtml:link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/"/>
    <xhtml:link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/"/>
    <xhtml:link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/"/>
    <xhtml:link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/"/>
    <xhtml:link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/"/>
    <xhtml:link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/"/>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
    <xhtml:link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/"/>
    <xhtml:link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/"/>
    <xhtml:link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/"/>
    <xhtml:link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/"/>
    <xhtml:link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/"/>
    <xhtml:link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/"/>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
    <xhtml:link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/"/>
    <xhtml:link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/"/>
    <xhtml:link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/"/>
    <xhtml:link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/"/>
    <xhtml:link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/"/>
    <xhtml:link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/"/>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
    <xhtml:link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/"/>
    <xhtml:link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/"/>
    <xhtml:link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/"/>
    <xhtml:link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/"/>
    <xhtml:link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/"/>
    <xhtml:link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/"/>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
    <xhtml:link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/"/>
    <xhtml:link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/"/>
    <xhtml:link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/"/>
    <xhtml:link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/"/>
    <xhtml:link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/"/>
    <xhtml:link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/"/>
  </url>

  <!-- About pages -->
  <url>
    <loc>https://global-personal-color.vercel.app/ko/about.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/about.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/about.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/about.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/about.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>

  <!-- Privacy pages -->
  <url>
    <loc>https://global-personal-color.vercel.app/ko/privacy.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/privacy.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/privacy.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/privacy.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/privacy.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>

  <!-- Terms pages -->
  <url>
    <loc>https://global-personal-color.vercel.app/ko/terms.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/terms.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/terms.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/terms.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/terms.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>

  <!-- Contact pages -->
  <url>
    <loc>https://global-personal-color.vercel.app/ko/contact.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/contact.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/contact.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/contact.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/contact.html</loc>
    <lastmod>2026-07-09</lastmod>
    <changefreq>yearly</changefreq>
    <priority>0.3</priority>
  </url>
  <!-- Guide articles (ko) -->
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/what-is-personal-color.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/spring-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/warm-vs-cool-tone.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/how-accurate-is-ai-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/draping-vs-online-quiz.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/summer-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/autumn-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/winter-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/lipstick-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/hair-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/interview-wedding-styling.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/photo-tips-for-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/color-trends-2026.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ko/guide/color-psychology-confidence.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <!-- Guide articles (en) -->
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/what-is-personal-color.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/spring-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/warm-vs-cool-tone.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/how-accurate-is-ai-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/draping-vs-online-quiz.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/summer-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/autumn-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/winter-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/lipstick-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/hair-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/interview-wedding-styling.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/photo-tips-for-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/color-trends-2026.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/en/guide/color-psychology-confidence.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
</urlset>
EOF_GPC

cat > en/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Personal Color Test | Find Your Best Seasonal Color</title>
    <meta name="description" content="Free online personal color test. Find your Spring, Summer, Autumn, or Winter tone using our AI camera and visual quiz. Discover your best styling guide.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Online Personal Color Test | Find Your Seasonal Tone">
    <meta property="og:description" content="Quick and easy personal color analysis using visual quiz and AI smart camera.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Online Personal Color Test | Find Your Seasonal Tone">
    <meta name="twitter:description" content="Quick and easy personal color analysis using visual quiz and AI smart camera.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "WebApplication",
      "name": "Find Your Personal Color",
      "url": "https://global-personal-color.vercel.app/en/",
      "description": "Free online personal color test. Find your Spring, Summer, Autumn, or Winter tone using our AI camera and visual quiz. Discover your best styling guide.",
      "applicationCategory": "LifestyleApplication",
      "operatingSystem": "Any",
      "inLanguage": "en",
      "offers": { "@type": "Offer", "price": "0", "priceCurrency": "USD" }
    }
    </script>
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "What is a personal color analysis?",
          "acceptedAnswer": { "@type": "Answer", "text": "It's the process of finding the optimal colors that harmonize with your natural skin tone." }
        },
        {
          "@type": "Question",
          "name": "How does the AI camera work?",
          "acceptedAnswer": { "@type": "Answer", "text": "It calculates the RGB values of your facial pixels to suggest a matching seasonal palette instantly." }
        }
      ]
    }
    </script>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><defs><linearGradient id='g' x1='0%25' y1='0%25' x2='100%25' y2='100%25'><stop offset='0%25' stop-color='%23E8825A'/><stop offset='33%25' stop-color='%237B93B5'/><stop offset='66%25' stop-color='%23A85C36'/><stop offset='100%25' stop-color='%232B3A55'/></linearGradient></defs><circle cx='50' cy='50' r='45' fill='url(%23g)'/></svg>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root{
            --canvas:#F3EFE6; --card:#FBF9F4; --ink:#2B2420; --ink-soft:#6E6156; --ink-faint:#9A9082;
            --brand:#6B3F4D; --brand-soft:#EADFE1;
            --spring:#E8825A; --spring-soft:#F6D9C6;
            --summer:#7B93B5; --summer-soft:#DCE4EF;
            --autumn:#A85C36; --autumn-soft:#E6D2C1;
            --winter:#2B3A55; --winter-soft:#D3D8E1;
            --border:rgba(43,36,32,0.12); --border-strong:rgba(43,36,32,0.22);
        }
        *{box-sizing:border-box;}
        html{scroll-behavior:smooth;}
        body{margin:0;background:var(--canvas);color:var(--ink);font-family:'Inter',-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;-webkit-font-smoothing:antialiased;line-height:1.6;}
        .serif{font-family:'Fraunces',serif;}
        .wrap{max-width:1080px;margin:0 auto;padding:0 24px;}
        a{color:inherit;}
        .hidden{display:none !important;}

        header{padding:26px 0 0;}
        .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;}
        .logo{font-family:'Fraunces',serif;font-weight:600;font-size:1.25rem;letter-spacing:-0.01em;color:var(--ink);text-decoration:none;}
        .lang-tabs{display:flex;gap:2px;background:var(--card);border:1px solid var(--border);border-radius:999px;padding:3px;}
        .lang-tabs a{font-size:0.72rem;font-weight:600;letter-spacing:0.03em;padding:6px 12px;border-radius:999px;color:var(--ink-soft);text-decoration:none;}
        .lang-tabs a.active{background:var(--ink);color:var(--canvas);}

        .hero{padding:56px 0 32px;display:grid;grid-template-columns:1.05fr 0.95fr;gap:48px;align-items:center;}
        @media (max-width:860px){.hero{grid-template-columns:1fr;padding:36px 0 16px;text-align:center;}}
        .eyebrow{display:inline-flex;align-items:center;gap:8px;font-size:0.72rem;font-weight:600;letter-spacing:0.14em;text-transform:uppercase;color:var(--brand);margin-bottom:20px;}
        .eyebrow::before{content:"";width:16px;height:1px;background:var(--brand);}
        @media (max-width:860px){.eyebrow{justify-content:center;}}
        h1{font-family:'Fraunces',serif;font-weight:500;font-size:2.7rem;line-height:1.18;letter-spacing:-0.015em;margin:0 0 20px;}
        @media (max-width:860px){h1{font-size:2.05rem;}}
        h1 em{font-style:italic;font-weight:400;color:var(--brand);}
        .lede{font-size:1rem;line-height:1.75;color:var(--ink-soft);max-width:440px;margin:0 0 30px;}
        @media (max-width:860px){.lede{margin-left:auto;margin-right:auto;}}
        .cta-row{display:flex;align-items:center;gap:16px;flex-wrap:wrap;}
        @media (max-width:860px){.cta-row{justify-content:center;}}
        .btn-primary{font-family:'Inter',sans-serif;font-weight:600;font-size:0.95rem;background:var(--ink);color:var(--canvas);border:none;padding:15px 28px;border-radius:10px;cursor:pointer;letter-spacing:-0.01em;transition:transform .15s ease, background .15s ease;}
        .btn-primary:hover{background:var(--brand);transform:translateY(-1px);}
        .cta-note{font-size:0.8rem;color:var(--ink-faint);}

        .fan{position:relative;height:300px;display:flex;align-items:center;justify-content:center;}
        .fcard{position:absolute;width:140px;height:196px;border-radius:14px;box-shadow:0 12px 28px rgba(43,36,32,0.14);display:flex;flex-direction:column;justify-content:space-between;padding:16px 15px;transition:transform .35s cubic-bezier(.2,.8,.2,1);border:1px solid rgba(255,255,255,0.5);}
        .fcard .fnum{font-family:'Fraunces',serif;font-size:0.68rem;letter-spacing:0.08em;text-transform:uppercase;opacity:0.75;}
        .fcard .fname{font-family:'Fraunces',serif;font-size:1.08rem;font-weight:500;}
        .fcard .fdots{display:flex;gap:6px;}
        .fcard .fdots span{width:12px;height:12px;border-radius:50%;display:inline-block;box-shadow:inset 0 0 0 1px rgba(0,0,0,0.06);}
        .f1{background:linear-gradient(165deg,var(--spring-soft),var(--spring) 130%);color:#5C2E14;transform:rotate(-11deg) translateX(-135px);}
        .f2{background:linear-gradient(165deg,var(--summer-soft),var(--summer) 130%);color:#1B2A42;transform:rotate(-4deg) translateX(-45px);}
        .f3{background:linear-gradient(165deg,var(--autumn-soft),var(--autumn) 130%);color:#4A2712;transform:rotate(4deg) translateX(45px);}
        .f4{background:linear-gradient(165deg,var(--winter-soft),var(--winter) 130%);color:#FFFFFF;transform:rotate(11deg) translateX(135px);}
        .fcard:hover{transform:translateY(-16px) scale(1.05) !important;z-index:5;box-shadow:0 20px 34px rgba(43,36,32,0.22);}
        @media (max-width:600px){.fan{height:220px;}.fcard{width:104px;height:150px;padding:12px 11px;}.fcard .fname{font-size:0.9rem;}.f1{transform:rotate(-11deg) translateX(-100px);}.f2{transform:rotate(-4deg) translateX(-33px);}.f3{transform:rotate(4deg) translateX(33px);}.f4{transform:rotate(11deg) translateX(100px);}}

        .tabs{display:flex;gap:0;border-top:1px solid var(--border);border-bottom:1px solid var(--border);margin:44px 0 0;overflow-x:auto;}
        .tab{flex:1;text-align:center;padding:15px 8px;font-size:0.78rem;font-weight:600;letter-spacing:0.04em;color:var(--ink-faint);text-decoration:none;border-bottom:2px solid transparent;margin-bottom:-1px;white-space:nowrap;transition:color .15s ease;}
        .tab:hover{color:var(--ink);}

        section.block{padding:56px 0;}
        .guide-grid{display:grid;grid-template-columns:0.95fr 1.05fr;gap:48px;align-items:start;}
        @media (max-width:860px){.guide-grid{grid-template-columns:1fr;gap:28px;}}
        .guide-grid h2{font-size:1.65rem;font-weight:500;line-height:1.3;margin:0 0 16px;}
        .guide-grid p{font-size:0.96rem;line-height:1.8;color:var(--ink-soft);margin:0 0 16px;}
        .guide-grid p:last-child{margin-bottom:0;}
        .index-card{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:24px 24px 20px;}
        .index-card .idxlabel{font-size:0.68rem;font-weight:700;letter-spacing:0.1em;text-transform:uppercase;color:var(--ink-faint);margin-bottom:12px;}
        .srow{display:flex;align-items:center;gap:14px;padding:12px 0;border-bottom:1px solid var(--border);}
        .srow:last-child{border-bottom:none;}
        .srow .chip{width:32px;height:32px;border-radius:9px;flex-shrink:0;box-shadow:inset 0 0 0 1px rgba(0,0,0,0.06);}
        .srow .stxt strong{display:block;font-size:0.9rem;font-weight:600;}
        .srow .stxt span{font-size:0.8rem;color:var(--ink-soft);}
        .chip-spring{background:var(--spring);} .chip-summer{background:var(--summer);}
        .chip-autumn{background:var(--autumn);} .chip-winter{background:var(--winter);}

        .card-panel{background:var(--card);border:1px solid var(--border);border-radius:16px;padding:34px;max-width:620px;margin:0 auto;}
        h3.panel-title{font-family:'Fraunces',serif;font-weight:500;font-size:1.3rem;margin:0 0 8px;text-align:center;}
        p.panel-sub{text-align:center;color:var(--ink-soft);font-size:0.92rem;margin:0 0 22px;}

        .btn{display:block;width:100%;padding:15px;background:var(--ink);color:var(--canvas);border:none;border-radius:10px;font-size:0.96rem;font-weight:600;font-family:'Inter',sans-serif;cursor:pointer;transition:all .15s ease;text-align:center;margin-top:14px;}
        .btn:hover{background:var(--brand);transform:translateY(-1px);}
        .btn-secondary{background:transparent;color:var(--ink);border:1px solid var(--border-strong);}
        .btn-secondary:hover{background:var(--border);color:var(--ink);}

        .progress-container{background:var(--border);border-radius:10px;height:6px;width:100%;margin-bottom:24px;overflow:hidden;}
        #progress{background:var(--brand);height:100%;width:0%;transition:width .3s ease;}
        #question-text{font-family:'Fraunces',serif;font-weight:500;font-size:1.15rem;text-align:center;margin:0 0 4px;}
        #answer-buttons{display:flex;flex-direction:column;gap:10px;margin-top:20px;}
        #answer-buttons .btn{background:var(--canvas);color:var(--ink);text-align:left;padding:15px 18px;border:1px solid var(--border);margin-top:0;font-weight:500;}
        #answer-buttons .btn:hover{border-color:var(--brand);background:var(--brand-soft);transform:none;}

        .badge{display:inline-block;padding:6px 16px;background:var(--ink);color:var(--canvas);border-radius:20px;font-weight:600;font-size:1.05rem;margin-bottom:14px;font-family:'Fraunces',serif;}
        #color-palette-display{display:flex;gap:13px;margin:18px 0;justify-content:center;}
        #best-color-title,#match-guide-title{font-family:'Fraunces',serif;font-weight:500;font-size:1.02rem;text-align:center;margin:22px 0 12px;color:var(--ink);}
        #result-description{text-align:center;color:var(--ink-soft);font-size:0.94rem;}
        #result-tags{text-align:center;}

        .action-btn{margin-bottom:12px;}
        .camera-wrapper{position:relative;width:100%;overflow:hidden;border-radius:12px;margin-top:14px;background:#000;}
        #webcam{width:100%;height:auto;display:block;transform:scaleX(-1);}
        .face-overlay{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:60%;height:70%;border:2px dashed rgba(255,255,255,0.6);border-radius:50%;box-shadow:0 0 0 9999px rgba(0,0,0,0.4);pointer-events:none;}
        #camera-loading{text-align:center;padding:18px 0;font-weight:600;color:var(--brand);}

        .faq-list details{background:var(--card);border:1px solid var(--border);border-radius:12px;padding:18px 20px;margin-bottom:10px;}
        .faq-list summary{font-weight:600;font-size:0.96rem;cursor:pointer;list-style:none;display:flex;justify-content:space-between;align-items:center;}
        .faq-list summary::-webkit-details-marker{display:none;}
        .faq-list summary::after{content:"+";font-size:1.1rem;color:var(--ink-faint);font-weight:400;}
        .faq-list details[open] summary::after{content:"\2013";}
        .faq-list p{margin:12px 0 0;color:var(--ink-soft);font-size:0.9rem;line-height:1.7;}

        footer{padding:40px 0 56px;margin-top:8px;border-top:1px solid var(--border);text-align:center;}
        footer .flinks a{color:var(--ink-soft);text-decoration:none;font-size:0.85rem;margin:0 10px;}
        footer .flinks a:hover{color:var(--brand);}
        footer .fcopy{margin-top:14px;font-size:0.78rem;color:var(--ink-faint);}
    </style>
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" id="lang-ko">KO</a>
                <a href="/en/" id="lang-en" class="active">EN</a>
                <a href="/ja/" id="lang-ja">JA</a>
                <a href="/es/" id="lang-es">ES</a>
                <a href="/zh/" id="lang-zh">ZH</a>
            </div>
        </div>
    </header>

    <section class="wrap hero">
        <div>
            <div class="eyebrow">Personal Color Diagnosis</div>
            <h1>Every face has<br>its own <em>season</em></h1>
            <p class="lede">We diagnose your natural skin, eye, and hair color across four seasons, then find the palette that suits you best.</p>
            <div class="cta-row">
                <button class="btn-primary" onclick="startQuiz();document.getElementById('quiz-container').scrollIntoView({behavior:'smooth'});">Start your free diagnosis</button>
                <span class="cta-note">4 questions &middot; 1 minute</span>
            </div>
        </div>
        <div class="fan">
            <div class="fcard f1"><span class="fnum">01 &middot; Spring</span><span class="fname">Spring Warm</span><span class="fdots"><span style="background:#FF8C69"></span><span style="background:#FFD59A"></span><span style="background:#F6C9AD"></span></span></div>
            <div class="fcard f2"><span class="fnum">02 &middot; Summer</span><span class="fname">Summer Cool</span><span class="fdots"><span style="background:#B9C6DC"></span><span style="background:#DCE4EF"></span><span style="background:#8AA9D6"></span></span></div>
            <div class="fcard f3"><span class="fnum">03 &middot; Autumn</span><span class="fname">Autumn Warm</span><span class="fdots"><span style="background:#8C4A24"></span><span style="background:#C98452"></span><span style="background:#E6D2C1"></span></span></div>
            <div class="fcard f4"><span class="fnum">04 &middot; Winter</span><span class="fname">Winter Cool</span><span class="fdots"><span style="background:#FFFFFF"></span><span style="background:#7A8CA8"></span><span style="background:#12182A"></span></span></div>
        </div>
    </section>

    <div class="wrap">
        <div class="tabs">
            <a class="tab" href="#guide">Personal Color Guide</a>
            <a class="tab" href="#quiz-container">Diagnose</a>
            <a class="tab" href="#analysis-card-zone">AI</a>
            <a class="tab" href="#faq">FAQ</a>
        </div>
    </div>

    <section class="wrap block guide-grid" id="guide">
        <div>
            <h2 class="serif">Personal Color Guide</h2>
            <p>Personal color is the curated palette that best complements your natural skin undertones, eyes, and hair. Discovering your tone enhances your radiance.</p>
            <p>Every individual is born with unique skin undertones and eye colors. Personal color analysis classifies these traits into four distinct seasons: Spring, Summer, Autumn, and Winter. Understanding your specific palette helps reduce shopping failures and dramatically improves your makeup and styling choices.</p>
            <p><a href="/en/guide/" style="color:var(--brand);font-weight:600;text-decoration:none;">Browse the full Personal Color Guide &rarr;</a></p>
        </div>
        <div class="index-card">
            <div class="idxlabel">4 Seasons at a glance</div>
            <div class="srow"><span class="chip chip-spring"></span><div class="stxt"><strong>Spring Warm</strong><span>Taylor Swift, Blake Lively &middot; Bright peach, coral</span></div></div>
            <div class="srow"><span class="chip chip-summer"></span><div class="stxt"><strong>Summer Cool</strong><span>Margot Robbie, Elle Fanning &middot; Soft lavender, sky blue</span></div></div>
            <div class="srow"><span class="chip chip-autumn"></span><div class="stxt"><strong>Autumn Warm</strong><span>Zendaya, Jennifer Lopez &middot; Rich khaki, burgundy</span></div></div>
            <div class="srow"><span class="chip chip-winter"></span><div class="stxt"><strong>Winter Cool</strong><span>Anne Hathaway, Dua Lipa &middot; Crisp black, navy</span></div></div>
        </div>
    </section>

    <section class="wrap block" id="quiz-container">
        <div class="card-panel">
            <div id="start-view">
                <h3 class="panel-title">🎨 Personal Color Analysis Test</h3>
                <p class="panel-sub">Find your perfect seasonal palette through a few simple visual questions.</p>
                <button id="start-btn" class="btn">Start Analysis Quiz</button>
            </div>

            <div id="question-view" class="hidden">
                <div class="progress-container"><div id="progress"></div></div>
                <h3 id="question-text">Question Loading...</h3>
                <div id="answer-buttons"></div>
            </div>

            <div id="result-view" class="hidden">
                <h3 class="panel-title">🎉 Your Personal Color Result</h3>
                <div id="result-tags"></div>
                <p id="result-description"></p>
                <h4 id="best-color-title"></h4>
                <div id="color-palette-display"></div>
                <h4 id="match-guide-title"></h4>
                <button id="restart-btn" class="btn btn-secondary">Restart Quiz</button>
            </div>
        </div>
    </section>

    <section class="wrap block" id="analysis-card-zone">
        <div class="card-panel">
            <h3 class="panel-title">📸 AI Smart Analysis (Beta)</h3>
            <p class="panel-sub">Please use a well-lit front-facing photo for accurate analysis. No data leaves your device.</p>

            <button id="init-cam-btn" class="btn action-btn">Activate Live Camera</button>
            <button id="trigger-file-btn" class="btn btn-secondary action-btn">📁 Upload Local Photo</button>

            <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">

            <div id="camera-zone" class="hidden">
                <div class="camera-wrapper">
                    <video id="webcam" autoplay playsinline muted></video>
                    <div class="face-overlay"></div>
                </div>
                <button id="capture-btn" class="btn">📸 Take Photo & Analyze</button>
            </div>

            <div id="camera-loading" class="hidden">⏳ AI Analyzing Skin Tone...</div>
            <canvas id="calc-canvas" class="hidden"></canvas>
        </div>
    </section>

    <section class="wrap block" id="faq" style="max-width:760px;">
        <h2 class="serif" style="text-align:center;margin-bottom:24px;">Frequently asked questions</h2>
        <div class="faq-list">
            <details>
                <summary>What is a personal color analysis?</summary>
                <p>It's the process of finding the optimal colors that harmonize with your natural skin tone.</p>
            </details>
            <details>
                <summary>How does the AI camera work?</summary>
                <p>It calculates the RGB values of your facial pixels to suggest a matching seasonal palette instantly.</p>
            </details>
        </div>
    </section>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>

    <script>
        const camErrorMsg = "Camera access error. Please check your permissions, or use the [Upload Local Photo] option instead.";
    </script>
    <script src="script.js"></script>
</body>
</html>
EOF_GPC

cat > en/about.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Find Your Personal Color</title>
    <meta name="description" content="Learn about Find Your Personal Color, a free tool that helps you discover your seasonal color palette and styling tips.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/about.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/about.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/about.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/about.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/about.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/about.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/about.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="About Us | Find Your Personal Color">
    <meta property="og:description" content="Learn about Find Your Personal Color, a free tool that helps you discover your seasonal color palette and styling tips.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/about.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="About Us | Find Your Personal Color">
    <meta name="twitter:description" content="Learn about Find Your Personal Color, a free tool that helps you discover your seasonal color palette and styling tips.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root{
            --canvas:#F3EFE6; --card:#FBF9F4; --ink:#2B2420; --ink-soft:#6E6156; --ink-faint:#9A9082;
            --brand:#6B3F4D; --brand-soft:#EADFE1;
            --border:rgba(43,36,32,0.12); --border-strong:rgba(43,36,32,0.22);
        }
        *{box-sizing:border-box;}
        body{margin:0;background:var(--canvas);color:var(--ink);font-family:'Inter',-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;-webkit-font-smoothing:antialiased;line-height:1.6;}
        .serif{font-family:'Fraunces',serif;}
        .wrap{max-width:760px;margin:0 auto;padding:0 24px;}
        a{color:inherit;}
        header{padding:26px 0;}
        .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;}
        .logo{font-family:'Fraunces',serif;font-weight:600;font-size:1.25rem;letter-spacing:-0.01em;color:var(--ink);text-decoration:none;}
        .lang-tabs{display:flex;gap:2px;background:var(--card);border:1px solid var(--border);border-radius:999px;padding:3px;}
        .lang-tabs a{font-size:0.72rem;font-weight:600;letter-spacing:0.03em;padding:6px 12px;border-radius:999px;color:var(--ink-soft);text-decoration:none;}
        .lang-tabs a.active{background:var(--ink);color:var(--canvas);}
        main.card-panel{background:var(--card);border:1px solid var(--border);border-radius:16px;padding:40px;margin:24px auto 48px;}
        main.card-panel h2{font-family:'Fraunces',serif;font-weight:500;font-size:1.7rem;margin:0 0 20px;}
        main.card-panel p{font-size:0.96rem;line-height:1.85;color:var(--ink-soft);margin:0 0 20px;}
        .btn{display:inline-block;padding:13px 26px;background:var(--ink);color:var(--canvas);border:none;border-radius:10px;font-size:0.92rem;font-weight:600;font-family:'Inter',sans-serif;cursor:pointer;transition:all .15s ease;text-align:center;text-decoration:none;}
        .btn:hover{background:var(--brand);transform:translateY(-1px);}
        footer{padding:0 0 56px;text-align:center;}
        footer .flinks a{color:var(--ink-soft);text-decoration:none;font-size:0.85rem;margin:0 10px;}
        footer .flinks a:hover{color:var(--brand);}
        footer .fcopy{margin-top:14px;font-size:0.78rem;color:var(--ink-faint);}
    </style>
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>About</h2>
        <p>Find Your Personal Color was created to help users diagnose their own colors and gain insights into styling. Our goal is to bring a little joy to everyday life through data-driven analysis.</p>
        <a href="/en/" class="btn">Go back home</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Find Your Personal Color</title>
    <meta name="description" content="Have questions about Find Your Personal Color? Reach out to us via email.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/contact.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Contact Us | Find Your Personal Color">
    <meta property="og:description" content="Have questions about Find Your Personal Color? Reach out to us via email.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/contact.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Contact Us | Find Your Personal Color">
    <meta name="twitter:description" content="Have questions about Find Your Personal Color? Reach out to us via email.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root{
            --canvas:#F3EFE6; --card:#FBF9F4; --ink:#2B2420; --ink-soft:#6E6156; --ink-faint:#9A9082;
            --brand:#6B3F4D; --brand-soft:#EADFE1;
            --border:rgba(43,36,32,0.12); --border-strong:rgba(43,36,32,0.22);
        }
        *{box-sizing:border-box;}
        body{margin:0;background:var(--canvas);color:var(--ink);font-family:'Inter',-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;-webkit-font-smoothing:antialiased;line-height:1.6;}
        .serif{font-family:'Fraunces',serif;}
        .wrap{max-width:760px;margin:0 auto;padding:0 24px;}
        a{color:inherit;}
        header{padding:26px 0;}
        .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;}
        .logo{font-family:'Fraunces',serif;font-weight:600;font-size:1.25rem;letter-spacing:-0.01em;color:var(--ink);text-decoration:none;}
        .lang-tabs{display:flex;gap:2px;background:var(--card);border:1px solid var(--border);border-radius:999px;padding:3px;}
        .lang-tabs a{font-size:0.72rem;font-weight:600;letter-spacing:0.03em;padding:6px 12px;border-radius:999px;color:var(--ink-soft);text-decoration:none;}
        .lang-tabs a.active{background:var(--ink);color:var(--canvas);}
        main.card-panel{background:var(--card);border:1px solid var(--border);border-radius:16px;padding:40px;margin:24px auto 48px;}
        main.card-panel h2{font-family:'Fraunces',serif;font-weight:500;font-size:1.7rem;margin:0 0 20px;}
        main.card-panel p{font-size:0.96rem;line-height:1.85;color:var(--ink-soft);margin:0 0 20px;}
        .btn{display:inline-block;padding:13px 26px;background:var(--ink);color:var(--canvas);border:none;border-radius:10px;font-size:0.92rem;font-weight:600;font-family:'Inter',sans-serif;cursor:pointer;transition:all .15s ease;text-align:center;text-decoration:none;}
        .btn:hover{background:var(--brand);transform:translateY(-1px);}
        footer{padding:0 0 56px;text-align:center;}
        footer .flinks a{color:var(--ink-soft);text-decoration:none;font-size:0.85rem;margin:0 10px;}
        footer .flinks a:hover{color:var(--brand);}
        footer .fcopy{margin-top:14px;font-size:0.78rem;color:var(--ink-faint);}
    </style>
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Contact</h2>
        <p>For any inquiries regarding this service, please contact us at the email below. We strive to respond to all inquiries promptly. Contact: seanstudio.contact@gmail.com</p>
        <a href="/en/" class="btn">Go back home</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/privacy.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy | Find Your Personal Color</title>
    <meta name="description" content="Privacy policy for Find Your Personal Color. We do not store any personal identification information.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/privacy.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/privacy.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/privacy.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/privacy.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/privacy.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/privacy.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/privacy.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Privacy Policy | Find Your Personal Color">
    <meta property="og:description" content="Privacy policy for Find Your Personal Color. We do not store any personal identification information.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/privacy.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Privacy Policy | Find Your Personal Color">
    <meta name="twitter:description" content="Privacy policy for Find Your Personal Color. We do not store any personal identification information.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root{
            --canvas:#F3EFE6; --card:#FBF9F4; --ink:#2B2420; --ink-soft:#6E6156; --ink-faint:#9A9082;
            --brand:#6B3F4D; --brand-soft:#EADFE1;
            --border:rgba(43,36,32,0.12); --border-strong:rgba(43,36,32,0.22);
        }
        *{box-sizing:border-box;}
        body{margin:0;background:var(--canvas);color:var(--ink);font-family:'Inter',-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;-webkit-font-smoothing:antialiased;line-height:1.6;}
        .serif{font-family:'Fraunces',serif;}
        .wrap{max-width:760px;margin:0 auto;padding:0 24px;}
        a{color:inherit;}
        header{padding:26px 0;}
        .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;}
        .logo{font-family:'Fraunces',serif;font-weight:600;font-size:1.25rem;letter-spacing:-0.01em;color:var(--ink);text-decoration:none;}
        .lang-tabs{display:flex;gap:2px;background:var(--card);border:1px solid var(--border);border-radius:999px;padding:3px;}
        .lang-tabs a{font-size:0.72rem;font-weight:600;letter-spacing:0.03em;padding:6px 12px;border-radius:999px;color:var(--ink-soft);text-decoration:none;}
        .lang-tabs a.active{background:var(--ink);color:var(--canvas);}
        main.card-panel{background:var(--card);border:1px solid var(--border);border-radius:16px;padding:40px;margin:24px auto 48px;}
        main.card-panel h2{font-family:'Fraunces',serif;font-weight:500;font-size:1.7rem;margin:0 0 20px;}
        main.card-panel p{font-size:0.96rem;line-height:1.85;color:var(--ink-soft);margin:0 0 20px;}
        .btn{display:inline-block;padding:13px 26px;background:var(--ink);color:var(--canvas);border:none;border-radius:10px;font-size:0.92rem;font-weight:600;font-family:'Inter',sans-serif;cursor:pointer;transition:all .15s ease;text-align:center;text-decoration:none;}
        .btn:hover{background:var(--brand);transform:translateY(-1px);}
        footer{padding:0 0 56px;text-align:center;}
        footer .flinks a{color:var(--ink-soft);text-decoration:none;font-size:0.85rem;margin:0 10px;}
        footer .flinks a:hover{color:var(--brand);}
        footer .fcopy{margin-top:14px;font-size:0.78rem;color:var(--ink-faint);}
    </style>
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Privacy Policy</h2>
        <p>Find Your Personal Color respects your privacy. We do not store any personal identification information. We use Google AdSense, which may use cookies to serve personalized advertisements.</p>
        <a href="/en/" class="btn">Go back home</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/terms.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms of Service | Find Your Personal Color</title>
    <meta name="description" content="Terms of service for Find Your Personal Color. All results are provided for reference purposes only.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/terms.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/terms.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/terms.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/terms.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/terms.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/terms.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/terms.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Terms of Service | Find Your Personal Color">
    <meta property="og:description" content="Terms of service for Find Your Personal Color. All results are provided for reference purposes only.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/terms.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Terms of Service | Find Your Personal Color">
    <meta name="twitter:description" content="Terms of service for Find Your Personal Color. All results are provided for reference purposes only.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root{
            --canvas:#F3EFE6; --card:#FBF9F4; --ink:#2B2420; --ink-soft:#6E6156; --ink-faint:#9A9082;
            --brand:#6B3F4D; --brand-soft:#EADFE1;
            --border:rgba(43,36,32,0.12); --border-strong:rgba(43,36,32,0.22);
        }
        *{box-sizing:border-box;}
        body{margin:0;background:var(--canvas);color:var(--ink);font-family:'Inter',-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;-webkit-font-smoothing:antialiased;line-height:1.6;}
        .serif{font-family:'Fraunces',serif;}
        .wrap{max-width:760px;margin:0 auto;padding:0 24px;}
        a{color:inherit;}
        header{padding:26px 0;}
        .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;}
        .logo{font-family:'Fraunces',serif;font-weight:600;font-size:1.25rem;letter-spacing:-0.01em;color:var(--ink);text-decoration:none;}
        .lang-tabs{display:flex;gap:2px;background:var(--card);border:1px solid var(--border);border-radius:999px;padding:3px;}
        .lang-tabs a{font-size:0.72rem;font-weight:600;letter-spacing:0.03em;padding:6px 12px;border-radius:999px;color:var(--ink-soft);text-decoration:none;}
        .lang-tabs a.active{background:var(--ink);color:var(--canvas);}
        main.card-panel{background:var(--card);border:1px solid var(--border);border-radius:16px;padding:40px;margin:24px auto 48px;}
        main.card-panel h2{font-family:'Fraunces',serif;font-weight:500;font-size:1.7rem;margin:0 0 20px;}
        main.card-panel p{font-size:0.96rem;line-height:1.85;color:var(--ink-soft);margin:0 0 20px;}
        .btn{display:inline-block;padding:13px 26px;background:var(--ink);color:var(--canvas);border:none;border-radius:10px;font-size:0.92rem;font-weight:600;font-family:'Inter',sans-serif;cursor:pointer;transition:all .15s ease;text-align:center;text-decoration:none;}
        .btn:hover{background:var(--brand);transform:translateY(-1px);}
        footer{padding:0 0 56px;text-align:center;}
        footer .flinks a{color:var(--ink-soft);text-decoration:none;font-size:0.85rem;margin:0 10px;}
        footer .flinks a:hover{color:var(--brand);}
        footer .fcopy{margin-top:14px;font-size:0.78rem;color:var(--ink-faint);}
    </style>
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Terms of Service</h2>
        <p>All results provided are for reference purposes only and do not constitute professional advice. Users are expected to respect the rights of others while using this service.</p>
        <a href="/en/" class="btn">Go back home</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/guide.css <<'EOF_GPC'
:root{
    --canvas:#F3EFE6; --card:#FBF9F4; --ink:#2B2420; --ink-soft:#6E6156; --ink-faint:#9A9082;
    --brand:#6B3F4D; --brand-soft:#EADFE1;
    --spring:#E8825A; --spring-soft:#F6D9C6;
    --summer:#7B93B5; --summer-soft:#DCE4EF;
    --autumn:#A85C36; --autumn-soft:#E6D2C1;
    --winter:#2B3A55; --winter-soft:#D3D8E1;
    --border:rgba(43,36,32,0.12); --border-strong:rgba(43,36,32,0.22);
}
*{box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{margin:0;background:var(--canvas);color:var(--ink);font-family:'Inter',-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;-webkit-font-smoothing:antialiased;line-height:1.6;}
.serif{font-family:'Fraunces',serif;}
.wrap{max-width:1080px;margin:0 auto;padding:0 24px;}
.narrow{max-width:700px;}
a{color:inherit;}

/* header (shared component) */
header{padding:26px 0 0;}
.nav{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;}
.logo{font-family:'Fraunces',serif;font-weight:600;font-size:1.25rem;letter-spacing:-0.01em;color:var(--ink);text-decoration:none;}
.lang-tabs{display:flex;gap:2px;background:var(--card);border:1px solid var(--border);border-radius:999px;padding:3px;}
.lang-tabs a{font-size:0.72rem;font-weight:600;letter-spacing:0.03em;padding:6px 12px;border-radius:999px;color:var(--ink-soft);text-decoration:none;}
.lang-tabs a.active{background:var(--ink);color:var(--canvas);}

/* breadcrumb */
.crumb{font-size:0.8rem;color:var(--ink-faint);margin:28px 0 0;}
.crumb a{text-decoration:none;color:var(--ink-faint);}
.crumb a:hover{color:var(--brand);}

/* tag pill */
.tag{display:inline-block;font-size:0.7rem;font-weight:700;letter-spacing:0.08em;text-transform:uppercase;padding:5px 12px;border-radius:999px;margin-bottom:18px;}
.tag-basic{background:var(--brand-soft);color:var(--brand);}
.tag-spring{background:var(--spring-soft);color:#7A3B1C;}
.tag-summer{background:var(--summer-soft);color:#1B2A42;}
.tag-autumn{background:var(--autumn-soft);color:#5C2E14;}
.tag-winter{background:var(--winter-soft);color:var(--winter);}
.tag-styling{background:#E4E7DC;color:#3F4A34;}
.tag-trend{background:#E9E2F3;color:#4A3A63;}

/* article listing (index page) */
.guide-hero{padding:20px 0 40px;text-align:center;}
.guide-hero h1{font-family:'Fraunces',serif;font-weight:500;font-size:2.2rem;margin:0 0 14px;letter-spacing:-0.01em;}
.guide-hero p{color:var(--ink-soft);font-size:1rem;max-width:520px;margin:0 auto;}
.article-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:22px;padding:0 0 60px;}
@media (max-width:860px){.article-grid{grid-template-columns:repeat(2,1fr);}}
@media (max-width:600px){.article-grid{grid-template-columns:1fr;}}
.article-card{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:24px;text-decoration:none;color:var(--ink);display:block;transition:transform .15s ease, box-shadow .15s ease;}
.article-card:hover{transform:translateY(-3px);box-shadow:0 12px 24px rgba(43,36,32,0.1);}
.article-card h3{font-family:'Fraunces',serif;font-weight:500;font-size:1.08rem;margin:0 0 10px;line-height:1.35;}
.article-card p{font-size:0.86rem;color:var(--ink-soft);line-height:1.6;margin:0;}
.article-card .meta{font-size:0.74rem;color:var(--ink-faint);margin-top:14px;}

/* article page */
.article-header{padding:20px 0 10px;max-width:700px;margin:0 auto;}
.article-header h1{font-family:'Fraunces',serif;font-weight:500;font-size:2.15rem;line-height:1.3;margin:0 0 16px;letter-spacing:-0.01em;}
@media (max-width:600px){.article-header h1{font-size:1.7rem;}}
.article-meta{font-size:0.82rem;color:var(--ink-faint);margin-bottom:8px;}

.article-body{max-width:700px;margin:0 auto;padding:20px 0 10px;}
.article-body p{font-size:1rem;line-height:1.9;color:var(--ink-soft);margin:0 0 22px;}
.article-body p.lead{font-size:1.1rem;color:var(--ink);line-height:1.75;}
.article-body h2{font-family:'Fraunces',serif;font-weight:500;font-size:1.5rem;margin:44px 0 18px;padding-top:24px;border-top:1px solid var(--border);}
.article-body h2:first-child{margin-top:0;padding-top:0;border-top:none;}
.article-body ul,.article-body ol{color:var(--ink-soft);font-size:1rem;line-height:1.9;padding-left:22px;margin:0 0 22px;}
.article-body li{margin-bottom:8px;}
.article-body strong{color:var(--ink);font-weight:600;}
.article-body blockquote{margin:28px 0;padding:4px 0 4px 22px;border-left:3px solid var(--brand);font-family:'Fraunces',serif;font-style:italic;font-size:1.15rem;color:var(--ink);}

/* season color strip */
.swatch-strip{display:flex;gap:12px;margin:8px 0 30px;flex-wrap:wrap;}
.swatch-strip .sw{flex:1;min-width:80px;border-radius:10px;padding:14px 12px;box-shadow:inset 0 0 0 1px rgba(0,0,0,0.06);}
.swatch-strip .sw span{display:block;font-size:0.72rem;font-weight:700;letter-spacing:0.03em;}

/* CTA card */
.cta-card{max-width:700px;margin:44px auto;background:var(--ink);color:var(--canvas);border-radius:16px;padding:32px;text-align:center;}
.cta-card h3{font-family:'Fraunces',serif;font-weight:500;font-size:1.3rem;margin:0 0 10px;}
.cta-card p{color:rgba(243,239,230,0.75);font-size:0.92rem;margin:0 0 20px;}
.cta-card a.btn{display:inline-block;background:var(--canvas);color:var(--ink);padding:13px 28px;border-radius:10px;text-decoration:none;font-weight:600;font-size:0.92rem;transition:transform .15s ease;}
.cta-card a.btn:hover{transform:translateY(-1px);}

/* related articles */
.related{max-width:900px;margin:56px auto 0;padding:0 0 60px;}
.related h3{font-family:'Fraunces',serif;font-weight:500;font-size:1.2rem;margin:0 0 20px;text-align:center;}
.related-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:18px;}
@media (max-width:700px){.related-grid{grid-template-columns:1fr;}}

footer{padding:40px 0 56px;margin-top:8px;border-top:1px solid var(--border);text-align:center;}
footer .flinks a{color:var(--ink-soft);text-decoration:none;font-size:0.85rem;margin:0 10px;}
footer .flinks a:hover{color:var(--brand);}
footer .fcopy{margin-top:14px;font-size:0.78rem;color:var(--ink-faint);}
EOF_GPC

cat > en/guide/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Color Guide &amp; Articles | Find Your Personal Color</title>
    <meta name="description" content="From personal color basics to complete seasonal guides, makeup, and styling tips — explore our full library of personal color articles.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Personal Color Guide &amp; Articles">
    <meta property="og:description" content="From personal color basics to complete seasonal guides, makeup, and styling tips.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / Guide</div>
    <div class="wrap guide-hero">
        <h1 class="serif">Personal Color Guide</h1>
        <p>From foundational theory to complete seasonal guides, makeup, and styling tips — explore our full library of personal color articles.</p>
    </div>
    <div class="wrap article-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Basics</span>
                <h3>What Is Personal Color? A Complete Beginner's Guide</h3>
                <p>From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.</p>
                <div class="meta">6 min read</div>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Spring Warm</span>
                <h3>The Complete Spring Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
                <div class="meta">7 min read</div>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Warm Tone vs Cool Tone: 5 Ways to Tell the Difference</h3>
                <p>From wrist veins to jewelry reactions, here are 5 simple self-checks you can do at home to figure out your undertone.</p>
                <div class="meta">5 min read</div>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>How Accurate Is AI Personal Color Diagnosis?</h3>
                <p>How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.</p>
                <div class="meta">6 min read</div>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Draping vs Online Quiz: Which Personal Color Method Should You Choose?</h3>
                <p>A side-by-side look at professional draping and AI/online quizzes &mdash; their pros, cons, and which one fits your situation.</p>
                <div class="meta">6 min read</div>
            </a>
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">Summer Cool</span>
                <h3>The Complete Summer Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Summer Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
                <div class="meta">7 min read</div>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">Autumn Warm</span>
                <h3>The Complete Autumn Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Autumn Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
                <div class="meta">7 min read</div>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Winter Cool</span>
                <h3>The Complete Winter Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
                <div class="meta">7 min read</div>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>How to Choose the Right Lipstick Color for Your Personal Color</h3>
                <p>From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.</p>
                <div class="meta">5 min read</div>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Best Hair Colors for Every Personal Color Type</h3>
                <p>Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.</p>
                <div class="meta">5 min read</div>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Nailing the Look: Interviews, Weddings, and Other Big Days</h3>
                <p>From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.</p>
                <div class="meta">6 min read</div>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Photo Tips for an Accurate Personal Color Diagnosis</h3>
                <p>A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.</p>
                <div class="meta">4 min read</div>
            </a>
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">Color Trends</span>
                <h3>2026 Color Trends and How to Wear Them With Your Personal Color</h3>
                <p>Pantone's Color of the Year for 2026, plus practical tips for adapting trend colors to whatever personal color you are.</p>
                <div class="meta">6 min read</div>
            </a>
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">Color Psychology</span>
                <h3>How Color Affects Confidence and First Impressions</h3>
                <p>A look at the basics of color psychology, and how wearing your personal color can shape both self-confidence and how others perceive you.</p>
                <div class="meta">5 min read</div>
            </a>
    </div>
    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/what-is-personal-color.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>What Is Personal Color? A Complete Beginner's Guide | Find Your Personal Color</title>
    <meta name="description" content="From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/what-is-personal-color.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="What Is Personal Color? A Complete Beginner's Guide">
    <meta property="og:description" content="From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/what-is-personal-color.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "What Is Personal Color? A Complete Beginner's Guide",
        "description": "From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/what-is-personal-color.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / What Is Personal Color? A Complete Beginner's Guide</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Basics</span>
        <h1 class="serif">What Is Personal Color? A Complete Beginner's Guide</h1>
        <div class="article-meta">6 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">You've probably heard the term "personal color," but what does it actually mean? In simple terms, your personal color is the set of hues that harmonize most naturally with your inborn skin, eye, and hair color.</p>
        <p>The same red lipstick can make one person look radiant and lively, while making another look tired and washed out. That difference comes down to an individual's skin undertone, value, and chroma &mdash; and personal color diagnosis is the process of analyzing that combination systematically.</p>
        <h2>The core principle: it's all about undertone</h2>
        <p>Skin color has two layers: the surface tone you see, and the undertone that shows through underneath. Undertones generally fall into two camps &mdash; warm (yellow or golden) and cool (pink or blue).</p>
        <p>If someone with a warm undertone wears cool-toned colors (icy lavender, silvery gray), their skin can look pale or unwell. If someone with a cool undertone wears warm colors (orange-leaning coral, golden camel), their face can look flushed or puffy. This is exactly why personal color has a real, visible effect on how you come across.</p>
        <h2>How the four seasons are determined</h2>
        <p>Personal color is typically sorted into four seasonal types: Spring, Summer, Autumn, and Winter. This isn't just a warm/cool split &mdash; it also factors in value (lightness) and chroma (saturation).</p>
        <ul>
            <li><strong>Spring Warm</strong>: Bright, warm undertone. Vivid, energetic colors suit this type best</li>
            <li><strong>Autumn Warm</strong>: Deep, warm undertone. Rich, muted colors suit this type best</li>
            <li><strong>Summer Cool</strong>: Light, cool undertone. Soft, pastel colors suit this type best</li>
            <li><strong>Winter Cool</strong>: Deep, cool undertone. High-contrast, vivid colors suit this type best</li>
        </ul>
        <p>So while Spring and Autumn are both "warm," they sit at opposite ends of brightness and saturation &mdash; and that finer distinction is what makes seasonal color recommendations so precise.</p>
        <h2>Why an accurate diagnosis actually matters</h2>
        <p>Knowing your personal color isn't just a fun exercise. First, it dramatically cuts down on buyer's remorse when shopping for clothes or makeup. Second, wearing the right colors visibly brightens your complexion and sharpens your features. Third, once your palette is clear, styling decisions become faster and less stressful.</p>
        <h2>Three ways to find out your type</h2>
        <p>There are three common approaches to personal color diagnosis.</p>
        <ul>
            <li><strong>Self-check</strong>: Quick tests like wrist vein color or sun reaction. Convenient, but not very precise</li>
            <li><strong>Professional draping</strong>: A consultant holds different colored fabrics up to your face. Highly accurate, but takes time and costs money</li>
            <li><strong>AI or online diagnosis</strong>: Analyzes skin pixel data from a photo or live camera. Free and instant, making it a great starting point</li>
        </ul>
        <p>If you need maximum precision, professional draping is still the gold standard. But for most people, an AI-based diagnosis is more than enough to point you in the right direction &mdash; especially when done in bright, natural light with a front-facing photo.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Warm Tone vs Cool Tone: 5 Ways to Tell the Difference</h3>
                <p>From wrist veins to jewelry reactions, here are 5 simple self-checks you can do at home to figure out your undertone.</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>How Accurate Is AI Personal Color Diagnosis?</h3>
                <p>How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.</p>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Draping vs Online Quiz: Which Personal Color Method Should You Choose?</h3>
                <p>A side-by-side look at professional draping and AI/online quizzes &mdash; their pros, cons, and which one fits your situation.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/spring-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Complete Spring Warm Guide: Colors, Makeup, and Styling | Find Your Personal Color</title>
    <meta name="description" content="Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/spring-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="The Complete Spring Warm Guide: Colors, Makeup, and Styling">
    <meta property="og:description" content="Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/spring-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "The Complete Spring Warm Guide: Colors, Makeup, and Styling",
        "description": "Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/spring-warm-guide.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / The Complete Spring Warm Guide: Colors, Makeup, and Styling</div>

    <div class="wrap article-header">
        <span class="tag tag-spring">Spring Warm</span>
        <h1 class="serif">The Complete Spring Warm Guide: Colors, Makeup, and Styling</h1>
        <div class="article-meta">7 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Spring Warm is defined by a bright, lively, and vibrant look. A warm, golden-leaning undertone paired with clear, saturated colors brings out this type's natural radiance.</p>
        <h2>Spring Warm traits</h2>
        <p>Spring Warms tend to have ivory or light golden skin undertones and tan easily in the sun. Eyes are often light brown or hazel, and hair tends to look best in light brown to golden-brown shades. The overall impression is fresh, youthful, and full of energy.</p>
        <h2>The best color palette for Spring Warm</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#FF8C69"><span style="color:#4A2712">Coral</span></div>
            <div class="sw" style="background:#FFD59A"><span style="color:#5C3D14">Peach</span></div>
            <div class="sw" style="background:#F6C9AD"><span style="color:#5C3D14">Honey Camel</span></div>
            <div class="sw" style="background:#8FBF6A"><span style="color:#1F3810">Light Green</span></div>
        </div>
        <p>Coral, peach, and honey camel bring out the natural brightness of a Spring Warm complexion. The key is choosing warm colors with a touch of saturation rather than washed-out pastels.</p>
        <h2>Makeup color guide</h2>
        <ul>
            <li><strong>Lips</strong>: Coral, salmon pink, and orange-leaning reds work beautifully</li>
            <li><strong>Blush</strong>: Peach and coral shades give a natural, healthy flush</li>
            <li><strong>Eyeshadow</strong>: Gold, khaki, and bronze warm-based shades are ideal</li>
            <li><strong>Colors to avoid</strong>: Blue-leaning burgundy or cool gray lipsticks</li>
        </ul>
        <h2>Clothing and accessory styling</h2>
        <p>Gold jewelry brightens the skin far more than silver. For clothing, build around warm, bright basics like ivory, camel, coral, and light khaki. Deep cool colors like pure black or icy navy can make the face look heavier and duller by comparison, so it's best to use them sparingly as accent pieces only.</p>
        <blockquote>The rule of thumb is "bright and warm" &mdash; Spring Warm shines brightest when both saturation and brightness are high.</blockquote>
        <h2>Colors Spring Warm should avoid</h2>
        <p>Colors with a strong blue undertone, like fuchsia pink or icy lavender, along with low-saturation neutrals like cool gray or true black, tend to dull Spring Warm's natural vibrancy. If you love these shades, keep them to areas farther from your face, like shoes or bags.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">Summer Cool</span>
                <h3>The Complete Summer Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Summer Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">Autumn Warm</span>
                <h3>The Complete Autumn Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Autumn Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>How to Choose the Right Lipstick Color for Your Personal Color</h3>
                <p>From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/warm-vs-cool-tone.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Warm Tone vs Cool Tone: 5 Ways to Tell the Difference | Find Your Personal Color</title>
    <meta name="description" content="From wrist veins to jewelry reactions, here are 5 simple self-checks you can do at home to figure out your undertone.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/warm-vs-cool-tone.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Warm Tone vs Cool Tone: 5 Ways to Tell the Difference">
    <meta property="og:description" content="From wrist veins to jewelry reactions, here are 5 simple self-checks you can do at home to figure out your undertone.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/warm-vs-cool-tone.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Warm Tone vs Cool Tone: 5 Ways to Tell the Difference",
        "description": "From wrist veins to jewelry reactions, here are 5 simple self-checks you can do at home to figure out your undertone.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/warm-vs-cool-tone.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / Warm Tone vs Cool Tone: 5 Ways to Tell the Difference</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Basics</span>
        <h1 class="serif">Warm Tone vs Cool Tone: 5 Ways to Tell the Difference</h1>
        <div class="article-meta">5 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Not sure whether you're warm or cool toned? Before booking a professional consultation, here are a few simple checks you can do at home. They're not perfectly precise, but they're a solid way to narrow things down.</p>
        <h2>1. Check your wrist veins</h2>
        <p>In bright natural light, look at the veins on the inside of your wrist. Greenish veins suggest a warm undertone; blue or purple veins suggest a cool undertone.</p>
        <h2>2. Gold vs silver jewelry</h2>
        <p>If gold jewelry makes your skin look brighter and healthier, you likely lean warm. If silver makes your skin look clearer and more polished, you likely lean cool.</p>
        <h2>3. How your skin reacts to the sun</h2>
        <p>If you tend to tan rather than burn after long sun exposure, that points to a warm undertone. If you burn or turn red easily, that points to a cool undertone.</p>
        <h2>4. Your natural lip and cheek color</h2>
        <p>Without makeup, if your lips and cheeks lean coral or orange, you likely lean warm. If they lean pink or rosy, you likely lean cool.</p>
        <h2>5. The white paper test</h2>
        <p>Hold a plain white sheet of paper next to your face and check a mirror. If your skin looks yellow or golden by comparison, you likely lean warm. If it looks pink or blue-ish, you likely lean cool.</p>
        <blockquote>If 3 or more of these checks point the same direction, that's a strong hint about your undertone &mdash; though lighting, makeup, and season can all skew the results.</blockquote>
        <p>Self-checks are just a rough starting point. For a more precise, seasonally-specific result, pairing this with an AI-based diagnosis is a great next step.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Basics</span>
                <h3>What Is Personal Color? A Complete Beginner's Guide</h3>
                <p>From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>How Accurate Is AI Personal Color Diagnosis?</h3>
                <p>How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Photo Tips for an Accurate Personal Color Diagnosis</h3>
                <p>A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/how-accurate-is-ai-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>How Accurate Is AI Personal Color Diagnosis? | Find Your Personal Color</title>
    <meta name="description" content="How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/how-accurate-is-ai-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="How Accurate Is AI Personal Color Diagnosis?">
    <meta property="og:description" content="How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/how-accurate-is-ai-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "How Accurate Is AI Personal Color Diagnosis?",
        "description": "How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/how-accurate-is-ai-diagnosis.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / How Accurate Is AI Personal Color Diagnosis?</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Basics</span>
        <h1 class="serif">How Accurate Is AI Personal Color Diagnosis?</h1>
        <div class="article-meta">6 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">The idea that "AI can diagnose your personal color from a single photo" sounds impressive &mdash; but how reliable is it, really? Understanding how it works (and where it falls short) helps you use it far more effectively.</p>
        <h2>How AI analysis actually works</h2>
        <p>Most AI personal color tools sample pixel data from the center of your face and calculate the average RGB (red, green, blue) values. From that average, the tool estimates how much red, yellow, or blue is present to determine warm vs cool undertone and overall brightness, then maps that to one of the four seasonal types.</p>
        <h2>Strengths of AI diagnosis</h2>
        <ul>
            <li>Free and gives instant results</li>
            <li>No human subjectivity &mdash; consistent criteria every time</li>
            <li>You can retest as many times as you want, anywhere</li>
        </ul>
        <h2>Limitations of AI diagnosis</h2>
        <ul>
            <li>Lighting conditions can significantly skew pixel color values</li>
            <li>Cameras and screens vary in color calibration, causing device-to-device differences</li>
            <li>Makeup, filters, or beautification apps can distort the analysis</li>
            <li>It can't yet replicate the nuanced side-by-side comparison of professional fabric draping</li>
        </ul>
        <h2>Photo tips to improve accuracy</h2>
        <ul>
            <li>Shoot near a window in natural daylight, ideally around midday</li>
            <li>Avoid colored lighting, including warm yellow incandescent bulbs</li>
            <li>Minimize makeup and look straight at the camera</li>
            <li>Skip filters and beautification apps entirely</li>
        </ul>
        <p>In short, AI diagnosis isn't a perfect, absolute answer &mdash; but it's a fast, convenient way to get pointed in the right direction. Follow the photo tips above to boost reliability, and pair it with professional draping if you want to fine-tune the result further.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Draping vs Online Quiz: Which Personal Color Method Should You Choose?</h3>
                <p>A side-by-side look at professional draping and AI/online quizzes &mdash; their pros, cons, and which one fits your situation.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Photo Tips for an Accurate Personal Color Diagnosis</h3>
                <p>A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Basics</span>
                <h3>What Is Personal Color? A Complete Beginner's Guide</h3>
                <p>From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/draping-vs-online-quiz.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Draping vs Online Quiz: Which Personal Color Method Should You Choose? | Find Your Personal Color</title>
    <meta name="description" content="A side-by-side look at professional draping and AI/online quizzes &mdash; their pros, cons, and which one fits your situation.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/draping-vs-online-quiz.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Draping vs Online Quiz: Which Personal Color Method Should You Choose?">
    <meta property="og:description" content="A side-by-side look at professional draping and AI/online quizzes &mdash; their pros, cons, and which one fits your situation.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/draping-vs-online-quiz.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Draping vs Online Quiz: Which Personal Color Method Should You Choose?",
        "description": "A side-by-side look at professional draping and AI/online quizzes &mdash; their pros, cons, and which one fits your situation.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/draping-vs-online-quiz.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / Draping vs Online Quiz: Which Personal Color Method Should You Choose?</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Basics</span>
        <h1 class="serif">Draping vs Online Quiz: Which Personal Color Method Should You Choose?</h1>
        <div class="article-meta">6 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">There are two main paths to discovering your personal color: professional draping and AI or online quizzes. They differ quite a bit in approach, cost, and precision.</p>
        <h2>What is draping?</h2>
        <p>Draping is the traditional method where a professional consultant holds different colored fabrics under your face and visually compares how your skin tone, eye brightness, and complexion shift with each one. Consultants typically use 100 or more fabric swatches for fine-grained comparison.</p>
        <h2>Pros and cons of draping</h2>
        <p>Because you're comparing real fabric directly against your skin, there's no screen or lighting distortion &mdash; making this the most precise method available. The trade-off is that it requires booking an appointment, traveling, and paying a fee, and results can vary somewhat depending on the consultant's experience and interpretation.</p>
        <h2>Pros and cons of AI/online diagnosis</h2>
        <p>AI diagnosis is free, instant, and repeatable as often as you like, using a consistent algorithmic standard every time. The downside is that lighting and camera conditions can introduce errors, so it won't match the precision of professional draping.</p>
        <h2>Which method should you choose?</h2>
        <p>If you're new to personal color, start with an AI or online quiz to get a rough sense of your undertone and likely season. If the result feels unclear or you want a more precise, finalized answer, follow up with a professional draping session to lock in the details.</p>
        <blockquote>Use AI to find your direction, then use draping to fine-tune it &mdash; the two methods complement each other rather than compete.</blockquote>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>How Accurate Is AI Personal Color Diagnosis?</h3>
                <p>How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Basics</span>
                <h3>What Is Personal Color? A Complete Beginner's Guide</h3>
                <p>From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Photo Tips for an Accurate Personal Color Diagnosis</h3>
                <p>A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/summer-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Complete Summer Cool Guide: Colors, Makeup, and Styling | Find Your Personal Color</title>
    <meta name="description" content="Everything about Summer Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/summer-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="The Complete Summer Cool Guide: Colors, Makeup, and Styling">
    <meta property="og:description" content="Everything about Summer Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/summer-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "The Complete Summer Cool Guide: Colors, Makeup, and Styling",
        "description": "Everything about Summer Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/summer-cool-guide.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / The Complete Summer Cool Guide: Colors, Makeup, and Styling</div>

    <div class="wrap article-header">
        <span class="tag tag-summer">Summer Cool</span>
        <h1 class="serif">The Complete Summer Cool Guide: Colors, Makeup, and Styling</h1>
        <div class="article-meta">7 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Summer Cool is defined by a soft, elegant, and refreshing look. A cool, blue-leaning undertone paired with soft pastel colors brings out this type's natural clarity.</p>
        <h2>Summer Cool traits</h2>
        <p>Summer Cools tend to have light pink or blue-leaning skin undertones and flush or redden easily in the sun. Eyes are often soft brown or grayish-brown, and hair tends to look best in ash brown or cool-toned dark brown. The overall impression is graceful, gentle, and effortlessly elegant.</p>
        <h2>The best color palette for Summer Cool</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B9A6D9"><span style="color:#2E1F42">Lavender</span></div>
            <div class="sw" style="background:#8AA9D6"><span style="color:#1B2A42">Sky Blue</span></div>
            <div class="sw" style="background:#E8A0BF"><span style="color:#4A1B2E">Rose Pink</span></div>
            <div class="sw" style="background:#C7CDD6"><span style="color:#2B2F38">Soft Gray</span></div>
        </div>
        <p>Lavender, sky blue, and rose pink bring out the natural clarity of a Summer Cool complexion. The key is choosing soft, low-saturation, light colors.</p>
        <h2>Makeup color guide</h2>
        <ul>
            <li><strong>Lips</strong>: Rose pink, mauve, and raspberry shades work beautifully</li>
            <li><strong>Blush</strong>: Soft pink gives a natural, gentle flush</li>
            <li><strong>Eyeshadow</strong>: Lavender and grayish-brown cool-based shades are ideal</li>
            <li><strong>Colors to avoid</strong>: Orange-leaning coral or yellow-based gold highlighters</li>
        </ul>
        <h2>Clothing and accessory styling</h2>
        <p>Silver or white gold jewelry brightens the skin far more than gold. For clothing, build around soft, cool basics like lavender, powder blue, and rose gray. Warm, muted colors like mustard yellow or deep brown can make the face look dull by comparison, so it's best to use them sparingly.</p>
        <h2>Colors Summer Cool should avoid</h2>
        <p>Strong warm colors like bright orange, mustard yellow, and deep khaki tend to dull Summer Cool's natural clarity. Save them for accessories or shoes rather than pieces near your face.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Spring Warm</span>
                <h3>The Complete Spring Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Winter Cool</span>
                <h3>The Complete Winter Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Best Hair Colors for Every Personal Color Type</h3>
                <p>Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/autumn-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Complete Autumn Warm Guide: Colors, Makeup, and Styling | Find Your Personal Color</title>
    <meta name="description" content="Everything about Autumn Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/autumn-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="The Complete Autumn Warm Guide: Colors, Makeup, and Styling">
    <meta property="og:description" content="Everything about Autumn Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/autumn-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "The Complete Autumn Warm Guide: Colors, Makeup, and Styling",
        "description": "Everything about Autumn Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/autumn-warm-guide.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / The Complete Autumn Warm Guide: Colors, Makeup, and Styling</div>

    <div class="wrap article-header">
        <span class="tag tag-autumn">Autumn Warm</span>
        <h1 class="serif">The Complete Autumn Warm Guide: Colors, Makeup, and Styling</h1>
        <div class="article-meta">7 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Autumn Warm is defined by a deep, rich, and sophisticated look. A warm, golden or olive-leaning undertone paired with muted, earthy colors brings out this type's natural depth.</p>
        <h2>Autumn Warm traits</h2>
        <p>Autumn Warms tend to have golden or olive-leaning skin undertones and tan deeply in the sun. Eyes are often deep brown or dark hazel, and hair tends to look best in dark brown or deep caramel shades. The overall impression is grounded, mature, and effortlessly luxurious.</p>
        <h2>The best color palette for Autumn Warm</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B85C38"><span style="color:#2E1608">Terracotta</span></div>
            <div class="sw" style="background:#8C7A3D"><span style="color:#2A2410">Khaki</span></div>
            <div class="sw" style="background:#7A3B1C"><span style="color:#F6D9C6">Burgundy Brown</span></div>
            <div class="sw" style="background:#C9A24B"><span style="color:#2A2008">Mustard</span></div>
        </div>
        <p>Terracotta, khaki, and mustard bring out the natural depth of an Autumn Warm complexion. The key is choosing muted, deeper warm tones.</p>
        <h2>Makeup color guide</h2>
        <ul>
            <li><strong>Lips</strong>: Brick red, terracotta, and brown shades work beautifully</li>
            <li><strong>Blush</strong>: Bronze and terracotta give a natural, sculpted warmth</li>
            <li><strong>Eyeshadow</strong>: Khaki, brown, and bronze-gold warm-based shades are ideal</li>
            <li><strong>Colors to avoid</strong>: Pink-leaning rose or icy lavender</li>
        </ul>
        <h2>Clothing and accessory styling</h2>
        <p>Gold, bronze, or antique gold jewelry enriches the skin beautifully. For clothing, build around deep, warm basics like khaki, camel, burgundy, and mustard. Pure white or icy pastels can make the face look flat by comparison, so use them as accents rather than main pieces.</p>
        <h2>Colors Autumn Warm should avoid</h2>
        <p>Strong cool, bright colors like lavender, icy pink, and true black tend to flatten Autumn Warm's natural depth. Swap true black for dark brown, and icy tones for warm neutrals, for a much better match.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Spring Warm</span>
                <h3>The Complete Spring Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Winter Cool</span>
                <h3>The Complete Winter Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>How to Choose the Right Lipstick Color for Your Personal Color</h3>
                <p>From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/winter-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Complete Winter Cool Guide: Colors, Makeup, and Styling | Find Your Personal Color</title>
    <meta name="description" content="Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/winter-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="The Complete Winter Cool Guide: Colors, Makeup, and Styling">
    <meta property="og:description" content="Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/winter-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "The Complete Winter Cool Guide: Colors, Makeup, and Styling",
        "description": "Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/winter-cool-guide.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / The Complete Winter Cool Guide: Colors, Makeup, and Styling</div>

    <div class="wrap article-header">
        <span class="tag tag-winter">Winter Cool</span>
        <h1 class="serif">The Complete Winter Cool Guide: Colors, Makeup, and Styling</h1>
        <div class="article-meta">7 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Winter Cool is defined by a modern, sharp, and charismatic look. A cool, blue or pink-leaning undertone paired with high-contrast, vivid colors brings out this type's natural intensity.</p>
        <h2>Winter Cool traits</h2>
        <p>Winter Cools tend to have clear, blue or pink-leaning fair skin and flush easily. Eyes are often deep dark brown or nearly black, and hair tends to look best in true black or ash-toned dark brown. The overall impression is striking, sharp, and effortlessly charismatic.</p>
        <h2>The best color palette for Winter Cool</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#12182A"><span style="color:#FFFFFF">Pure Black</span></div>
            <div class="sw" style="background:#FFFFFF"><span style="color:#12182A">Pure White</span></div>
            <div class="sw" style="background:#1A1A40"><span style="color:#FFFFFF">Navy</span></div>
            <div class="sw" style="background:#7A0BC0"><span style="color:#FFFFFF">Vivid Fuchsia</span></div>
        </div>
        <p>Pure black, white, navy, and vivid jewel tones like emerald or fuchsia bring out the natural sharpness of a Winter Cool complexion. The key is choosing high-saturation colors with strong contrast.</p>
        <h2>Makeup color guide</h2>
        <ul>
            <li><strong>Lips</strong>: Blue-red, wine, and vivid fuchsia shades work beautifully</li>
            <li><strong>Blush</strong>: Cool pink gives a crisp, defined flush</li>
            <li><strong>Eyeshadow</strong>: Black, gray, and silver high-saturation cool shades are ideal</li>
            <li><strong>Colors to avoid</strong>: Orange-leaning coral or muddy beige</li>
        </ul>
        <h2>Clothing and accessory styling</h2>
        <p>Silver, platinum, or white gold jewelry brings out the skin's natural sophistication. For clothing, build around black, white, and navy basics, then add bold pops of emerald or fuchsia for the full Winter Cool effect. Muddy, warm neutrals like beige or camel tend to wash the face out, so use them with caution.</p>
        <h2>Colors Winter Cool should avoid</h2>
        <p>Muted warm colors like mustard, khaki, and brown tend to dull Winter Cool's natural sharpness. Gray or black-based neutrals will always be a better match than warm ones.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">Summer Cool</span>
                <h3>The Complete Summer Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Summer Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">Autumn Warm</span>
                <h3>The Complete Autumn Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Autumn Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Best Hair Colors for Every Personal Color Type</h3>
                <p>Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/lipstick-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>How to Choose the Right Lipstick Color for Your Personal Color | Find Your Personal Color</title>
    <meta name="description" content="From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/lipstick-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="How to Choose the Right Lipstick Color for Your Personal Color">
    <meta property="og:description" content="From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/lipstick-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "How to Choose the Right Lipstick Color for Your Personal Color",
        "description": "From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/lipstick-color-guide.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / How to Choose the Right Lipstick Color for Your Personal Color</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">Styling Tips</span>
        <h1 class="serif">How to Choose the Right Lipstick Color for Your Personal Color</h1>
        <div class="article-meta">5 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Your lips are one of the first places people's eyes land on your face &mdash; which means a single lipstick swap can dramatically shift your entire look.</p>
        <h2>Why lip color has such a big impact</h2>
        <p>Because lips are a small, saturated area that naturally draws attention, a color that clashes with your undertone can throw off your whole face. On the flip side, the right lip color can make you look lively and put-together even with minimal other makeup.</p>
        <h2>Recommended lip colors by season</h2>
        <ul>
            <li><strong>Spring Warm</strong>: Coral, salmon pink, orange-leaning red</li>
            <li><strong>Summer Cool</strong>: Rose pink, mauve, raspberry</li>
            <li><strong>Autumn Warm</strong>: Brick red, terracotta, brown</li>
            <li><strong>Winter Cool</strong>: Blue-red, wine, vivid fuchsia</li>
        </ul>
        <h2>Does finish (matte vs glossy) matter too?</h2>
        <p>Finish matters almost as much as hue. Matte finishes render color more intensely and saturated, which suits the sharper looks of Winter Cool and Autumn Warm. Glossy, dewy finishes give a fresh, plump look that tends to suit Spring Warm and Summer Cool.</p>
        <h2>How to shop without regret</h2>
        <p>In-store lighting can distort how a color looks, so test the shade in natural light whenever possible, and swatch it directly on your lips rather than the back of your hand. Shade names vary between brands even within the "same" color family, so trust what you see on your own skin over review photos.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Best Hair Colors for Every Personal Color Type</h3>
                <p>Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Nailing the Look: Interviews, Weddings, and Other Big Days</h3>
                <p>From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Spring Warm</span>
                <h3>The Complete Spring Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/hair-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Best Hair Colors for Every Personal Color Type | Find Your Personal Color</title>
    <meta name="description" content="Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/hair-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Best Hair Colors for Every Personal Color Type">
    <meta property="og:description" content="Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/hair-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Best Hair Colors for Every Personal Color Type",
        "description": "Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/hair-color-guide.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / Best Hair Colors for Every Personal Color Type</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">Styling Tips</span>
        <h1 class="serif">Best Hair Colors for Every Personal Color Type</h1>
        <div class="article-meta">5 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Hair color frames your entire face, so getting it wrong can throw off your whole complexion &mdash; while getting it right can make your face look brighter and more alive.</p>
        <h2>How hair color affects your face</h2>
        <p>Because hair covers such a large area around your face, the light it reflects has a direct impact on how your skin tone reads. Choosing a hair color that clashes with your undertone can leave your complexion looking dull or washed out.</p>
        <h2>Recommended hair colors by season</h2>
        <ul>
            <li><strong>Spring Warm</strong>: Light brown, golden brown, honey blonde</li>
            <li><strong>Summer Cool</strong>: Ash brown, grayish brown</li>
            <li><strong>Autumn Warm</strong>: Dark brown, caramel, chocolate brown</li>
            <li><strong>Winter Cool</strong>: True black, ash dark brown</li>
        </ul>
        <h2>What to check before you dye</h2>
        <p>Since hair color is hard to undo once applied, hold color swatches up to your face beforehand to preview how each shade interacts with your skin. Also keep in mind that lighter colors typically require more upkeep, from root touch-ups to damage repair.</p>
        <h2>Using highlights and face-framing pieces</h2>
        <p>If a full dye job feels like too much commitment, adding brighter highlights just around your face is a great alternative. You still get the benefit for your complexion, with far less risk and commitment than an all-over color change.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>How to Choose the Right Lipstick Color for Your Personal Color</h3>
                <p>From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Nailing the Look: Interviews, Weddings, and Other Big Days</h3>
                <p>From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Winter Cool</span>
                <h3>The Complete Winter Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/interview-wedding-styling.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nailing the Look: Interviews, Weddings, and Other Big Days | Find Your Personal Color</title>
    <meta name="description" content="From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/interview-wedding-styling.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Nailing the Look: Interviews, Weddings, and Other Big Days">
    <meta property="og:description" content="From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/interview-wedding-styling.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Nailing the Look: Interviews, Weddings, and Other Big Days",
        "description": "From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/interview-wedding-styling.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / Nailing the Look: Interviews, Weddings, and Other Big Days</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">Styling Tips</span>
        <h1 class="serif">Nailing the Look: Interviews, Weddings, and Other Big Days</h1>
        <div class="article-meta">6 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Color choices matter even more on days that count. A little extra thought about your personal color can leave a lasting, effortless impression.</p>
        <h2>Why color matters more on important days</h2>
        <p>When you only have a short window to make a good impression, the colors you wear carry just as much weight as your expression or tone of voice. Colors that brighten your complexion make you appear more confident than you might even feel.</p>
        <h2>Interview outfit color guide</h2>
        <p>Interviews call for a sense of trust and competence. If you're warm-toned (Spring or Autumn), build a base of ivory or camel with a warm-toned inner layer for a pop of color. If you're cool-toned (Summer or Winter), build a base of white or navy with a cool-toned inner layer &mdash; polished, but still visibly radiant.</p>
        <h2>Wedding guest and celebration looks</h2>
        <p>For guest looks, the goal is looking festive without overshadowing the occasion. Spring Warms shine in coral or light camel, Summer Cools in lavender or dusty pink, Autumn Warms in terracotta or khaki, and Winter Cools in navy or burgundy.</p>
        <h2>Color combos that photograph well</h2>
        <p>Photos tend to mute colors slightly compared to real life, so it's smart to choose shades that are a touch more saturated than you normally would. And since the color closest to your face &mdash; your top &mdash; has the biggest visual impact, prioritize getting that right over your bottoms or accessories.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>How to Choose the Right Lipstick Color for Your Personal Color</h3>
                <p>From seasonal lip color picks to a foolproof way to test shades in-store, here's how to choose lipstick that actually works for you.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Best Hair Colors for Every Personal Color Type</h3>
                <p>Recommended hair colors by season, plus what to check before you dye and how to use highlights strategically.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Photo Tips for an Accurate Personal Color Diagnosis</h3>
                <p>A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/photo-tips-for-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photo Tips for an Accurate Personal Color Diagnosis | Find Your Personal Color</title>
    <meta name="description" content="A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/photo-tips-for-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Photo Tips for an Accurate Personal Color Diagnosis">
    <meta property="og:description" content="A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/photo-tips-for-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Photo Tips for an Accurate Personal Color Diagnosis",
        "description": "A practical checklist for the lighting, angle, and shooting conditions that make or break your AI diagnosis accuracy.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/photo-tips-for-diagnosis.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / Photo Tips for an Accurate Personal Color Diagnosis</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Basics</span>
        <h1 class="serif">Photo Tips for an Accurate Personal Color Diagnosis</h1>
        <div class="article-meta">4 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Since AI personal color diagnosis analyzes pixel data from a single photo, the conditions you shoot in have a huge effect on accuracy. A few small adjustments go a long way toward a more trustworthy result.</p>
        <h2>Why lighting matters most</h2>
        <p>Artificial light &mdash; especially warm, yellow-toned bulbs or colored lighting &mdash; can distort your true skin color in a photo. Natural daylight from a window, ideally in the morning or early afternoon when the sun isn't too harsh, gives the most reliable results.</p>
        <h2>Angle and distance</h2>
        <p>Shoot straight-on with your whole face centered in frame. Too close introduces lens distortion; too far leaves too little face data for the pixel analysis. An arm's-length distance is about right.</p>
        <h2>What to avoid</h2>
        <ul>
            <li>Beauty filters or editing apps</li>
            <li>Heavy foundation or tone-up cream</li>
            <li>Backlit shots (light source behind you)</li>
            <li>Mixed or colored indoor lighting</li>
        </ul>
        <h2>Quick pre-shot checklist</h2>
        <ul>
            <li>Are you near a window with natural light?</li>
            <li>Are you facing the camera directly?</li>
            <li>Have you turned off any filters or editing?</li>
            <li>Is your makeup kept to a minimum?</li>
        </ul>
        <p>Following this checklist alone noticeably improves the reliability of your AI diagnosis. If your result seems off, try reshooting at a different time of day or location and compare the two.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Basics</span>
                <h3>How Accurate Is AI Personal Color Diagnosis?</h3>
                <p>How AI personal color analysis actually works, its strengths and limits, and photo tips to boost accuracy.</p>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">Basics</span>
                <h3>Warm Tone vs Cool Tone: 5 Ways to Tell the Difference</h3>
                <p>From wrist veins to jewelry reactions, here are 5 simple self-checks you can do at home to figure out your undertone.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Nailing the Look: Interviews, Weddings, and Other Big Days</h3>
                <p>From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/color-trends-2026.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2026 Color Trends and How to Wear Them With Your Personal Color | Find Your Personal Color</title>
    <meta name="description" content="Pantone's Color of the Year for 2026, plus practical tips for adapting trend colors to whatever personal color you are.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/color-trends-2026.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="2026 Color Trends and How to Wear Them With Your Personal Color">
    <meta property="og:description" content="Pantone's Color of the Year for 2026, plus practical tips for adapting trend colors to whatever personal color you are.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/color-trends-2026.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "2026 Color Trends and How to Wear Them With Your Personal Color",
        "description": "Pantone's Color of the Year for 2026, plus practical tips for adapting trend colors to whatever personal color you are.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/color-trends-2026.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / 2026 Color Trends and How to Wear Them With Your Personal Color</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">Color Trends</span>
        <h1 class="serif">2026 Color Trends and How to Wear Them With Your Personal Color</h1>
        <div class="article-meta">6 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Every year's "color of the year" ripples through fashion and beauty. But blindly following a trend color isn't the smartest move &mdash; adapting it to your own personal color is what actually looks polished.</p>
        <h2>The defining colors of 2026</h2>
        <p>Pantone named Cloud Dancer &mdash; a soft, airy off-white &mdash; as its 2026 Color of the Year. Meanwhile, trend forecasters WGSN and Coloro named Transformative Teal, a deep blue-green, as their color of the year. Other standout shades getting attention include fuchsia, mint, aqua, amber haze, and sage green.</p>
        <h2>Adapting trend colors to your personal color</h2>
        <p>Any trend color can work for any personal color type with a small shift in undertone. Take Transformative Teal, for example: warm types can lean into a slightly greener version, while cool types can lean into a bluer version &mdash; both stay on-trend while looking far more natural on your skin.</p>
        <h2>How to use 2026 trends by season</h2>
        <ul>
            <li><strong>Spring Warm</strong>: Try amber haze or a warm-leaning fuchsia as an accent color</li>
            <li><strong>Summer Cool</strong>: Build around Cloud Dancer, aqua, or a soft mint</li>
            <li><strong>Autumn Warm</strong>: Work sage green or a warmer-leaning teal into outerwear</li>
            <li><strong>Winter Cool</strong>: Go bold with vivid Transformative Teal or a cool-leaning fuchsia</li>
        </ul>
        <p>Trend colors shift every year, but the fundamentals of your personal color &mdash; undertone, value, and chroma &mdash; never change. Translating trends into your own palette, rather than chasing them exactly as shown, is the styling strategy that actually lasts.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">Color Psychology</span>
                <h3>How Color Affects Confidence and First Impressions</h3>
                <p>A look at the basics of color psychology, and how wearing your personal color can shape both self-confidence and how others perceive you.</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Spring Warm</span>
                <h3>The Complete Spring Warm Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Spring Warm &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Winter Cool</span>
                <h3>The Complete Winter Cool Guide: Colors, Makeup, and Styling</h3>
                <p>Everything about Winter Cool &mdash; key traits, the best color palette, makeup picks, and clothing and accessory tips.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > en/guide/color-psychology-confidence.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>How Color Affects Confidence and First Impressions | Find Your Personal Color</title>
    <meta name="description" content="A look at the basics of color psychology, and how wearing your personal color can shape both self-confidence and how others perceive you.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/en/guide/color-psychology-confidence.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="How Color Affects Confidence and First Impressions">
    <meta property="og:description" content="A look at the basics of color psychology, and how wearing your personal color can shape both self-confidence and how others perceive you.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/en/guide/color-psychology-confidence.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "How Color Affects Confidence and First Impressions",
        "description": "A look at the basics of color psychology, and how wearing your personal color can shape both self-confidence and how others perceive you.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/en/guide/color-psychology-confidence.html",
        "inLanguage": "en"
    }
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/en/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/" class="active">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/en/">Home</a> / <a href="/en/guide/">Guide</a> / How Color Affects Confidence and First Impressions</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">Color Psychology</span>
        <h1 class="serif">How Color Affects Confidence and First Impressions</h1>
        <div class="article-meta">5 min read &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Color isn't just about looking good &mdash; it has a real, measurable effect on how we feel about ourselves and the impression we leave on others.</p>
        <h2>What is color psychology?</h2>
        <p>Color psychology studies how specific colors influence human emotion and behavior. Red is widely associated with energy and confidence, blue with trust and stability, and green with calm and balance &mdash; associations that show up again and again across research and culture.</p>
        <h2>How color shapes the impression you give</h2>
        <p>In situations where first impressions form fast &mdash; job interviews, first meetings &mdash; the colors you wear can act as an unconscious signal about your personality. Deep, saturated colors tend to read as confident and professional, while soft pastels tend to read as warm and approachable.</p>
        <h2>The link between personal color and self-confidence</h2>
        <p>Here's the interesting part: color psychology's effects are strongest when you're wearing a color that actually suits you. Putting on your personal color makes you genuinely happier with your own reflection &mdash; and that quietly shows up in your posture, expression, and tone of voice.</p>
        <h2>Using color psychology day to day</h2>
        <p>Reach for confidence-signaling colors before a big presentation, and softer tones for casual, relaxed meetups. Either way, stay within your personal color range as the foundation &mdash; even a "psychologically ideal" color can look off if it clashes with your natural undertone.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>Curious about your personal color?</h3>
        <p>Get a free diagnosis in under a minute with 4 questions and AI photo analysis.</p>
        <a href="/en/#quiz-container" class="btn">Take the quiz</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">You might also like</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">Color Trends</span>
                <h3>2026 Color Trends and How to Wear Them With Your Personal Color</h3>
                <p>Pantone's Color of the Year for 2026, plus practical tips for adapting trend colors to whatever personal color you are.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Basics</span>
                <h3>What Is Personal Color? A Complete Beginner's Guide</h3>
                <p>From the basic concept to the four-season system and how to get an accurate diagnosis — everything a beginner needs to know about personal color.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Styling Tips</span>
                <h3>Nailing the Look: Interviews, Weddings, and Other Big Days</h3>
                <p>From interview outfits to wedding guest looks, here's how to use your personal color to make a great impression when it matters most.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/en/guide/">Guide</a>
            <a href="/en/about.html">About</a>
            <a href="/en/privacy.html">Privacy Policy</a>
            <a href="/en/terms.html">Terms of Service</a>
            <a href="/en/contact.html">Contact</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

echo "Files written. Staging and committing..."
git add -A
git commit -m "Add en/guide content section: 14 articles + index, nav links, sitemap update"
git push

echo "Done. Vercel should redeploy automatically via the GitHub integration."
