#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- zh content batch (FINAL LANGUAGE)
# Adds /zh/guide/ section: 14 articles + index, wired into
# homepage/footer nav, sitemap updated with all new URLs.
# After this, all 5 languages have 14 articles each (70 total).
# Run from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Adding zh/guide content section..."
mkdir -p zh/guide

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
  <!-- Guide articles (ja) -->
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/what-is-personal-color.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/spring-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/warm-vs-cool-tone.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/how-accurate-is-ai-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/draping-vs-online-quiz.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/summer-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/autumn-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/winter-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/lipstick-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/hair-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/interview-wedding-styling.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/photo-tips-for-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/color-trends-2026.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/ja/guide/color-psychology-confidence.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <!-- Guide articles (es) -->
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/what-is-personal-color.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/spring-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/warm-vs-cool-tone.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/how-accurate-is-ai-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/draping-vs-online-quiz.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/summer-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/autumn-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/winter-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/lipstick-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/hair-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/interview-wedding-styling.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/photo-tips-for-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/color-trends-2026.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/es/guide/color-psychology-confidence.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <!-- Guide articles (zh) -->
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/what-is-personal-color.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/spring-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/warm-vs-cool-tone.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/how-accurate-is-ai-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/draping-vs-online-quiz.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/summer-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/autumn-warm-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/winter-cool-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/lipstick-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/hair-color-guide.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/interview-wedding-styling.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/photo-tips-for-diagnosis.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/color-trends-2026.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://global-personal-color.vercel.app/zh/guide/color-psychology-confidence.html</loc>
    <lastmod>2026-07-16</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
</urlset>
EOF_GPC

cat > zh/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人色彩测试 | 找到最适合你的四季色彩 | Find Your Personal Color</title>
    <meta name="description" content="免费在线个人色彩测试。通过简单的视觉问答和AI拍照分析，找到属于你的春夏秋冬色彩类型，获取专属配色方案与穿搭指南。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="个人色彩测试 | 找到最适合你的四季色彩">
    <meta property="og:description" content="通过视觉问答和AI智能拍照分析，快速免费诊断你的个人色彩。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="个人色彩测试 | 找到最适合你的四季色彩">
    <meta name="twitter:description" content="通过视觉问答和AI智能拍照分析，快速免费诊断你的个人色彩。">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "WebApplication",
      "name": "Find Your Personal Color",
      "url": "https://global-personal-color.vercel.app/zh/",
      "description": "免费在线个人色彩测试。通过简单的视觉问答和AI拍照分析，找到属于你的春夏秋冬色彩类型，获取专属配色方案与穿搭指南。",
      "applicationCategory": "LifestyleApplication",
      "operatingSystem": "Any",
      "inLanguage": "zh",
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
          "name": "什么是个人色彩诊断？",
          "acceptedAnswer": { "@type": "Answer", "text": "这是一种寻找与你天生肤色最协调的最佳色彩的方法。" }
        },
        {
          "@type": "Question",
          "name": "AI摄像头分析是如何工作的？",
          "acceptedAnswer": { "@type": "Answer", "text": "系统会计算你面部像素的RGB平均值，从而即时匹配相应的季节色彩类型。" }
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" id="lang-ko">KO</a>
                <a href="/en/" id="lang-en">EN</a>
                <a href="/ja/" id="lang-ja">JA</a>
                <a href="/es/" id="lang-es">ES</a>
                <a href="/zh/" id="lang-zh" class="active">ZH</a>
            </div>
        </div>
    </header>

    <section class="wrap hero">
        <div>
            <div class="eyebrow">Personal Color Diagnosis</div>
            <h1>你的脸也有<br>属于自己的<em>季节</em></h1>
            <p class="lede">通过四季分析你天生的肤色、瞳色与发色，为你找到最适合的专属色彩搭配。</p>
            <div class="cta-row">
                <button class="btn-primary" onclick="startQuiz();document.getElementById('quiz-container').scrollIntoView({behavior:'smooth'});">免费开始诊断</button>
                <span class="cta-note">4个问题 · 用时1分钟</span>
            </div>
        </div>
        <div class="fan">
            <div class="fcard f1"><span class="fnum">01 &middot; Spring</span><span class="fname">春季暖色</span><span class="fdots"><span style="background:#FF8C69"></span><span style="background:#FFD59A"></span><span style="background:#F6C9AD"></span></span></div>
            <div class="fcard f2"><span class="fnum">02 &middot; Summer</span><span class="fname">夏季冷色</span><span class="fdots"><span style="background:#B9C6DC"></span><span style="background:#DCE4EF"></span><span style="background:#8AA9D6"></span></span></div>
            <div class="fcard f3"><span class="fnum">03 &middot; Autumn</span><span class="fname">秋季暖色</span><span class="fdots"><span style="background:#8C4A24"></span><span style="background:#C98452"></span><span style="background:#E6D2C1"></span></span></div>
            <div class="fcard f4"><span class="fnum">04 &middot; Winter</span><span class="fname">冬季冷色</span><span class="fdots"><span style="background:#FFFFFF"></span><span style="background:#7A8CA8"></span><span style="background:#12182A"></span></span></div>
        </div>
    </section>

    <div class="wrap">
        <div class="tabs">
            <a class="tab" href="#guide">个人色彩指南</a>
            <a class="tab" href="#quiz-container">诊断</a>
            <a class="tab" href="#analysis-card-zone">AI</a>
            <a class="tab" href="#faq">FAQ</a>
        </div>
    </div>

    <section class="wrap block guide-grid" id="guide">
        <div>
            <h2 class="serif">个人色彩指南</h2>
            <p>个人色彩是与你天生的肤色、瞳色和发色最协调的核心色彩组合。找到适合自己的色调会让气色更加明亮，而不合适的色调则可能让皮肤看起来暗沉。</p>
            <p>每个人天生都拥有独特的肤色底调和瞳色。个人色彩分析将这些特征划分为春、夏、秋、冬四种季节类型。了解自己专属的色彩范围，能有效减少购物踩雷，并大幅提升妆容与穿搭的精准度。</p>
            <p><a href="/zh/guide/" style="color:var(--brand);font-weight:600;text-decoration:none;">查看完整的个人色彩指南 &rarr;</a></p>
        </div>
        <div class="index-card">
            <div class="idxlabel">4 Seasons at a glance</div>
            <div class="srow"><span class="chip chip-spring"></span><div class="stxt"><strong>春季暖色</strong><span>迪丽热巴, 杨紫 &middot; 明快的蜜桃色、珊瑚色</span></div></div>
            <div class="srow"><span class="chip chip-summer"></span><div class="stxt"><strong>夏季冷色</strong><span>刘亦菲, 倪妮 &middot; 清透的薰衣草紫、天空蓝</span></div></div>
            <div class="srow"><span class="chip chip-autumn"></span><div class="stxt"><strong>秋季暖色</strong><span>巩俐, 周迅 &middot; 浓郁的卡其色、酒红色</span></div></div>
            <div class="srow"><span class="chip chip-winter"></span><div class="stxt"><strong>冬季冷色</strong><span>章子怡, 范冰冰 &middot; 鲜明的黑色、藏青色</span></div></div>
        </div>
    </section>

    <section class="wrap block" id="quiz-container">
        <div class="card-panel">
            <div id="start-view">
                <h3 class="panel-title">🎨 个人色彩诊断测试</h3>
                <p class="panel-sub">只需回答几个简单的视觉问题，即可立即找到你的专属季节色彩类型。</p>
                <button id="start-btn" class="btn">开始诊断测试</button>
            </div>

            <div id="question-view" class="hidden">
                <div class="progress-container"><div id="progress"></div></div>
                <h3 id="question-text">Question Loading...</h3>
                <div id="answer-buttons"></div>
            </div>

            <div id="result-view" class="hidden">
                <h3 class="panel-title">🎉 你的个人色彩诊断结果</h3>
                <div id="result-tags"></div>
                <p id="result-description"></p>
                <h4 id="best-color-title"></h4>
                <div id="color-palette-display"></div>
                <h4 id="match-guide-title"></h4>
                <button id="restart-btn" class="btn btn-secondary">重新测试</button>
            </div>
        </div>
    </section>

    <section class="wrap block" id="analysis-card-zone">
        <div class="card-panel">
            <h3 class="panel-title">📸 AI智能分析诊断 (Beta)</h3>
            <p class="panel-sub">为了保证分析准确，请使用光线充足、正面清晰的照片。数据绝不会保存在外部服务器上。</p>

            <button id="init-cam-btn" class="btn action-btn">开启实时摄像头</button>
            <button id="trigger-file-btn" class="btn btn-secondary action-btn">📁 上传已有照片</button>

            <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">

            <div id="camera-zone" class="hidden">
                <div class="camera-wrapper">
                    <video id="webcam" autoplay playsinline muted></video>
                    <div class="face-overlay"></div>
                </div>
                <button id="capture-btn" class="btn">📸 拍照并进行AI分析</button>
            </div>

            <div id="camera-loading" class="hidden">⏳ AI正在实时分析肤色中...</div>
            <canvas id="calc-canvas" class="hidden"></canvas>
        </div>
    </section>

    <section class="wrap block" id="faq" style="max-width:760px;">
        <h2 class="serif" style="text-align:center;margin-bottom:24px;">常见问题</h2>
        <div class="faq-list">
            <details>
                <summary>什么是个人色彩诊断？</summary>
                <p>这是一种寻找与你天生肤色最协调的最佳色彩的方法。</p>
            </details>
            <details>
                <summary>AI摄像头分析是如何工作的？</summary>
                <p>系统会计算你面部像素的RGB平均值，从而即时匹配相应的季节色彩类型。</p>
            </details>
        </div>
    </section>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>

    <script>
        const camErrorMsg = "无法启动摄像头，请检查权限设置，或改用[上传照片]功能。";
    </script>
    <script src="script.js"></script>
</body>
</html>
EOF_GPC

cat > zh/about.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>关于我们 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color 帮助用户诊断专属的个人色彩，并获得穿搭造型灵感。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/about.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/about.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/about.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/about.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/about.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/about.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/about.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="关于我们 | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Color 帮助用户诊断专属的个人色彩，并获得穿搭造型灵感。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/about.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="关于我们 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color 帮助用户诊断专属的个人色彩，并获得穿搭造型灵感。">
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>关于我们</h2>
        <p>Find Your Personal Color 旨在帮助用户诊断专属的个人色彩，并获得穿搭造型方面的灵感。我们希望通过数据驱动的分析，为日常生活带来一点小小的乐趣。</p>
        <a href="/zh/" class="btn">返回首页</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>联系我们 | Find Your Personal Color</title>
    <meta name="description" content="对 Find Your Personal Color 服务有任何疑问？欢迎通过邮箱与我们联系。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/contact.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="联系我们 | Find Your Personal Color">
    <meta property="og:description" content="对 Find Your Personal Color 服务有任何疑问？欢迎通过邮箱与我们联系。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/contact.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="联系我们 | Find Your Personal Color">
    <meta name="twitter:description" content="对 Find Your Personal Color 服务有任何疑问？欢迎通过邮箱与我们联系。">
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>联系我们</h2>
        <p>如对本服务有任何疑问，请通过以下邮箱与我们联系，我们将尽快回复。联系邮箱：seanstudio.contact@gmail.com</p>
        <a href="/zh/" class="btn">返回首页</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/privacy.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>隐私政策 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color 隐私政策。我们不会存储任何个人身份信息。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/privacy.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/privacy.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/privacy.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/privacy.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/privacy.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/privacy.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/privacy.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="隐私政策 | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Color 隐私政策。我们不会存储任何个人身份信息。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/privacy.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="隐私政策 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color 隐私政策。我们不会存储任何个人身份信息。">
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>隐私政策</h2>
        <p>Find Your Personal Color 尊重用户的隐私。本服务不会存储任何个人身份信息。我们使用可能通过Cookie提供个性化广告的 Google AdSense。</p>
        <a href="/zh/" class="btn">返回首页</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/terms.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>使用条款 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color 使用条款。所有诊断结果仅供参考。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/terms.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/terms.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/terms.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/terms.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/terms.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/terms.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/terms.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="使用条款 | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Color 使用条款。所有诊断结果仅供参考。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/terms.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="使用条款 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color 使用条款。所有诊断结果仅供参考。">
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>使用条款</h2>
        <p>本服务提供的所有结果仅供参考，不能替代专业建议。用户在使用本服务期间应尊重他人的合法权益。</p>
        <a href="/zh/" class="btn">返回首页</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/guide.css <<'EOF_GPC'
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

cat > zh/guide/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人色彩指南与文章 | Find Your Personal Color</title>
    <meta name="description" content="从个人色彩基础知识到四季完整指南、妆容与穿搭技巧，探索我们的全部个人色彩文章。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:title" content="个人色彩指南与文章">
    <meta property="og:description" content="从个人色彩基础知识到四季完整指南、妆容与穿搭技巧。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / 指南</div>
    <div class="wrap guide-hero">
        <h1 class="serif">个人色彩指南</h1>
        <p>从基础理论到四季完整指南、妆容与穿搭技巧 — 探索我们的全部个人色彩文章。</p>
    </div>
    <div class="wrap article-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>什么是个人色彩？新手完全指南</h3>
                <p>从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。</p>
                <div class="meta">阅读时间 6分钟</div>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">春季暖色</span>
                <h3>春季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
                <div class="meta">阅读时间 7分钟</div>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>暖色调 vs 冷色调：5种简单判断方法</h3>
                <p>从手腕静脉到饰品反应，这里整理了5种在家就能完成的暖冷调自测方法。</p>
                <div class="meta">阅读时间 5分钟</div>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>AI个人色彩诊断到底准不准？</h3>
                <p>AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。</p>
                <div class="meta">阅读时间 6分钟</div>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>专业披布诊断 vs AI在线测试：该选哪个？</h3>
                <p>对比专业披布诊断与AI／在线测试的差异、各自的优缺点，以及在不同情况下该如何选择。</p>
                <div class="meta">阅读时间 6分钟</div>
            </a>
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">夏季冷色</span>
                <h3>夏季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从夏季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
                <div class="meta">阅读时间 7分钟</div>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">秋季暖色</span>
                <h3>秋季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从秋季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
                <div class="meta">阅读时间 7分钟</div>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">冬季冷色</span>
                <h3>冬季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
                <div class="meta">阅读时间 7分钟</div>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>如何根据个人色彩挑选口红颜色</h3>
                <p>从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。</p>
                <div class="meta">阅读时间 5分钟</div>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>不同个人色彩类型的推荐发色</h3>
                <p>四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。</p>
                <div class="meta">阅读时间 5分钟</div>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>面试、婚礼等重要场合的完美穿搭</h3>
                <p>从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。</p>
                <div class="meta">阅读时间 6分钟</div>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>提升诊断准确度的拍照技巧</h3>
                <p>整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。</p>
                <div class="meta">阅读时间 4分钟</div>
            </a>
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">色彩趋势</span>
                <h3>2026年色彩趋势，如何融入你的个人色彩</h3>
                <p>从Pantone发布的2026年度代表色，到如何将流行色巧妙融入自己个人色彩的实用技巧。</p>
                <div class="meta">阅读时间 6分钟</div>
            </a>
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">色彩心理学</span>
                <h3>色彩如何影响自信心与第一印象</h3>
                <p>从色彩心理学的基本原理，到个人色彩如何影响自我认同感与他人对你的第一印象。</p>
                <div class="meta">阅读时间 5分钟</div>
            </a>
    </div>
    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/what-is-personal-color.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>什么是个人色彩？新手完全指南 | Find Your Personal Color</title>
    <meta name="description" content="从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/what-is-personal-color.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="什么是个人色彩？新手完全指南">
    <meta property="og:description" content="从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/what-is-personal-color.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "什么是个人色彩？新手完全指南",
        "description": "从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/what-is-personal-color.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 什么是个人色彩？新手完全指南</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基础指南</span>
        <h1 class="serif">什么是个人色彩？新手完全指南</h1>
        <div class="article-meta">阅读时间 6分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">"个人色彩"这个词你可能听过很多次，但它究竟是什么意思呢？简单来说，个人色彩就是与你天生的肤色、瞳色和发色最为协调的一组颜色。</p>
        <p>同一支红色口红，有的人擦上去显得气色红润、神采奕奕，有的人擦上去却显得脸色暗沉、疲惫无力。造成这种差异的，正是每个人肤色底调、明度与饱和度的不同组合，而个人色彩诊断，就是系统地分析这一组合的过程。</p>
        <h2>核心原理：一切都取决于底调</h2>
        <p>肤色可以分为两层：肉眼看到的表层肤色，以及从皮肤内部透出的底调。底调大致分为暖调（偏黄、偏金）和冷调（偏粉、偏蓝）两大类。</p>
        <p>如果暖调的人穿冷色调的颜色（如冰蓝薰衣草紫、银灰色），皮肤可能会显得苍白无血色；反之，冷调的人穿暖色调的颜色（如偏橙的珊瑚色、金驼色），脸色可能会显得发红或浮肿。这正是个人色彩会实实在在影响你给人印象的原因。</p>
        <h2>四季分类是如何确定的</h2>
        <p>个人色彩通常被分为春、夏、秋、冬四种季节类型。这种分类不仅仅是简单的暖调冷调之分，还综合考虑了色彩的明度（明亮程度）和饱和度（鲜艳程度）。</p>
        <ul>
            <li><strong>春季暖色</strong>：明亮而温暖的底调，适合充满活力的鲜艳色彩</li>
            <li><strong>秋季暖色</strong>：深沉而温暖的底调，适合浓郁丰富的色彩</li>
            <li><strong>夏季冷色</strong>：明亮而柔和的冷调，适合柔和低调的粉彩色系</li>
            <li><strong>冬季冷色</strong>：深沉而鲜明的冷调，适合高对比度的强烈色彩</li>
        </ul>
        <p>也就是说，虽然春季和秋季都属于暖调，但在明度和饱和度上却处于两个极端，正是这种细致的区分，让色彩推荐能够变得非常精准。</p>
        <h2>为什么准确的诊断如此重要</h2>
        <p>了解自己的个人色彩，绝不仅仅是一种娱乐消遣。首先，它能大幅减少购买衣物或化妆品时踩雷的概率；其次，穿对颜色能让肤色看起来更加明亮，五官也更加立体；此外，一旦拥有清晰的专属色彩范围，购物和穿搭时所花费的时间与纠结也会随之减少。</p>
        <h2>三种诊断方法对比</h2>
        <p>确认个人色彩的方法大致可分为三种。</p>
        <ul>
            <li><strong>自我检测</strong>：通过手腕静脉颜色、日晒反应等大致判断暖冷调，方便但精准度较低</li>
            <li><strong>专业披布诊断</strong>：由专业顾问将不同颜色的布料贴近面部进行比较，精准度高但需要时间和费用</li>
            <li><strong>AI／在线诊断</strong>：通过照片或实时摄像头分析皮肤像素数据，免费且即时出结果，是入门的绝佳选择</li>
        </ul>
        <p>如果追求极致的精准度，专业披布诊断仍然是最可靠的方式。但对大多数人来说，AI诊断已经足以为你指明大致方向 —— 尤其是在光线充足的环境下正面拍摄时，可信度会更高。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>暖色调 vs 冷色调：5种简单判断方法</h3>
                <p>从手腕静脉到饰品反应，这里整理了5种在家就能完成的暖冷调自测方法。</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>AI个人色彩诊断到底准不准？</h3>
                <p>AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。</p>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>专业披布诊断 vs AI在线测试：该选哪个？</h3>
                <p>对比专业披布诊断与AI／在线测试的差异、各自的优缺点，以及在不同情况下该如何选择。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/spring-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>春季暖色完全指南：色彩搭配、妆容与穿搭 | Find Your Personal Color</title>
    <meta name="description" content="从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/spring-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="春季暖色完全指南：色彩搭配、妆容与穿搭">
    <meta property="og:description" content="从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/spring-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "春季暖色完全指南：色彩搭配、妆容与穿搭",
        "description": "从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/spring-warm-guide.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 春季暖色完全指南：色彩搭配、妆容与穿搭</div>

    <div class="wrap article-header">
        <span class="tag tag-spring">春季暖色</span>
        <h1 class="serif">春季暖色完全指南：色彩搭配、妆容与穿搭</h1>
        <div class="article-meta">阅读时间 7分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">春季暖色的特点是明亮、活泼、充满生机。带有黄金光泽的温暖底调，搭配清澈鲜艳的色彩，能将这一类型特有的生命力发挥到极致。</p>
        <h2>春季暖色的特征</h2>
        <p>春季暖色的人通常拥有象牙白或明亮金黄色的肤色底调，容易被晒黑。瞳色多为浅棕色或榛色，发色则以浅棕色到带有金色光泽的棕色系最为出彩。整体给人的印象是青春洋溢、充满活力。</p>
        <h2>春季暖色的最佳色彩搭配</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#FF8C69"><span style="color:#4A2712">珊瑚色</span></div>
            <div class="sw" style="background:#FFD59A"><span style="color:#5C3D14">蜜桃色</span></div>
            <div class="sw" style="background:#F6C9AD"><span style="color:#5C3D14">蜂蜜驼色</span></div>
            <div class="sw" style="background:#8FBF6A"><span style="color:#1F3810">浅绿色</span></div>
        </div>
        <p>珊瑚色、蜜桃色和蜂蜜驼色这类明亮温暖的颜色，能最大程度地衬托出春季暖色肌肤的光彩。选择带有一定饱和度的明亮颜色，而非过于褪色的粉彩，是关键所在。</p>
        <h2>妆容色彩指南</h2>
        <ul>
            <li><strong>唇色</strong>：珊瑚色、鲑鱼粉、偏橙的红色都非常适合</li>
            <li><strong>腮红</strong>：蜜桃色、珊瑚色系能打造自然健康的好气色</li>
            <li><strong>眼影</strong>：金色、卡其色、古铜色等暖调系眼影最为推荐</li>
            <li><strong>应避免的颜色</strong>：偏蓝的酒红色、冷调灰色系唇膏</li>
        </ul>
        <h2>服饰与配饰穿搭</h2>
        <p>相比银饰，金色配饰更能让肌肤显得光彩照人。服装颜色建议以象牙白、驼色、珊瑚色、浅卡其色等温暖明亮的色调为基础，这样搭配失误率较低。相反，纯黑或冷调深藏青这类深沉冷冽的颜色，容易让脸部显得暗沉沉重，建议只作为少量点缀色使用。</p>
        <blockquote>关键词是"明亮又温暖"——当饱和度和明度都处于较高水平时，春季暖色才能真正绽放光彩。</blockquote>
        <h2>春季暖色应避免的颜色</h2>
        <p>偏蓝的紫红色或冰感薰衣草紫，以及低饱和度的无彩色系（冷灰色、纯黑色），往往会削弱春季暖色特有的明亮气质。如果实在喜欢这些颜色，建议只用在鞋子、包包等远离脸部的单品上。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">夏季冷色</span>
                <h3>夏季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从夏季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">秋季暖色</span>
                <h3>秋季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从秋季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>如何根据个人色彩挑选口红颜色</h3>
                <p>从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/warm-vs-cool-tone.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>暖色调 vs 冷色调：5种简单判断方法 | Find Your Personal Color</title>
    <meta name="description" content="从手腕静脉到饰品反应，这里整理了5种在家就能完成的暖冷调自测方法。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/warm-vs-cool-tone.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="暖色调 vs 冷色调：5种简单判断方法">
    <meta property="og:description" content="从手腕静脉到饰品反应，这里整理了5种在家就能完成的暖冷调自测方法。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/warm-vs-cool-tone.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "暖色调 vs 冷色调：5种简单判断方法",
        "description": "从手腕静脉到饰品反应，这里整理了5种在家就能完成的暖冷调自测方法。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/warm-vs-cool-tone.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 暖色调 vs 冷色调：5种简单判断方法</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基础指南</span>
        <h1 class="serif">暖色调 vs 冷色调：5种简单判断方法</h1>
        <div class="article-meta">阅读时间 5分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">分不清自己是暖调还是冷调？在预约专业诊断之前，其实有一些在家就能轻松确认的方法。虽然不能做到百分百精准，但足以帮你大致判断方向。</p>
        <h2>1. 观察手腕静脉颜色</h2>
        <p>在明亮的自然光下，观察手腕内侧静脉的颜色。如果静脉偏绿色，暖调的可能性较大；如果偏蓝色或紫色，则更接近冷调。</p>
        <h2>2. 金饰 vs 银饰的反应</h2>
        <p>佩戴金饰时如果肤色显得明亮健康，说明更偏暖调；佩戴银饰时如果肤色显得更加通透干净，则更偏冷调。</p>
        <h2>3. 日晒后的皮肤反应</h2>
        <p>长时间日晒后，如果不容易发红而是自然晒黑，暖调的可能性较大；如果容易晒红甚至晒伤，则更接近冷调。</p>
        <h2>4. 天然的唇色与脸颊颜色</h2>
        <p>在不化妆的状态下，如果唇色和脸颊颜色偏珊瑚色或橙色，多为暖调；如果偏粉色或玫瑰色，则多为冷调。</p>
        <h2>5. 白纸对比测试</h2>
        <p>将一张白纸放在脸旁，对着镜子观察。如果肤色相比之下显得偏黄或偏金，暖调的可能性较大；如果显得偏粉或偏蓝，则更接近冷调。</p>
        <blockquote>如果5项测试中有3项以上指向同一方向，那大概率就是你的底调类型。不过要注意，光线、妆容和季节都可能影响测试结果，仅供参考。</blockquote>
        <p>自我检测终究只是一个大致的参考方向。如果想获得更精准、细分到四季类型的结果，建议搭配AI分析一起使用。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>什么是个人色彩？新手完全指南</h3>
                <p>从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>AI个人色彩诊断到底准不准？</h3>
                <p>AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>提升诊断准确度的拍照技巧</h3>
                <p>整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/how-accurate-is-ai-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI个人色彩诊断到底准不准？ | Find Your Personal Color</title>
    <meta name="description" content="AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/how-accurate-is-ai-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="AI个人色彩诊断到底准不准？">
    <meta property="og:description" content="AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/how-accurate-is-ai-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "AI个人色彩诊断到底准不准？",
        "description": "AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/how-accurate-is-ai-diagnosis.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / AI个人色彩诊断到底准不准？</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基础指南</span>
        <h1 class="serif">AI个人色彩诊断到底准不准？</h1>
        <div class="article-meta">阅读时间 6分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">"AI仅凭一张照片就能诊断个人色彩"，听起来很神奇，但真的可靠吗？了解AI分析的原理和局限，能帮助你更有效地利用这项工具。</p>
        <h2>AI分析是如何运作的</h2>
        <p>常见的AI个人色彩分析工具会采集面部中央区域的像素数据，计算RGB（红、绿、蓝）的平均值。通过这个平均值，分析红、黄、蓝三色的比例，从而判断是暖调还是冷调，以及明度的高低，最终归类到四季中的某一类型。</p>
        <h2>AI诊断的优势</h2>
        <ul>
            <li>免费且能立即获得结果</li>
            <li>不受人为主观判断影响，标准始终一致</li>
            <li>随时随地都可以反复测试</li>
        </ul>
        <h2>AI诊断的局限性</h2>
        <ul>
            <li>光线环境会显著影响像素颜色数值</li>
            <li>不同相机和屏幕的色彩校正方式不同，可能导致设备间存在误差</li>
            <li>化妆、滤镜或美颜App的使用，可能导致分析结果与真实肤色有偏差</li>
            <li>目前还无法完全替代专业披布诊断那样细致的实物对比</li>
        </ul>
        <h2>提升准确度的拍照技巧</h2>
        <ul>
            <li>在靠窗的自然光环境下，正午前后时段拍摄</li>
            <li>避免使用带色调的照明（如暖黄色白炽灯、彩色灯光）</li>
            <li>尽量素颜，正面直视镜头</li>
            <li>不使用任何滤镜或美颜软件</li>
        </ul>
        <p>总的来说，AI诊断并非绝对完美的答案，而是一种快速、便捷、能帮你找到大致方向的绝佳起点。遵循上述拍照技巧，能显著提升结果的可信度；如果需要更精确的确认，建议搭配专业披布诊断一起使用。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>专业披布诊断 vs AI在线测试：该选哪个？</h3>
                <p>对比专业披布诊断与AI／在线测试的差异、各自的优缺点，以及在不同情况下该如何选择。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>提升诊断准确度的拍照技巧</h3>
                <p>整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>什么是个人色彩？新手完全指南</h3>
                <p>从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/draping-vs-online-quiz.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>专业披布诊断 vs AI在线测试：该选哪个？ | Find Your Personal Color</title>
    <meta name="description" content="对比专业披布诊断与AI／在线测试的差异、各自的优缺点，以及在不同情况下该如何选择。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/draping-vs-online-quiz.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="专业披布诊断 vs AI在线测试：该选哪个？">
    <meta property="og:description" content="对比专业披布诊断与AI／在线测试的差异、各自的优缺点，以及在不同情况下该如何选择。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/draping-vs-online-quiz.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "专业披布诊断 vs AI在线测试：该选哪个？",
        "description": "对比专业披布诊断与AI／在线测试的差异、各自的优缺点，以及在不同情况下该如何选择。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/draping-vs-online-quiz.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 专业披布诊断 vs AI在线测试：该选哪个？</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基础指南</span>
        <h1 class="serif">专业披布诊断 vs AI在线测试：该选哪个？</h1>
        <div class="article-meta">阅读时间 6分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">个人色彩的诊断方法主要分为两种：专业披布诊断和AI／在线测试。这两种方式在流程、成本以及精准度上都有明显差异。</p>
        <h2>什么是披布诊断</h2>
        <p>披布诊断是一种传统的诊断方式，由专业顾问将不同颜色的布料直接贴近面部，通过肉眼观察肤色、眼神和气色的变化来进行对比。通常会使用100块以上的色布进行细致比较。</p>
        <h2>披布诊断的优势与局限</h2>
        <p>由于是将实物颜色直接贴近皮肤进行比较，不存在屏幕或光线造成的色彩失真，这是其最大的优势，也是目前最精准的方法。不过，它需要预约到店、耗费时间并支付费用，而且诊断结果也可能因顾问的经验和主观判断而有所不同。</p>
        <h2>AI／在线诊断的优势与局限</h2>
        <p>AI诊断免费、即时，并且可以随时反复使用，结果始终基于一致的算法标准。不过，光线和相机环境可能带来误差，因此精准度很难达到披布诊断的水平。</p>
        <h2>该选择哪种方法</h2>
        <p>如果你是第一次接触个人色彩，建议先通过AI在线诊断，大致了解自己的方向（是暖调还是冷调，更接近哪个季节类型）。如果结果不够明确，或者你想要更精确的最终答案，再进一步预约专业披布诊断来确定细节。</p>
        <blockquote>用AI找方向，用披布诊断做精修——这两种方法并非相互竞争，而是相辅相成的关系。</blockquote>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>AI个人色彩诊断到底准不准？</h3>
                <p>AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>什么是个人色彩？新手完全指南</h3>
                <p>从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>提升诊断准确度的拍照技巧</h3>
                <p>整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/summer-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>夏季冷色完全指南：色彩搭配、妆容与穿搭 | Find Your Personal Color</title>
    <meta name="description" content="从夏季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/summer-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="夏季冷色完全指南：色彩搭配、妆容与穿搭">
    <meta property="og:description" content="从夏季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/summer-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "夏季冷色完全指南：色彩搭配、妆容与穿搭",
        "description": "从夏季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/summer-cool-guide.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 夏季冷色完全指南：色彩搭配、妆容与穿搭</div>

    <div class="wrap article-header">
        <span class="tag tag-summer">夏季冷色</span>
        <h1 class="serif">夏季冷色完全指南：色彩搭配、妆容与穿搭</h1>
        <div class="article-meta">阅读时间 7分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">夏季冷色的特点是清透、柔和、优雅。带有蓝调的冷底调，搭配柔和的粉彩色系，能充分展现这一类型特有的清凉气质。</p>
        <h2>夏季冷色的特征</h2>
        <p>夏季冷色的人通常拥有偏粉或偏蓝的明亮肤色底调，日晒后容易泛红。瞳色多为柔和的棕色或灰棕色，发色则以灰棕色或冷调深棕色最为出彩。整体给人的印象是清纯优雅、气质出众。</p>
        <h2>夏季冷色的最佳色彩搭配</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B9A6D9"><span style="color:#2E1F42">薰衣草紫</span></div>
            <div class="sw" style="background:#8AA9D6"><span style="color:#1B2A42">天空蓝</span></div>
            <div class="sw" style="background:#E8A0BF"><span style="color:#4A1B2E">玫瑰粉</span></div>
            <div class="sw" style="background:#C7CDD6"><span style="color:#2B2F38">柔和灰</span></div>
        </div>
        <p>薰衣草紫、天空蓝和玫瑰粉这类柔和低调的粉彩色，能最大程度地衬托出夏季冷色肌肤的清透感。选择饱和度较低、明度较高的颜色，是关键所在。</p>
        <h2>妆容色彩指南</h2>
        <ul>
            <li><strong>唇色</strong>：玫瑰粉、雾紫色、树莓色都非常适合</li>
            <li><strong>腮红</strong>：柔和粉色系能打造自然好气色</li>
            <li><strong>眼影</strong>：薰衣草紫、灰棕色等冷调系眼影最为推荐</li>
            <li><strong>应避免的颜色</strong>：偏橙的珊瑚色、偏黄的金色高光</li>
        </ul>
        <h2>服饰与配饰穿搭</h2>
        <p>相比金饰，银饰或白金配饰更能让肌肤显得清透亮丽。服装颜色建议以薰衣草紫、粉蓝色、玫瑰灰等柔和冷调为基础，这样搭配失误率较低。相反，芥末黄或深棕色这类温暖浑浊的颜色，容易让脸部显得暗沉，建议只少量点缀使用。</p>
        <h2>夏季冷色应避免的颜色</h2>
        <p>鲜艳的橙色、芥末黄、深卡其色等暖调系颜色，往往会削弱夏季冷色特有的清透气质。建议只在配饰或鞋子等远离脸部的单品上使用。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">春季暖色</span>
                <h3>春季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">冬季冷色</span>
                <h3>冬季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>不同个人色彩类型的推荐发色</h3>
                <p>四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/autumn-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>秋季暖色完全指南：色彩搭配、妆容与穿搭 | Find Your Personal Color</title>
    <meta name="description" content="从秋季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/autumn-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="秋季暖色完全指南：色彩搭配、妆容与穿搭">
    <meta property="og:description" content="从秋季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/autumn-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "秋季暖色完全指南：色彩搭配、妆容与穿搭",
        "description": "从秋季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/autumn-warm-guide.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 秋季暖色完全指南：色彩搭配、妆容与穿搭</div>

    <div class="wrap article-header">
        <span class="tag tag-autumn">秋季暖色</span>
        <h1 class="serif">秋季暖色完全指南：色彩搭配、妆容与穿搭</h1>
        <div class="article-meta">阅读时间 7分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">秋季暖色的特点是深邃、丰盈、高级质感。带有浓郁金色或橄榄色的温暖底调，搭配沉稳有深度的色彩，能将这一类型特有的成熟魅力发挥到极致。</p>
        <h2>秋季暖色的特征</h2>
        <p>秋季暖色的人通常拥有金色或橄榄色调的深色肤色底调，容易晒黑且不易褪色。瞳色多为深棕色或深榛色，发色则以深棕色或浓郁驼色系最为出彩。整体给人的印象是沉稳大气、自带高级感。</p>
        <h2>秋季暖色的最佳色彩搭配</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B85C38"><span style="color:#2E1608">陶土色</span></div>
            <div class="sw" style="background:#8C7A3D"><span style="color:#2A2410">卡其色</span></div>
            <div class="sw" style="background:#7A3B1C"><span style="color:#F6D9C6">酒红棕</span></div>
            <div class="sw" style="background:#C9A24B"><span style="color:#2A2008">芥末色</span></div>
        </div>
        <p>陶土色、卡其色和芥末色这类浓郁深沉的大地色系，能最大程度地衬托出秋季暖色肌肤的深邃感。选择饱和度偏低、明度偏暗的暖色调，是关键所在。</p>
        <h2>妆容色彩指南</h2>
        <ul>
            <li><strong>唇色</strong>：砖红色、陶土色、棕色系都非常适合</li>
            <li><strong>腮红</strong>：古铜色、陶土色系能打造自然立体的轮廓感</li>
            <li><strong>眼影</strong>：卡其色、棕色、金铜色等暖调系眼影最为推荐</li>
            <li><strong>应避免的颜色</strong>：偏粉的玫瑰色、冰感薰衣草紫</li>
        </ul>
        <h2>服饰与配饰穿搭</h2>
        <p>金色、古铜色或做旧金色配饰能让肌肤显得更加丰盈有质感。服装颜色建议以卡其色、驼色、酒红色、芥末色等深沉温暖的色调为基础，这样搭配失误率较低。相反，纯白或冰感粉彩容易让脸部显得单调平淡，建议只作为点缀使用。</p>
        <h2>秋季暖色应避免的颜色</h2>
        <p>偏蓝的薰衣草紫、冰粉色、纯黑等冷冽明亮的颜色，往往会削弱秋季暖色特有的深邃感。建议用深棕色替代纯黑，用暖调中性色替代冰感色，会更加合适。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">春季暖色</span>
                <h3>春季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">冬季冷色</span>
                <h3>冬季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>如何根据个人色彩挑选口红颜色</h3>
                <p>从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/winter-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>冬季冷色完全指南：色彩搭配、妆容与穿搭 | Find Your Personal Color</title>
    <meta name="description" content="从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/winter-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="冬季冷色完全指南：色彩搭配、妆容与穿搭">
    <meta property="og:description" content="从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/winter-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "冬季冷色完全指南：色彩搭配、妆容与穿搭",
        "description": "从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/winter-cool-guide.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 冬季冷色完全指南：色彩搭配、妆容与穿搭</div>

    <div class="wrap article-header">
        <span class="tag tag-winter">冬季冷色</span>
        <h1 class="serif">冬季冷色完全指南：色彩搭配、妆容与穿搭</h1>
        <div class="article-meta">阅读时间 7分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">冬季冷色的特点是摩登、鲜明、极具个人魅力。带有蓝调或粉调的冷底调，搭配高对比度的鲜艳色彩，能将这一类型特有的强烈气场展现得淋漓尽致。</p>
        <h2>冬季冷色的特征</h2>
        <p>冬季冷色的人通常拥有偏蓝或偏粉、透亮白皙的肤色底调，容易泛红。瞳色多为深黑褐色或近乎纯黑，发色则以纯黑色或灰调深棕色最为出彩。整体给人的印象是鲜明立体、极具个人魅力。</p>
        <h2>冬季冷色的最佳色彩搭配</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#12182A"><span style="color:#FFFFFF">纯黑色</span></div>
            <div class="sw" style="background:#FFFFFF"><span style="color:#12182A">纯白色</span></div>
            <div class="sw" style="background:#1A1A40"><span style="color:#FFFFFF">藏青色</span></div>
            <div class="sw" style="background:#7A0BC0"><span style="color:#FFFFFF">鲜艳紫红色</span></div>
        </div>
        <p>纯黑、纯白、藏青色，以及鲜艳的祖母绿或紫红色等高对比度色彩，能最大程度地衬托出冬季冷色肌肤的鲜明立体感。选择饱和度高、明暗对比强烈的颜色，是关键所在。</p>
        <h2>妆容色彩指南</h2>
        <ul>
            <li><strong>唇色</strong>：蓝红色、酒红色、鲜艳紫红色都非常适合</li>
            <li><strong>腮红</strong>：冷调粉色系能打造分明立体的好气色</li>
            <li><strong>眼影</strong>：黑色、灰色、银色等高饱和度冷调眼影最为推荐</li>
            <li><strong>应避免的颜色</strong>：偏橙的珊瑚色、浑浊的米色</li>
        </ul>
        <h2>服饰与配饰穿搭</h2>
        <p>银饰、铂金或白金配饰最能凸显肌肤的精致感。服装颜色建议以黑色、白色、藏青色为基础，再搭配祖母绿或紫红色等高饱和度撞色作为点缀，冬季冷色特有的气场就会自然显现。相反，米色或驼色这类浑浊的暖调中性色容易让脸部显得模糊，需要谨慎使用。</p>
        <h2>冬季冷色应避免的颜色</h2>
        <p>芥末色、卡其色、棕色系等浑浊的暖调颜色，往往会削弱冬季冷色特有的鲜明气质。相比暖调中性色，选择灰色或黑色系的中性色会更加合适。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">夏季冷色</span>
                <h3>夏季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从夏季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">秋季暖色</span>
                <h3>秋季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从秋季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>不同个人色彩类型的推荐发色</h3>
                <p>四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/lipstick-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>如何根据个人色彩挑选口红颜色 | Find Your Personal Color</title>
    <meta name="description" content="从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/lipstick-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="如何根据个人色彩挑选口红颜色">
    <meta property="og:description" content="从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/lipstick-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "如何根据个人色彩挑选口红颜色",
        "description": "从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/lipstick-color-guide.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 如何根据个人色彩挑选口红颜色</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">穿搭技巧</span>
        <h1 class="serif">如何根据个人色彩挑选口红颜色</h1>
        <div class="article-meta">阅读时间 5分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">唇部是脸上最容易吸引视线的部位之一，因此仅仅更换一支口红的颜色，就能让整体气质发生显著变化。</p>
        <h2>为什么唇色对整体印象影响这么大</h2>
        <p>由于唇部相对于整个脸部面积较小但色彩浓郁，视线容易集中在这里，一旦颜色与底调不符，整张脸都容易显得不协调。反之，找到适合自己的颜色后，即使不化太浓的妆，也能显得气色红润、精神饱满。</p>
        <h2>四季推荐唇色</h2>
        <ul>
            <li><strong>春季暖色</strong>：珊瑚色、鲑鱼粉、偏橙的红色</li>
            <li><strong>夏季冷色</strong>：玫瑰粉、雾紫色、树莓色</li>
            <li><strong>秋季暖色</strong>：砖红色、陶土色、棕色系</li>
            <li><strong>冬季冷色</strong>：蓝红色、酒红色、鲜艳紫红色</li>
        </ul>
        <h2>质地（哑光·水润）也需要考虑吗</h2>
        <p>质地和颜色一样重要。哑光质地能让颜色更加浓郁鲜明，更适合冬季冷色或秋季暖色这类轮廓分明的气质；水润有光泽的质地则能带来水嫩气色，更适合春季暖色或夏季冷色。</p>
        <h2>在专柜不踩雷的挑选技巧</h2>
        <p>专柜的灯光可能会让颜色看起来与实际不同，建议尽量在自然光下、直接涂抹在唇部而非手背上进行试色。同一色系在不同品牌之间也可能存在微妙差异，与其参考网上的试色图，不如亲自确认实际发色最为可靠。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>不同个人色彩类型的推荐发色</h3>
                <p>四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>面试、婚礼等重要场合的完美穿搭</h3>
                <p>从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">春季暖色</span>
                <h3>春季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/hair-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>不同个人色彩类型的推荐发色 | Find Your Personal Color</title>
    <meta name="description" content="四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/hair-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="不同个人色彩类型的推荐发色">
    <meta property="og:description" content="四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/hair-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "不同个人色彩类型的推荐发色",
        "description": "四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/hair-color-guide.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 不同个人色彩类型的推荐发色</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">穿搭技巧</span>
        <h1 class="serif">不同个人色彩类型的推荐发色</h1>
        <div class="article-meta">阅读时间 5分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">发色包裹着整张脸，一旦选错会影响整体气色，而选对了则能让脸部看起来更加明亮有神。</p>
        <h2>发色如何影响脸部气色</h2>
        <p>由于头发覆盖面积大且紧邻面部，它所反射的光线会直接影响肤色的呈现效果。选择与底调相悖的发色，容易让肌肤显得暗沉或苍白。</p>
        <h2>四季推荐发色</h2>
        <ul>
            <li><strong>春季暖色</strong>：浅棕色、金棕色、蜂蜜金色</li>
            <li><strong>夏季冷色</strong>：灰棕色、雾感棕色</li>
            <li><strong>秋季暖色</strong>：深棕色、焦糖色、巧克力棕</li>
            <li><strong>冬季冷色</strong>：纯黑色、灰调深棕色</li>
        </ul>
        <h2>染发前需要确认的事项</h2>
        <p>染发一旦完成很难轻易恢复原状，建议提前将色卡贴近脸部，确认颜色与肤色的协调程度。同时也要考虑到，颜色越浅通常需要越频繁的打理（如补染发根、修复受损发质）。</p>
        <h2>挑染与点缀色的运用方法</h2>
        <p>如果对整体染发感到有负担，只在脸部周围加入明亮的挑染也是不错的选择。这样既能保留对气色的提升效果，又能以更低的风险和成本改变整体氛围。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>如何根据个人色彩挑选口红颜色</h3>
                <p>从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>面试、婚礼等重要场合的完美穿搭</h3>
                <p>从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">冬季冷色</span>
                <h3>冬季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/interview-wedding-styling.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>面试、婚礼等重要场合的完美穿搭 | Find Your Personal Color</title>
    <meta name="description" content="从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/interview-wedding-styling.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="面试、婚礼等重要场合的完美穿搭">
    <meta property="og:description" content="从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/interview-wedding-styling.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "面试、婚礼等重要场合的完美穿搭",
        "description": "从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/interview-wedding-styling.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 面试、婚礼等重要场合的完美穿搭</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">穿搭技巧</span>
        <h1 class="serif">面试、婚礼等重要场合的完美穿搭</h1>
        <div class="article-meta">阅读时间 6分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">越是重要的场合，色彩选择的影响力就越大。只需比平时多留意一点个人色彩的运用，就能自然而然地留下良好印象。</p>
        <h2>为什么重要场合的色彩选择更关键</h2>
        <p>在需要短时间内留下好印象的场合，服装和妆容的颜色与表情、语气同样重要。穿上能提亮肤色的颜色，会让你看起来比实际更加自信从容。</p>
        <h2>面试穿搭色彩指南</h2>
        <p>面试场合需要传递出信赖感。暖调（春季·秋季）可以以象牙白或驼色为基础，搭配暖色调内搭作为点缀；冷调（夏季·冬季）可以以白色或藏青色为基础，搭配冷色调内搭，既显得干练得体，又能让气色显得格外好。</p>
        <h2>婚礼宾客穿搭与庆祝场合色彩指南</h2>
        <p>宾客穿搭的核心是既要喜庆又不能抢了主角的风头。春季暖色适合珊瑚色或浅驼色，夏季冷色适合薰衣草紫或雾感粉，秋季暖色适合陶土色或卡其色，冬季冷色适合藏青色或酒红色的连衣裙。</p>
        <h2>拍照上镜的色彩搭配技巧</h2>
        <p>照片中的色彩往往会比实际显得略微暗淡，因此建议选择比平时稍微鲜艳一点的颜色。此外，由于最靠近脸部的上装颜色对整体效果影响最大，比起下装或配饰，更应该把心思花在挑选上装颜色上。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>如何根据个人色彩挑选口红颜色</h3>
                <p>从四季推荐唇色，到在专柜不踩雷的实用试色方法，一次说清楚。</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>不同个人色彩类型的推荐发色</h3>
                <p>四季推荐发色，染发前需要确认的要点，以及挑染的巧妙运用方法。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>提升诊断准确度的拍照技巧</h3>
                <p>整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/photo-tips-for-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>提升诊断准确度的拍照技巧 | Find Your Personal Color</title>
    <meta name="description" content="整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/photo-tips-for-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="提升诊断准确度的拍照技巧">
    <meta property="og:description" content="整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/photo-tips-for-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "提升诊断准确度的拍照技巧",
        "description": "整理了影响AI诊断准确度的光线、角度与拍摄环境等实用清单。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/photo-tips-for-diagnosis.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 提升诊断准确度的拍照技巧</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基础指南</span>
        <h1 class="serif">提升诊断准确度的拍照技巧</h1>
        <div class="article-meta">阅读时间 4分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">由于AI个人色彩诊断是通过分析一张照片的像素数据来进行判断，拍摄环境的好坏会极大地影响结果的准确性。只需留意几个细节，就能显著提升诊断结果的可信度。</p>
        <h2>为什么光线是最重要的因素</h2>
        <p>人工照明，尤其是偏黄的白炽灯或彩色灯光，容易导致拍摄出的肤色与真实肤色有所偏差。靠窗的自然光，尤其是阳光不太强烈的上午或下午时段，是最稳定可靠的光源。</p>
        <h2>拍摄角度与距离</h2>
        <p>请正面拍摄，使整张脸位于画面中央。距离过近容易产生镜头畸变，距离过远则会导致面部像素数据不足。大约一臂的距离最为合适。</p>
        <h2>应避免的情况</h2>
        <ul>
            <li>使用美颜滤镜或修图软件</li>
            <li>涂抹厚重的粉底或调色霜</li>
            <li>逆光拍摄</li>
            <li>室内混合多种彩色光源</li>
        </ul>
        <h2>拍摄前检查清单</h2>
        <ul>
            <li>是否处于有自然光的窗边？</li>
            <li>是否正面直视镜头？</li>
            <li>是否关闭了滤镜或修图功能？</li>
            <li>妆容是否已尽量简化？</li>
        </ul>
        <p>只需遵循以上清单，AI诊断的可信度就会有明显提升。如果结果让你感觉不太准确，不妨换个时间或地点重新拍摄一次，再进行对比。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>AI个人色彩诊断到底准不准？</h3>
                <p>AI个人色彩分析究竟是如何运作的，它的优势与局限性是什么，以及提升准确度的拍照技巧，一次讲清楚。</p>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>暖色调 vs 冷色调：5种简单判断方法</h3>
                <p>从手腕静脉到饰品反应，这里整理了5种在家就能完成的暖冷调自测方法。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>面试、婚礼等重要场合的完美穿搭</h3>
                <p>从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/color-trends-2026.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2026年色彩趋势，如何融入你的个人色彩 | Find Your Personal Color</title>
    <meta name="description" content="从Pantone发布的2026年度代表色，到如何将流行色巧妙融入自己个人色彩的实用技巧。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/color-trends-2026.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="2026年色彩趋势，如何融入你的个人色彩">
    <meta property="og:description" content="从Pantone发布的2026年度代表色，到如何将流行色巧妙融入自己个人色彩的实用技巧。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/color-trends-2026.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "2026年色彩趋势，如何融入你的个人色彩",
        "description": "从Pantone发布的2026年度代表色，到如何将流行色巧妙融入自己个人色彩的实用技巧。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/color-trends-2026.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 2026年色彩趋势，如何融入你的个人色彩</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">色彩趋势</span>
        <h1 class="serif">2026年色彩趋势，如何融入你的个人色彩</h1>
        <div class="article-meta">阅读时间 6分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">每年发布的"年度代表色"都会对时尚与美妆潮流产生巨大影响。与其盲目追逐流行色，不如将其巧妙融入自己的个人色彩，这样才能穿出更精致高级的效果。</p>
        <h2>定义2026年的代表色</h2>
        <p>Pantone将柔和淡雅的米白色调"云舞白（Cloud Dancer）"选定为2026年度代表色。与此同时，趋势预测机构WGSN与Coloro则将深邃的蓝绿色"蜕变青（Transformative Teal）"发布为年度代表色。此外，紫红色、薄荷绿、水蓝色、琥珀色、鼠尾草绿等也是备受关注的流行色。</p>
        <h2>流行色如何融入你的个人色彩</h2>
        <p>同一种流行色，只需在色调上稍作调整，就能适配任何个人色彩类型。以蜕变青为例：暖调的人可以选择偏绿一些的版本，冷调的人可以选择偏蓝一些的版本，这样既紧跟潮流，又能与肤色更加自然协调。</p>
        <h2>四季类型的2026流行色运用技巧</h2>
        <ul>
            <li><strong>春季暖色</strong>：可以尝试琥珀色，或偏暖调的紫红色作为点缀色</li>
            <li><strong>夏季冷色</strong>：以云舞白、水蓝色或柔和的薄荷绿为基础</li>
            <li><strong>秋季暖色</strong>：将鼠尾草绿或偏暖调的青色融入外套单品</li>
            <li><strong>冬季冷色</strong>：大胆尝试鲜艳的蜕变青或冷调紫红色</li>
        </ul>
        <p>流行色每年都在变化，但个人色彩的基本原则（暖调冷调、明度、饱和度）却始终不变。与其一味追随潮流本身，不如将潮流"翻译"成适合自己色调的版本，这才是最经久耐看的穿搭策略。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">色彩心理学</span>
                <h3>色彩如何影响自信心与第一印象</h3>
                <p>从色彩心理学的基本原理，到个人色彩如何影响自我认同感与他人对你的第一印象。</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">春季暖色</span>
                <h3>春季暖色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从春季暖色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">冬季冷色</span>
                <h3>冬季冷色完全指南：色彩搭配、妆容与穿搭</h3>
                <p>从冬季冷色的特征，到最适合的色彩搭配、妆容推荐，以及服饰配件的穿搭技巧，一次说清楚。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > zh/guide/color-psychology-confidence.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>色彩如何影响自信心与第一印象 | Find Your Personal Color</title>
    <meta name="description" content="从色彩心理学的基本原理，到个人色彩如何影响自我认同感与他人对你的第一印象。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/zh/guide/color-psychology-confidence.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="色彩如何影响自信心与第一印象">
    <meta property="og:description" content="从色彩心理学的基本原理，到个人色彩如何影响自我认同感与他人对你的第一印象。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/zh/guide/color-psychology-confidence.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "色彩如何影响自信心与第一印象",
        "description": "从色彩心理学的基本原理，到个人色彩如何影响自我认同感与他人对你的第一印象。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/zh/guide/color-psychology-confidence.html",
        "inLanguage": "zh"
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
            <a href="/zh/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/" class="active">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/zh/">首页</a> / <a href="/zh/guide/">指南</a> / 色彩如何影响自信心与第一印象</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">色彩心理学</span>
        <h1 class="serif">色彩如何影响自信心与第一印象</h1>
        <div class="article-meta">阅读时间 5分钟 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">色彩不仅仅关乎外表的美观，它对我们看待自己的方式，以及留给他人的印象，都有着实实在在的影响。</p>
        <h2>什么是色彩心理学</h2>
        <p>色彩心理学研究的是特定颜色对人类情绪和行为的影响。例如，红色常常让人联想到能量与自信，蓝色代表信任与稳重，绿色则象征安宁与平衡——这些是被广泛认同的色彩联想原理。</p>
        <h2>色彩如何塑造你给他人的印象</h2>
        <p>在面试、初次见面等需要在短时间内留下印象的场合，所穿的颜色往往会成为传递性格与态度的无意识信号。深沉鲜明的颜色容易传递出自信与专业感，而柔和的粉彩色则更容易传递亲切与安心感。</p>
        <h2>个人色彩与自我认同感的关系</h2>
        <p>有趣的是，色彩心理效应在"穿上适合自己的颜色"时会表现得格外强烈。穿上符合自己个人色彩的服饰，会让人由衷地对镜中的自己感到满意，而这种满意感自然会体现在姿态、表情和语气之中。</p>
        <h2>在日常生活中运用色彩心理学</h2>
        <p>在重要的演讲或会议前，可以选择传递信赖感的色调；在轻松的聚会场合，则可以选择更柔和的色调。但无论哪种情况，都应以自己的个人色彩范围为基础——再怎么被认为"心理效果好"的颜色，如果与自身底调不符，也可能显得不自然。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>想知道自己的个人色彩吗？</h3>
        <p>通过4个问题和AI照片分析，1分钟内免费诊断。</p>
        <a href="/zh/#quiz-container" class="btn">立即诊断</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">你可能还喜欢</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">色彩趋势</span>
                <h3>2026年色彩趋势，如何融入你的个人色彩</h3>
                <p>从Pantone发布的2026年度代表色，到如何将流行色巧妙融入自己个人色彩的实用技巧。</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基础指南</span>
                <h3>什么是个人色彩？新手完全指南</h3>
                <p>从基本概念到四季分类原理，再到如何获得准确的诊断结果，为初次了解个人色彩的你整理了这份完整指南。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">穿搭技巧</span>
                <h3>面试、婚礼等重要场合的完美穿搭</h3>
                <p>从面试穿搭到婚礼宾客穿搭，教你如何运用个人色彩，在重要场合留下好印象。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/zh/guide/">指南</a>
            <a href="/zh/about.html">关于我们</a>
            <a href="/zh/privacy.html">隐私政策</a>
            <a href="/zh/terms.html">使用条款</a>
            <a href="/zh/contact.html">联系我们</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

echo "Files written. Staging and committing..."
git add -A
git commit -m "Add zh/guide content section: 14 articles + index, nav links, sitemap update"
git push

echo "Done. All 5 languages now have full content sections."
