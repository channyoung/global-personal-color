#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- es content batch
# Adds /es/guide/ section: 14 articles + index, wired into
# homepage/footer nav, sitemap updated with all new URLs.
# Run from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Adding es/guide content section..."
mkdir -p es/guide

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
</urlset>
EOF_GPC

cat > es/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test de Color Personal Online | Encuentra tu Paleta de Colores Estacionales</title>
    <meta name="description" content="Test de color personal online gratuito. Encuentra tu tono de primavera, verano, otoño o invierno usando nuestra cámara IA y un quiz visual. Descubre tu guía de estilo.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Test de Color Personal | Encuentra tu Paleta Estacional">
    <meta property="og:description" content="Análisis de color personal rápido y sencillo con quiz visual y cámara inteligente con IA.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Test de Color Personal | Encuentra tu Paleta Estacional">
    <meta name="twitter:description" content="Análisis de color personal rápido y sencillo con quiz visual y cámara inteligente con IA.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "WebApplication",
      "name": "Find Your Personal Color",
      "url": "https://global-personal-color.vercel.app/es/",
      "description": "Test de color personal online gratuito. Encuentra tu tono de primavera, verano, otoño o invierno usando nuestra cámara IA y un quiz visual. Descubre tu guía de estilo.",
      "applicationCategory": "LifestyleApplication",
      "operatingSystem": "Any",
      "inLanguage": "es",
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
          "name": "¿Qué es un análisis de color personal?",
          "acceptedAnswer": { "@type": "Answer", "text": "Es el proceso de encontrar los colores óptimos que armonizan con tu tono de piel natural." }
        },
        {
          "@type": "Question",
          "name": "¿Cómo funciona el análisis con cámara de IA?",
          "acceptedAnswer": { "@type": "Answer", "text": "Calcula los valores RGB de los píxeles de tu rostro para sugerir al instante una paleta estacional acorde." }
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" id="lang-ko">KO</a>
                <a href="/en/" id="lang-en">EN</a>
                <a href="/ja/" id="lang-ja">JA</a>
                <a href="/es/" id="lang-es" class="active">ES</a>
                <a href="/zh/" id="lang-zh">ZH</a>
            </div>
        </div>
    </header>

    <section class="wrap hero">
        <div>
            <div class="eyebrow">Personal Color Diagnosis</div>
            <h1>Tu rostro también<br>tiene una <em>estación</em></h1>
            <p class="lede">Diagnosticamos tu tono natural de piel, ojos y cabello en cuatro estaciones y encontramos la paleta que mejor te queda.</p>
            <div class="cta-row">
                <button class="btn-primary" onclick="startQuiz();document.getElementById('quiz-container').scrollIntoView({behavior:'smooth'});">Comenzar diagnóstico gratis</button>
                <span class="cta-note">4 preguntas · 1 minuto</span>
            </div>
        </div>
        <div class="fan">
            <div class="fcard f1"><span class="fnum">01 &middot; Spring</span><span class="fname">Primavera Cálida</span><span class="fdots"><span style="background:#FF8C69"></span><span style="background:#FFD59A"></span><span style="background:#F6C9AD"></span></span></div>
            <div class="fcard f2"><span class="fnum">02 &middot; Summer</span><span class="fname">Verano Frío</span><span class="fdots"><span style="background:#B9C6DC"></span><span style="background:#DCE4EF"></span><span style="background:#8AA9D6"></span></span></div>
            <div class="fcard f3"><span class="fnum">03 &middot; Autumn</span><span class="fname">Otoño Cálido</span><span class="fdots"><span style="background:#8C4A24"></span><span style="background:#C98452"></span><span style="background:#E6D2C1"></span></span></div>
            <div class="fcard f4"><span class="fnum">04 &middot; Winter</span><span class="fname">Invierno Frío</span><span class="fdots"><span style="background:#FFFFFF"></span><span style="background:#7A8CA8"></span><span style="background:#12182A"></span></span></div>
        </div>
    </section>

    <div class="wrap">
        <div class="tabs">
            <a class="tab" href="#guide">Guía de Color Personal</a>
            <a class="tab" href="#quiz-container">Diagnóstico</a>
            <a class="tab" href="#analysis-card-zone">AI</a>
            <a class="tab" href="#faq">FAQ</a>
        </div>
    </div>

    <section class="wrap block guide-grid" id="guide">
        <div>
            <h2 class="serif">Guía de Color Personal</h2>
            <p>El color personal es la paleta seleccionada que mejor complementa los tonos naturales de tu piel, ojos y cabello.</p>
            <p>Cada persona nace con un tono de piel y de ojos único. El análisis de color personal clasifica estos rasgos en cuatro estaciones: primavera, verano, otoño e invierno. Conocer tu paleta específica reduce los errores al comprar ropa y mejora notablemente tus elecciones de maquillaje y estilismo.</p>
            <p><a href="/es/guide/" style="color:var(--brand);font-weight:600;text-decoration:none;">Explora la Guía completa de Color Personal &rarr;</a></p>
        </div>
        <div class="index-card">
            <div class="idxlabel">4 Seasons at a glance</div>
            <div class="srow"><span class="chip chip-spring"></span><div class="stxt"><strong>Primavera Cálida</strong><span>Camila Cabello, Danna Paola &middot; Melocotón y coral vibrantes</span></div></div>
            <div class="srow"><span class="chip chip-summer"></span><div class="stxt"><strong>Verano Frío</strong><span>Penélope Cruz, Eiza González &middot; Lavanda y azul cielo suaves</span></div></div>
            <div class="srow"><span class="chip chip-autumn"></span><div class="stxt"><strong>Otoño Cálido</strong><span>Salma Hayek, Shakira &middot; Caqui y burdeos profundos</span></div></div>
            <div class="srow"><span class="chip chip-winter"></span><div class="stxt"><strong>Invierno Frío</strong><span>Georgina Rodríguez, Karol G &middot; Negro y azul marino nítidos</span></div></div>
        </div>
    </section>

    <section class="wrap block" id="quiz-container">
        <div class="card-panel">
            <div id="start-view">
                <h3 class="panel-title">🎨 Test de Color Personal</h3>
                <p class="panel-sub">Descubre tu paleta de estación perfecta respondiendo unas sencillas preguntas visuales.</p>
                <button id="start-btn" class="btn">Iniciar Test</button>
            </div>

            <div id="question-view" class="hidden">
                <div class="progress-container"><div id="progress"></div></div>
                <h3 id="question-text">Question Loading...</h3>
                <div id="answer-buttons"></div>
            </div>

            <div id="result-view" class="hidden">
                <h3 class="panel-title">🎉 Tu Resultado de Color Personal</h3>
                <div id="result-tags"></div>
                <p id="result-description"></p>
                <h4 id="best-color-title"></h4>
                <div id="color-palette-display"></div>
                <h4 id="match-guide-title"></h4>
                <button id="restart-btn" class="btn btn-secondary">Reiniciar Test</button>
            </div>
        </div>
    </section>

    <section class="wrap block" id="analysis-card-zone">
        <div class="card-panel">
            <h3 class="panel-title">📸 Análisis Inteligente con IA (Beta)</h3>
            <p class="panel-sub">Para un análisis preciso, usa una foto de frente bien iluminada. Ningún dato sale de tu dispositivo.</p>

            <button id="init-cam-btn" class="btn action-btn">Activar Cámara en Vivo</button>
            <button id="trigger-file-btn" class="btn btn-secondary action-btn">📁 Subir una Foto</button>

            <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">

            <div id="camera-zone" class="hidden">
                <div class="camera-wrapper">
                    <video id="webcam" autoplay playsinline muted></video>
                    <div class="face-overlay"></div>
                </div>
                <button id="capture-btn" class="btn">📸 Tomar Foto y Analizar</button>
            </div>

            <div id="camera-loading" class="hidden">⏳ La IA está analizando tu tono de piel...</div>
            <canvas id="calc-canvas" class="hidden"></canvas>
        </div>
    </section>

    <section class="wrap block" id="faq" style="max-width:760px;">
        <h2 class="serif" style="text-align:center;margin-bottom:24px;">Preguntas frecuentes</h2>
        <div class="faq-list">
            <details>
                <summary>¿Qué es un análisis de color personal?</summary>
                <p>Es el proceso de encontrar los colores óptimos que armonizan con tu tono de piel natural.</p>
            </details>
            <details>
                <summary>¿Cómo funciona el análisis con cámara de IA?</summary>
                <p>Calcula los valores RGB de los píxeles de tu rostro para sugerir al instante una paleta estacional acorde.</p>
            </details>
        </div>
    </section>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Política de Privacidad</a>
            <a href="/es/terms.html">Términos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>

    <script>
        const camErrorMsg = "No se pudo acceder a la cámara. Revisa los permisos o usa la opción de subir una foto.";
    </script>
    <script src="script.js"></script>
</body>
</html>
EOF_GPC

cat > es/about.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Nosotros | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color fue creado para ayudar a los usuarios a diagnosticar sus propios colores y obtener ideas sobre estilismo.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/about.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/about.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/about.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/about.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/about.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/about.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/about.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Sobre Nosotros | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Color fue creado para ayudar a los usuarios a diagnosticar sus propios colores y obtener ideas sobre estilismo.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/about.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Sobre Nosotros | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color fue creado para ayudar a los usuarios a diagnosticar sus propios colores y obtener ideas sobre estilismo.">
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Sobre Nosotros</h2>
        <p>Find Your Personal Color fue creado para ayudar a los usuarios a diagnosticar sus propios colores y obtener ideas sobre estilismo. Nuestro objetivo es aportar un poco de alegría a la vida cotidiana a través del análisis basado en datos.</p>
        <a href="/es/" class="btn">Volver al inicio</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Guía</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Política de Privacidad</a>
            <a href="/es/terms.html">Términos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto | Find Your Personal Color</title>
    <meta name="description" content="¿Tienes preguntas sobre Find Your Personal Color? Contáctanos por correo electrónico.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/contact.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Contacto | Find Your Personal Color">
    <meta property="og:description" content="¿Tienes preguntas sobre Find Your Personal Color? Contáctanos por correo electrónico.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/contact.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Contacto | Find Your Personal Color">
    <meta name="twitter:description" content="¿Tienes preguntas sobre Find Your Personal Color? Contáctanos por correo electrónico.">
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Contacto</h2>
        <p>Para cualquier consulta respecto a este servicio, por favor contáctenos al correo electrónico de abajo. Nos esforzamos por responder a todas las consultas a la brevedad. Contacto: seanstudio.contact@gmail.com</p>
        <a href="/es/" class="btn">Volver al inicio</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Guía</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Política de Privacidad</a>
            <a href="/es/terms.html">Términos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/privacy.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Política de Privacidad | Find Your Personal Color</title>
    <meta name="description" content="Política de privacidad de Find Your Personal Color. No almacenamos ninguna información de identificación personal.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/privacy.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/privacy.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/privacy.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/privacy.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/privacy.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/privacy.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/privacy.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Política de Privacidad | Find Your Personal Color">
    <meta property="og:description" content="Política de privacidad de Find Your Personal Color. No almacenamos ninguna información de identificación personal.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/privacy.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Política de Privacidad | Find Your Personal Color">
    <meta name="twitter:description" content="Política de privacidad de Find Your Personal Color. No almacenamos ninguna información de identificación personal.">
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Política de Privacidad</h2>
        <p>Find Your Personal Color respeta su privacidad. No almacenamos ninguna información de identificación personal. Utilizamos Google AdSense, que puede usar cookies para mostrar anuncios personalizados.</p>
        <a href="/es/" class="btn">Volver al inicio</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Guía</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Política de Privacidad</a>
            <a href="/es/terms.html">Términos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/terms.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Términos de Servicio | Find Your Personal Color</title>
    <meta name="description" content="Términos de servicio de Find Your Personal Color. Todos los resultados son solo para fines de referencia.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/terms.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/terms.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/terms.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/terms.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/terms.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/terms.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/terms.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Términos de Servicio | Find Your Personal Color">
    <meta property="og:description" content="Términos de servicio de Find Your Personal Color. Todos los resultados son solo para fines de referencia.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/terms.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Términos de Servicio | Find Your Personal Color">
    <meta name="twitter:description" content="Términos de servicio de Find Your Personal Color. Todos los resultados son solo para fines de referencia.">
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>Términos de Servicio</h2>
        <p>Todos los resultados proporcionados son solo para fines de referencia y no constituyen un consejo profesional. Se espera que los usuarios respeten los derechos de los demás al utilizar este servicio.</p>
        <a href="/es/" class="btn">Volver al inicio</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Guía</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Política de Privacidad</a>
            <a href="/es/terms.html">Términos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/guide.css <<'EOF_GPC'
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

cat > es/guide/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gu&iacute;a y Art&iacute;culos de Color Personal | Find Your Personal Color</title>
    <meta name="description" content="Desde los fundamentos del color personal hasta gu&iacute;as completas por estaci&oacute;n, maquillaje y consejos de estilismo. Explora nuestra colecci&oacute;n de art&iacute;culos.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Gu&iacute;a y Art&iacute;culos de Color Personal">
    <meta property="og:description" content="Desde los fundamentos del color personal hasta gu&iacute;as completas por estaci&oacute;n, maquillaje y consejos de estilismo.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / Gu&iacute;a</div>
    <div class="wrap guide-hero">
        <h1 class="serif">Gu&iacute;a de Color Personal</h1>
        <p>Desde la teor&iacute;a b&aacute;sica hasta gu&iacute;as completas por estaci&oacute;n, maquillaje y consejos de estilismo &mdash; explora nuestra colecci&oacute;n de art&iacute;culos.</p>
    </div>
    <div class="wrap article-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</h3>
                <p>Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.</p>
                <div class="meta">6 min de lectura</div>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Primavera C&aacute;lida</span>
                <h3>Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
                <div class="meta">7 min de lectura</div>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos</h3>
                <p>Desde las venas de la mu&ntilde;eca hasta la reacci&oacute;n a las joyas, aqu&iacute; tienes 5 comprobaciones sencillas que puedes hacer en casa para descubrir tu subtono.</p>
                <div class="meta">5 min de lectura</div>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</h3>
                <p>C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.</p>
                <div class="meta">6 min de lectura</div>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?</h3>
                <p>Comparamos el draping profesional y los tests online o con IA: ventajas, desventajas y cu&aacute;l se ajusta mejor a tu situaci&oacute;n.</p>
                <div class="meta">6 min de lectura</div>
            </a>
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">Verano Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Verano Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
                <div class="meta">7 min de lectura</div>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">Oto&ntilde;o C&aacute;lido</span>
                <h3>Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Oto&ntilde;o C&aacute;lido: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
                <div class="meta">7 min de lectura</div>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Invierno Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
                <div class="meta">7 min de lectura</div>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</h3>
                <p>Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.</p>
                <div class="meta">5 min de lectura</div>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>Los mejores colores de cabello para cada tipo de color personal</h3>
                <p>Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.</p>
                <div class="meta">5 min de lectura</div>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>El look perfecto para entrevistas, bodas y d&iacute;as importantes</h3>
                <p>Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.</p>
                <div class="meta">6 min de lectura</div>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</h3>
                <p>Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.</p>
                <div class="meta">4 min de lectura</div>
            </a>
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">Tendencias de Color</span>
                <h3>Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal</h3>
                <p>El Color del A&ntilde;o 2026 de Pantone, y consejos pr&aacute;cticos para adaptar los colores de tendencia a cualquier tipo de color personal.</p>
                <div class="meta">6 min de lectura</div>
            </a>
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">Psicolog&iacute;a del Color</span>
                <h3>C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n</h3>
                <p>Los fundamentos de la psicolog&iacute;a del color, y c&oacute;mo llevar tu color personal puede influir en tu autoconfianza y en c&oacute;mo te perciben los dem&aacute;s.</p>
                <div class="meta">5 min de lectura</div>
            </a>
    </div>
    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/what-is-personal-color.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes | Find Your Personal Color</title>
    <meta name="description" content="Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/what-is-personal-color.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes">
    <meta property="og:description" content="Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/what-is-personal-color.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes",
        "description": "Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/what-is-personal-color.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / &iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
        <h1 class="serif">&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</h1>
        <div class="article-meta">6 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Seguro que has o&iacute;do hablar del "color personal", pero &iquest;qu&eacute; significa exactamente? En pocas palabras, tu color personal es el conjunto de tonos que armonizan de forma m&aacute;s natural con el color de tu piel, ojos y cabello.</p>
        <p>El mismo labial rojo puede hacer que una persona se vea radiante y llena de vida, mientras que a otra le da un aspecto cansado y apagado. Esa diferencia depende del subtono de piel, el valor y la saturaci&oacute;n de cada persona, y el diagn&oacute;stico de color personal es precisamente el proceso de analizar esa combinaci&oacute;n de forma sistem&aacute;tica.</p>
        <h2>El principio b&aacute;sico: todo gira en torno al subtono</h2>
        <p>El color de la piel tiene dos capas: el tono superficial que se ve a simple vista, y el subtono que se refleja por debajo. Los subtonos se dividen generalmente en dos grupos: c&aacute;lido (con matices amarillos o dorados) y fr&iacute;o (con matices rosados o azulados).</p>
        <p>Si alguien con subtono c&aacute;lido usa colores fr&iacute;os (lavanda helado, gris plata), su piel puede verse p&aacute;lida o apagada. Si alguien con subtono fr&iacute;o usa colores c&aacute;lidos (coral anaranjado, camel dorado), su rostro puede verse enrojecido o hinchado. Por eso el color personal tiene un efecto real y visible en c&oacute;mo te percibe la gente.</p>
        <h2>&iquest;C&oacute;mo se determinan las cuatro estaciones?</h2>
        <p>El color personal se clasifica normalmente en cuatro tipos estacionales: Primavera, Verano, Oto&ntilde;o e Invierno. Esta clasificaci&oacute;n no es solo c&aacute;lido/fr&iacute;o, sino que tambi&eacute;n tiene en cuenta el valor (claridad) y la saturaci&oacute;n (intensidad).</p>
        <ul>
            <li><strong>Primavera C&aacute;lida</strong>: subtono c&aacute;lido y luminoso. Le sientan bien los colores vivos y energ&eacute;ticos</li>
            <li><strong>Oto&ntilde;o C&aacute;lido</strong>: subtono c&aacute;lido y profundo. Le sientan bien los colores ricos y terrosos</li>
            <li><strong>Verano Fr&iacute;o</strong>: subtono fr&iacute;o y luminoso. Le sientan bien los colores pastel y suaves</li>
            <li><strong>Invierno Fr&iacute;o</strong>: subtono fr&iacute;o y profundo. Le sientan bien los colores intensos y de alto contraste</li>
        </ul>
        <p>Es decir, aunque Primavera y Oto&ntilde;o son ambos c&aacute;lidos, se sit&uacute;an en extremos opuestos de claridad y saturaci&oacute;n, y esa distinci&oacute;n m&aacute;s fina es lo que permite recomendaciones de color mucho m&aacute;s precisas.</p>
        <h2>&iquest;Por qu&eacute; importa un diagn&oacute;stico preciso?</h2>
        <p>Conocer tu color personal no es solo un ejercicio divertido. Primero, reduce dr&aacute;sticamente los errores al comprar ropa o maquillaje. Segundo, usar los colores correctos ilumina visiblemente tu piel y define tus rasgos. Tercero, una vez que tienes clara tu paleta, las decisiones de estilo se vuelven m&aacute;s r&aacute;pidas y menos estresantes.</p>
        <h2>Tres formas de descubrir tu tipo</h2>
        <p>Hay tres m&eacute;todos habituales para diagnosticar el color personal.</p>
        <ul>
            <li><strong>Autoevaluaci&oacute;n</strong>: pruebas r&aacute;pidas como el color de las venas de la mu&ntilde;eca o la reacci&oacute;n al sol. C&oacute;moda, pero poco precisa</li>
            <li><strong>Draping profesional</strong>: un asesor coloca telas de distintos colores junto a tu rostro. Muy preciso, pero requiere tiempo y dinero</li>
            <li><strong>Diagn&oacute;stico con IA u online</strong>: analiza los p&iacute;xeles de la piel a partir de una foto o c&aacute;mara en vivo. Gratis e instant&aacute;neo, ideal para empezar</li>
        </ul>
        <p>Si necesitas la m&aacute;xima precisi&oacute;n, el draping profesional sigue siendo el m&eacute;todo m&aacute;s exacto. Pero para la mayor&iacute;a de las personas, un diagn&oacute;stico con IA es m&aacute;s que suficiente para encontrar la direcci&oacute;n correcta, sobre todo si se hace con buena luz natural y una foto de frente.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos</h3>
                <p>Desde las venas de la mu&ntilde;eca hasta la reacci&oacute;n a las joyas, aqu&iacute; tienes 5 comprobaciones sencillas que puedes hacer en casa para descubrir tu subtono.</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</h3>
                <p>C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.</p>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?</h3>
                <p>Comparamos el draping profesional y los tests online o con IA: ventajas, desventajas y cu&aacute;l se ajusta mejor a tu situaci&oacute;n.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/spring-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo | Find Your Personal Color</title>
    <meta name="description" content="Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/spring-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo">
    <meta property="og:description" content="Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/spring-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo",
        "description": "Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/spring-warm-guide.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</div>

    <div class="wrap article-header">
        <span class="tag tag-spring">Primavera C&aacute;lida</span>
        <h1 class="serif">Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</h1>
        <div class="article-meta">7 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Primavera C&aacute;lida se define por una apariencia luminosa, vivaz y llena de energ&iacute;a. Un subtono c&aacute;lido y dorado combinado con colores claros y saturados resalta al m&aacute;ximo la vitalidad natural de este tipo.</p>
        <h2>Caracter&iacute;sticas de Primavera C&aacute;lida</h2>
        <p>Las personas Primavera C&aacute;lida suelen tener un subtono de piel marfil o dorado claro, y se broncean con facilidad. Los ojos suelen ser marrones claros o color avellana, y el cabello suele favorecer en tonos castaño claro o casta&ntilde;o dorado. La impresi&oacute;n general es fresca, juvenil y llena de energ&iacute;a.</p>
        <h2>La mejor paleta de colores para Primavera C&aacute;lida</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#FF8C69"><span style="color:#4A2712">Coral</span></div>
            <div class="sw" style="background:#FFD59A"><span style="color:#5C3D14">Durazno</span></div>
            <div class="sw" style="background:#F6C9AD"><span style="color:#5C3D14">Camel Miel</span></div>
            <div class="sw" style="background:#8FBF6A"><span style="color:#1F3810">Verde Claro</span></div>
        </div>
        <p>El coral, el durazno y el camel miel realzan la luminosidad natural de la piel de Primavera C&aacute;lida. La clave est&aacute; en elegir colores c&aacute;lidos con algo de saturaci&oacute;n, en lugar de pasteles apagados.</p>
        <h2>Gu&iacute;a de colores de maquillaje</h2>
        <ul>
            <li><strong>Labios</strong>: coral, rosa salm&oacute;n y rojos anaranjados quedan preciosos</li>
            <li><strong>Rubor</strong>: tonos durazno y coral dan un sonrojo natural y saludable</li>
            <li><strong>Sombras</strong>: dorado, caqui y bronce en base c&aacute;lida son ideales</li>
            <li><strong>Colores a evitar</strong>: labiales borgo&ntilde;a con matiz azulado o grises fr&iacute;os</li>
        </ul>
        <h2>Estilismo en ropa y accesorios</h2>
        <p>Las joyas doradas iluminan la piel mucho m&aacute;s que las plateadas. En la ropa, apuesta por b&aacute;sicos c&aacute;lidos y luminosos como marfil, camel, coral y caqui claro. Los colores fr&iacute;os y profundos como el negro puro o el azul marino helado pueden apagar el rostro por contraste, as&iacute; que es mejor reservarlos como detalles puntuales.</p>
        <blockquote>La clave es "luminoso y c&aacute;lido": Primavera C&aacute;lida brilla m&aacute;s cuando la saturaci&oacute;n y la claridad son altas a la vez.</blockquote>
        <h2>Colores que Primavera C&aacute;lida deber&iacute;a evitar</h2>
        <p>Los colores con fuerte matiz azulado, como el rosa f&uacute;csia o la lavanda helada, junto con los neutros de baja saturaci&oacute;n (gris fr&iacute;o, negro puro), tienden a apagar la vitalidad natural de Primavera C&aacute;lida. Si te encantan estos tonos, ll&eacute;valos en zapatos o bolsos, lejos del rostro.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">Verano Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Verano Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">Oto&ntilde;o C&aacute;lido</span>
                <h3>Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Oto&ntilde;o C&aacute;lido: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</h3>
                <p>Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/warm-vs-cool-tone.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos | Find Your Personal Color</title>
    <meta name="description" content="Desde las venas de la mu&ntilde;eca hasta la reacci&oacute;n a las joyas, aqu&iacute; tienes 5 comprobaciones sencillas que puedes hacer en casa para descubrir tu subtono.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/warm-vs-cool-tone.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos">
    <meta property="og:description" content="Desde las venas de la mu&ntilde;eca hasta la reacci&oacute;n a las joyas, aqu&iacute; tienes 5 comprobaciones sencillas que puedes hacer en casa para descubrir tu subtono.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/warm-vs-cool-tone.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos",
        "description": "Desde las venas de la mu&ntilde;eca hasta la reacci&oacute;n a las joyas, aqu&iacute; tienes 5 comprobaciones sencillas que puedes hacer en casa para descubrir tu subtono.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/warm-vs-cool-tone.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
        <h1 class="serif">Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos</h1>
        <div class="article-meta">5 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">&iquest;No sabes si eres c&aacute;lido o fr&iacute;o? Antes de reservar una consulta profesional, aqu&iacute; tienes algunas comprobaciones sencillas que puedes hacer en casa. No son perfectamente precisas, pero son una buena forma de acotar las opciones.</p>
        <h2>1. Revisa las venas de tu mu&ntilde;eca</h2>
        <p>Con buena luz natural, mira las venas del interior de tu mu&ntilde;eca. Si se ven verdosas, es probable que tengas subtono c&aacute;lido; si se ven azuladas o violetas, probablemente sea fr&iacute;o.</p>
        <h2>2. Joyas de oro vs plata</h2>
        <p>Si el oro hace que tu piel se vea m&aacute;s luminosa y saludable, probablemente seas c&aacute;lido. Si la plata hace que tu piel se vea m&aacute;s clara y sofisticada, probablemente seas fr&iacute;o.</p>
        <h2>3. C&oacute;mo reacciona tu piel al sol</h2>
        <p>Si tiendes a broncearte con facilidad en lugar de quemarte, eso apunta a un subtono c&aacute;lido. Si te enrojeces o quemas f&aacute;cilmente, eso apunta a un subtono fr&iacute;o.</p>
        <h2>4. El color natural de labios y mejillas</h2>
        <p>Sin maquillaje, si tus labios y mejillas tienen un tono coral o anaranjado, probablemente seas c&aacute;lido. Si tienden a rosado o rosado intenso, probablemente seas fr&iacute;o.</p>
        <h2>5. La prueba del papel blanco</h2>
        <p>Sostén una hoja de papel blanco junto a tu rostro y m&iacute;rate al espejo. Si tu piel se ve amarillenta o dorada en comparaci&oacute;n, probablemente seas c&aacute;lido. Si se ve rosada o azulada, probablemente seas fr&iacute;o.</p>
        <blockquote>Si 3 o m&aacute;s de estas pruebas apuntan en la misma direcci&oacute;n, es una buena pista sobre tu subtono, aunque la iluminaci&oacute;n, el maquillaje y la estaci&oacute;n del a&ntilde;o pueden alterar el resultado.</blockquote>
        <p>Las autoevaluaciones son solo un punto de partida aproximado. Si quieres un resultado m&aacute;s preciso y detallado por estaci&oacute;n, combinarlo con un diagn&oacute;stico con IA es un excelente siguiente paso.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</h3>
                <p>Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</h3>
                <p>C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</h3>
                <p>Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/how-accurate-is-ai-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA? | Find Your Personal Color</title>
    <meta name="description" content="C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/how-accurate-is-ai-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?">
    <meta property="og:description" content="C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/how-accurate-is-ai-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?",
        "description": "C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/how-accurate-is-ai-diagnosis.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / &iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
        <h1 class="serif">&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</h1>
        <div class="article-meta">6 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">La idea de que "una IA puede diagnosticar tu color personal con una sola foto" suena impresionante, pero &iquest;qu&eacute; tan fiable es en realidad? Entender c&oacute;mo funciona (y d&oacute;nde falla) te ayuda a aprovecharlo mucho mejor.</p>
        <h2>C&oacute;mo funciona realmente el an&aacute;lisis con IA</h2>
        <p>La mayor&iacute;a de las herramientas de IA toman una muestra de p&iacute;xeles del centro del rostro y calculan el valor promedio RGB (rojo, verde, azul). A partir de ese promedio, la herramienta estima cu&aacute;nto rojo, amarillo o azul hay presente para determinar el subtono c&aacute;lido o fr&iacute;o y el nivel de claridad, y as&iacute; asigna una de las cuatro estaciones.</p>
        <h2>Ventajas del diagn&oacute;stico con IA</h2>
        <ul>
            <li>Gratis y con resultados instant&aacute;neos</li>
            <li>Sin subjetividad humana: el criterio es siempre el mismo</li>
            <li>Puedes repetir el test las veces que quieras, desde cualquier lugar</li>
        </ul>
        <h2>Limitaciones del diagn&oacute;stico con IA</h2>
        <ul>
            <li>Las condiciones de iluminaci&oacute;n pueden alterar significativamente los valores de color de los p&iacute;xeles</li>
            <li>C&aacute;maras y pantallas var&iacute;an en su calibraci&oacute;n de color, generando diferencias entre dispositivos</li>
            <li>El maquillaje, los filtros o las apps de retoque pueden distorsionar el an&aacute;lisis</li>
            <li>A&uacute;n no puede replicar la comparaci&oacute;n minuciosa del draping profesional con telas reales</li>
        </ul>
        <h2>Consejos de foto para mejorar la precisi&oacute;n</h2>
        <ul>
            <li>Toma la foto cerca de una ventana con luz natural, idealmente al mediod&iacute;a</li>
            <li>Evita luces de colores, incluidas las bombillas amarillas c&aacute;lidas</li>
            <li>Reduce el maquillaje al m&iacute;nimo y mira directo a la c&aacute;mara</li>
            <li>No uses filtros ni apps de retoque</li>
        </ul>
        <p>En resumen, el diagn&oacute;stico con IA no es una respuesta absoluta y perfecta, pero s&iacute; una forma r&aacute;pida y c&oacute;moda de encontrar la direcci&oacute;n correcta. Sigue estos consejos de foto para aumentar la fiabilidad, y comb&iacute;nalo con draping profesional si quieres afinar a&uacute;n m&aacute;s el resultado.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?</h3>
                <p>Comparamos el draping profesional y los tests online o con IA: ventajas, desventajas y cu&aacute;l se ajusta mejor a tu situaci&oacute;n.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</h3>
                <p>Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</h3>
                <p>Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/draping-vs-online-quiz.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir? | Find Your Personal Color</title>
    <meta name="description" content="Comparamos el draping profesional y los tests online o con IA: ventajas, desventajas y cu&aacute;l se ajusta mejor a tu situaci&oacute;n.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/draping-vs-online-quiz.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?">
    <meta property="og:description" content="Comparamos el draping profesional y los tests online o con IA: ventajas, desventajas y cu&aacute;l se ajusta mejor a tu situaci&oacute;n.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/draping-vs-online-quiz.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?",
        "description": "Comparamos el draping profesional y los tests online o con IA: ventajas, desventajas y cu&aacute;l se ajusta mejor a tu situaci&oacute;n.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/draping-vs-online-quiz.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
        <h1 class="serif">Draping profesional vs test online con IA: &iquest;cu&aacute;l elegir?</h1>
        <div class="article-meta">6 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Hay dos caminos principales para descubrir tu color personal: el draping profesional y los tests online o con IA. Difieren bastante en enfoque, costo y precisi&oacute;n.</p>
        <h2>&iquest;Qu&eacute; es el draping?</h2>
        <p>El draping es el m&eacute;todo tradicional en el que un asesor profesional coloca telas de distintos colores bajo tu rostro y compara visualmente c&oacute;mo cambian el tono de tu piel, el brillo de tus ojos y tu color natural con cada una. Normalmente se usan 100 o m&aacute;s muestras de tela para una comparaci&oacute;n minuciosa.</p>
        <h2>Ventajas y limitaciones del draping</h2>
        <p>Al comparar tela real directamente sobre tu piel, no hay distorsi&oacute;n de pantalla ni de iluminaci&oacute;n, lo que lo convierte en el m&eacute;todo m&aacute;s preciso disponible. La contrapartida es que requiere reservar cita, desplazarte y pagar una tarifa, y el resultado puede variar seg&uacute;n la experiencia e interpretaci&oacute;n del asesor.</p>
        <h2>Ventajas y limitaciones del diagn&oacute;stico con IA</h2>
        <p>El diagn&oacute;stico con IA es gratuito, instant&aacute;neo y puedes repetirlo tantas veces como quieras, siempre con el mismo criterio algor&iacute;tmico. La desventaja es que la iluminaci&oacute;n y la c&aacute;mara pueden introducir errores, por lo que no alcanza la precisi&oacute;n del draping profesional.</p>
        <h2>&iquest;Qu&eacute; m&eacute;todo deber&iacute;as elegir?</h2>
        <p>Si eres nuevo en esto del color personal, empieza con un test online o con IA para tener una idea general de tu subtono y tu estaci&oacute;n m&aacute;s probable. Si el resultado no queda claro o quieres una respuesta m&aacute;s precisa y definitiva, sigue con una sesi&oacute;n de draping profesional para afinar los detalles.</p>
        <blockquote>Usa la IA para encontrar tu direcci&oacute;n, y el draping para perfeccionarla: los dos m&eacute;todos se complementan, no compiten.</blockquote>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</h3>
                <p>C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</h3>
                <p>Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</h3>
                <p>Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/summer-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo | Find Your Personal Color</title>
    <meta name="description" content="Todo sobre Verano Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/summer-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo">
    <meta property="og:description" content="Todo sobre Verano Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/summer-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo",
        "description": "Todo sobre Verano Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/summer-cool-guide.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo</div>

    <div class="wrap article-header">
        <span class="tag tag-summer">Verano Fr&iacute;o</span>
        <h1 class="serif">Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo</h1>
        <div class="article-meta">7 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Verano Fr&iacute;o se define por una apariencia suave, elegante y fresca. Un subtono fr&iacute;o y azulado combinado con colores pastel suaves resalta al m&aacute;ximo la claridad natural de este tipo.</p>
        <h2>Caracter&iacute;sticas de Verano Fr&iacute;o</h2>
        <p>Las personas Verano Fr&iacute;o suelen tener un subtono de piel rosado o azulado claro, y tienden a enrojecerse con el sol. Los ojos suelen ser marr&oacute;n suave o gris azulado, y el cabello suele favorecer en tonos casta&ntilde;o ceniza o casta&ntilde;o oscuro fr&iacute;o. La impresi&oacute;n general es elegante, delicada y sofisticada de forma natural.</p>
        <h2>La mejor paleta de colores para Verano Fr&iacute;o</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B9A6D9"><span style="color:#2E1F42">Lavanda</span></div>
            <div class="sw" style="background:#8AA9D6"><span style="color:#1B2A42">Azul Cielo</span></div>
            <div class="sw" style="background:#E8A0BF"><span style="color:#4A1B2E">Rosa Palo</span></div>
            <div class="sw" style="background:#C7CDD6"><span style="color:#2B2F38">Gris Suave</span></div>
        </div>
        <p>La lavanda, el azul cielo y el rosa palo realzan la claridad natural de la piel de Verano Fr&iacute;o. La clave est&aacute; en elegir colores suaves, luminosos y de baja saturaci&oacute;n.</p>
        <h2>Gu&iacute;a de colores de maquillaje</h2>
        <ul>
            <li><strong>Labios</strong>: rosa palo, malva y frambuesa quedan preciosos</li>
            <li><strong>Rubor</strong>: rosa suave da un sonrojo natural y delicado</li>
            <li><strong>Sombras</strong>: lavanda y marr&oacute;n grisaceo en base fr&iacute;a son ideales</li>
            <li><strong>Colores a evitar</strong>: coral anaranjado o iluminadores dorados con matiz amarillo</li>
        </ul>
        <h2>Estilismo en ropa y accesorios</h2>
        <p>Las joyas plateadas o de oro blanco realzan la piel mucho m&aacute;s que las doradas. En la ropa, apuesta por b&aacute;sicos suaves y fr&iacute;os como lavanda, azul empolvado y gris rosado. Los colores c&aacute;lidos y apagados como el mostaza o el marr&oacute;n oscuro pueden opacar el rostro por contraste, as&iacute; que &uacute;salos con moderaci&oacute;n.</p>
        <h2>Colores que Verano Fr&iacute;o deber&iacute;a evitar</h2>
        <p>Los colores c&aacute;lidos intensos como el naranja brillante, el mostaza y el caqui oscuro tienden a apagar la claridad natural de Verano Fr&iacute;o. Res&eacute;rvalos para accesorios o zapatos, lejos del rostro.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Primavera C&aacute;lida</span>
                <h3>Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Invierno Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>Los mejores colores de cabello para cada tipo de color personal</h3>
                <p>Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/autumn-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo | Find Your Personal Color</title>
    <meta name="description" content="Todo sobre Oto&ntilde;o C&aacute;lido: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/autumn-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo">
    <meta property="og:description" content="Todo sobre Oto&ntilde;o C&aacute;lido: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/autumn-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo",
        "description": "Todo sobre Oto&ntilde;o C&aacute;lido: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/autumn-warm-guide.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo</div>

    <div class="wrap article-header">
        <span class="tag tag-autumn">Oto&ntilde;o C&aacute;lido</span>
        <h1 class="serif">Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo</h1>
        <div class="article-meta">7 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Oto&ntilde;o C&aacute;lido se define por una apariencia profunda, rica y sofisticada. Un subtono c&aacute;lido, dorado u oliva, combinado con colores terrosos y apagados, resalta al m&aacute;ximo la profundidad natural de este tipo.</p>
        <h2>Caracter&iacute;sticas de Oto&ntilde;o C&aacute;lido</h2>
        <p>Las personas Oto&ntilde;o C&aacute;lido suelen tener un subtono de piel dorado u oliva, y se broncean profundamente con el sol. Los ojos suelen ser marr&oacute;n oscuro o avellana intenso, y el cabello suele favorecer en tonos casta&ntilde;o oscuro o caramelo profundo. La impresi&oacute;n general es c&aacute;lida, madura y de lujo natural.</p>
        <h2>La mejor paleta de colores para Oto&ntilde;o C&aacute;lido</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B85C38"><span style="color:#2E1608">Terracota</span></div>
            <div class="sw" style="background:#8C7A3D"><span style="color:#2A2410">Caqui</span></div>
            <div class="sw" style="background:#7A3B1C"><span style="color:#F6D9C6">Marr&oacute;n Borgo&ntilde;a</span></div>
            <div class="sw" style="background:#C9A24B"><span style="color:#2A2008">Mostaza</span></div>
        </div>
        <p>La terracota, el caqui y el mostaza realzan la profundidad natural de la piel de Oto&ntilde;o C&aacute;lido. La clave est&aacute; en elegir tonos c&aacute;lidos m&aacute;s oscuros y apagados.</p>
        <h2>Gu&iacute;a de colores de maquillaje</h2>
        <ul>
            <li><strong>Labios</strong>: rojo ladrillo, terracota y marr&oacute;n quedan preciosos</li>
            <li><strong>Rubor</strong>: bronce y terracota dan un efecto esculpido y natural</li>
            <li><strong>Sombras</strong>: caqui, marr&oacute;n y bronce dorado en base c&aacute;lida son ideales</li>
            <li><strong>Colores a evitar</strong>: rosa palo o lavanda helada</li>
        </ul>
        <h2>Estilismo en ropa y accesorios</h2>
        <p>Las joyas doradas, bronce o de oro envejecido enriquecen la piel de forma natural. En la ropa, apuesta por b&aacute;sicos c&aacute;lidos y profundos como caqui, camel, borgo&ntilde;a y mostaza. El blanco puro o los pasteles helados pueden aplanar el rostro por contraste, as&iacute; que &uacute;salos solo como detalle.</p>
        <h2>Colores que Oto&ntilde;o C&aacute;lido deber&iacute;a evitar</h2>
        <p>Los colores fr&iacute;os y brillantes como la lavanda, el rosa helado o el negro puro tienden a aplanar la profundidad natural de Oto&ntilde;o C&aacute;lido. Cambia el negro por marr&oacute;n oscuro, y los tonos helados por neutros c&aacute;lidos, para un resultado mucho mejor.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Primavera C&aacute;lida</span>
                <h3>Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Invierno Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</h3>
                <p>Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/winter-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo | Find Your Personal Color</title>
    <meta name="description" content="Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/winter-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo">
    <meta property="og:description" content="Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/winter-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo",
        "description": "Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/winter-cool-guide.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</div>

    <div class="wrap article-header">
        <span class="tag tag-winter">Invierno Fr&iacute;o</span>
        <h1 class="serif">Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</h1>
        <div class="article-meta">7 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Invierno Fr&iacute;o se define por una apariencia moderna, n&iacute;tida y carism&aacute;tica. Un subtono fr&iacute;o, azulado o rosado, combinado con colores intensos y de alto contraste, resalta al m&aacute;ximo la fuerza natural de este tipo.</p>
        <h2>Caracter&iacute;sticas de Invierno Fr&iacute;o</h2>
        <p>Las personas Invierno Fr&iacute;o suelen tener un subtono de piel claro, azulado o rosado, y se enrojecen con facilidad. Los ojos suelen ser marr&oacute;n muy oscuro o casi negro, y el cabello suele favorecer en negro puro o casta&ntilde;o oscuro ceniza. La impresi&oacute;n general es impactante, n&iacute;tida y carism&aacute;tica de forma natural.</p>
        <h2>La mejor paleta de colores para Invierno Fr&iacute;o</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#12182A"><span style="color:#FFFFFF">Negro Puro</span></div>
            <div class="sw" style="background:#FFFFFF"><span style="color:#12182A">Blanco Puro</span></div>
            <div class="sw" style="background:#1A1A40"><span style="color:#FFFFFF">Azul Marino</span></div>
            <div class="sw" style="background:#7A0BC0"><span style="color:#FFFFFF">F&uacute;csia Vivo</span></div>
        </div>
        <p>El negro puro, el blanco, el azul marino y los tonos joya intensos como el esmeralda o el f&uacute;csia realzan la nitidez natural de la piel de Invierno Fr&iacute;o. La clave est&aacute; en elegir colores de alta saturaci&oacute;n y contraste marcado.</p>
        <h2>Gu&iacute;a de colores de maquillaje</h2>
        <ul>
            <li><strong>Labios</strong>: rojo azulado, vino y f&uacute;csia vivo quedan preciosos</li>
            <li><strong>Rubor</strong>: rosa fr&iacute;o da un sonrojo definido y n&iacute;tido</li>
            <li><strong>Sombras</strong>: negro, gris y plata de alta saturaci&oacute;n en base fr&iacute;a son ideales</li>
            <li><strong>Colores a evitar</strong>: coral anaranjado o beige apagado</li>
        </ul>
        <h2>Estilismo en ropa y accesorios</h2>
        <p>Las joyas plateadas, de platino u oro blanco realzan la sofisticaci&oacute;n natural de la piel. En la ropa, apuesta por b&aacute;sicos en negro, blanco y azul marino, y a&ntilde;ade toques atrevidos de esmeralda o f&uacute;csia para el efecto Invierno Fr&iacute;o completo. Los neutros c&aacute;lidos y apagados como el beige o el camel pueden desdibujar el rostro, as&iacute; que &uacute;salos con cuidado.</p>
        <h2>Colores que Invierno Fr&iacute;o deber&iacute;a evitar</h2>
        <p>Los colores c&aacute;lidos y apagados como el mostaza, el caqui y el marr&oacute;n tienden a opacar la nitidez natural de Invierno Fr&iacute;o. Los neutros en gris o negro siempre ser&aacute;n mejor opci&oacute;n que los c&aacute;lidos.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">Verano Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Verano Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Verano Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">Oto&ntilde;o C&aacute;lido</span>
                <h3>Gu&iacute;a completa de Oto&ntilde;o C&aacute;lido: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Oto&ntilde;o C&aacute;lido: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>Los mejores colores de cabello para cada tipo de color personal</h3>
                <p>Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/lipstick-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C&oacute;mo elegir el color de labial seg&uacute;n tu color personal | Find Your Personal Color</title>
    <meta name="description" content="Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/lipstick-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="C&oacute;mo elegir el color de labial seg&uacute;n tu color personal">
    <meta property="og:description" content="Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/lipstick-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "C&oacute;mo elegir el color de labial seg&uacute;n tu color personal",
        "description": "Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/lipstick-color-guide.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">Consejos de Estilo</span>
        <h1 class="serif">C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</h1>
        <div class="article-meta">5 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Los labios son uno de los primeros lugares donde se posa la mirada en tu rostro, lo que significa que cambiar de labial puede transformar por completo tu imagen.</p>
        <h2>Por qu&eacute; el color de labios tiene tanto impacto</h2>
        <p>Como los labios son un &aacute;rea peque&ntilde;a pero de color intenso que atrae naturalmente la atenci&oacute;n, un tono que no combine con tu subtono puede desequilibrar todo el rostro. En cambio, el color correcto puede darte un aspecto vivo y arreglado incluso con poco maquillaje adicional.</p>
        <h2>Colores de labios recomendados por estaci&oacute;n</h2>
        <ul>
            <li><strong>Primavera C&aacute;lida</strong>: coral, rosa salm&oacute;n, rojo anaranjado</li>
            <li><strong>Verano Fr&iacute;o</strong>: rosa palo, malva, frambuesa</li>
            <li><strong>Oto&ntilde;o C&aacute;lido</strong>: rojo ladrillo, terracota, marr&oacute;n</li>
            <li><strong>Invierno Fr&iacute;o</strong>: rojo azulado, vino, f&uacute;csia vivo</li>
        </ul>
        <h2>&iquest;El acabado (mate o brillante) tambi&eacute;n importa?</h2>
        <p>El acabado importa casi tanto como el tono. Los acabados mate muestran el color m&aacute;s intenso y saturado, lo que favorece los looks n&iacute;tidos de Invierno Fr&iacute;o y Oto&ntilde;o C&aacute;lido. Los acabados brillantes y jugosos dan un aspecto fresco y luminoso que suele favorecer a Primavera C&aacute;lida y Verano Fr&iacute;o.</p>
        <h2>C&oacute;mo comprar sin arrepentirte</h2>
        <p>La luz de las tiendas puede distorsionar c&oacute;mo se ve un color, as&iacute; que siempre que puedas prueba el tono con luz natural y apl&iacute;calo directamente en los labios, no en el dorso de la mano. Los nombres de los tonos var&iacute;an entre marcas aunque pertenezcan a la "misma" familia de color, as&iacute; que conf&iacute;a en lo que ves en tu propia piel m&aacute;s que en las fotos de rese&ntilde;as.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>Los mejores colores de cabello para cada tipo de color personal</h3>
                <p>Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>El look perfecto para entrevistas, bodas y d&iacute;as importantes</h3>
                <p>Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Primavera C&aacute;lida</span>
                <h3>Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/hair-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Los mejores colores de cabello para cada tipo de color personal | Find Your Personal Color</title>
    <meta name="description" content="Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/hair-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Los mejores colores de cabello para cada tipo de color personal">
    <meta property="og:description" content="Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/hair-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Los mejores colores de cabello para cada tipo de color personal",
        "description": "Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/hair-color-guide.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Los mejores colores de cabello para cada tipo de color personal</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">Consejos de Estilo</span>
        <h1 class="serif">Los mejores colores de cabello para cada tipo de color personal</h1>
        <div class="article-meta">5 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">El color de cabello enmarca todo tu rostro, as&iacute; que elegir mal puede desequilibrar tu complexi&oacute;n entera, mientras que acertar puede hacer que tu rostro se vea m&aacute;s luminoso y vivo.</p>
        <h2>C&oacute;mo el color de cabello afecta a tu rostro</h2>
        <p>Como el cabello cubre una gran &aacute;rea alrededor de tu rostro, la luz que refleja influye directamente en c&oacute;mo se percibe el tono de tu piel. Elegir un color de cabello que choque con tu subtono puede hacer que tu piel se vea apagada o p&aacute;lida.</p>
        <h2>Colores de cabello recomendados por estaci&oacute;n</h2>
        <ul>
            <li><strong>Primavera C&aacute;lida</strong>: casta&ntilde;o claro, casta&ntilde;o dorado, rubio miel</li>
            <li><strong>Verano Fr&iacute;o</strong>: casta&ntilde;o ceniza, casta&ntilde;o grisaceo</li>
            <li><strong>Oto&ntilde;o C&aacute;lido</strong>: casta&ntilde;o oscuro, caramelo, marr&oacute;n chocolate</li>
            <li><strong>Invierno Fr&iacute;o</strong>: negro puro, casta&ntilde;o oscuro ceniza</li>
        </ul>
        <h2>Qu&eacute; revisar antes de te&ntilde;irte</h2>
        <p>Como te&ntilde;irse es dif&iacute;cil de revertir una vez hecho, lo ideal es sostener muestras de color junto a tu rostro de antemano para ver c&oacute;mo interact&uacute;a cada tono con tu piel. Ten en cuenta tambi&eacute;n que los colores m&aacute;s claros suelen requerir m&aacute;s mantenimiento, desde retoques de ra&iacute;z hasta cuidado del da&ntilde;o.</p>
        <h2>Uso de mechas y color solo alrededor del rostro</h2>
        <p>Si un cambio completo de color te parece demasiado, a&ntilde;adir mechas m&aacute;s claras solo alrededor del rostro es una excelente alternativa. As&iacute; obtienes el beneficio para tu complexi&oacute;n con mucho menos riesgo y compromiso que un cambio total.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</h3>
                <p>Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>El look perfecto para entrevistas, bodas y d&iacute;as importantes</h3>
                <p>Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Invierno Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/interview-wedding-styling.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El look perfecto para entrevistas, bodas y d&iacute;as importantes | Find Your Personal Color</title>
    <meta name="description" content="Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/interview-wedding-styling.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="El look perfecto para entrevistas, bodas y d&iacute;as importantes">
    <meta property="og:description" content="Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/interview-wedding-styling.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "El look perfecto para entrevistas, bodas y d&iacute;as importantes",
        "description": "Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/interview-wedding-styling.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / El look perfecto para entrevistas, bodas y d&iacute;as importantes</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">Consejos de Estilo</span>
        <h1 class="serif">El look perfecto para entrevistas, bodas y d&iacute;as importantes</h1>
        <div class="article-meta">6 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Los d&iacute;as importantes hacen que la elecci&oacute;n de color pese a&uacute;n m&aacute;s. Prestar un poco m&aacute;s de atenci&oacute;n a tu color personal puede dejar una impresi&oacute;n duradera y natural.</p>
        <h2>Por qu&eacute; el color importa m&aacute;s en los d&iacute;as importantes</h2>
        <p>Cuando solo tienes un momento breve para causar una buena impresi&oacute;n, los colores que llevas pesan tanto como tu expresi&oacute;n o tu tono de voz. Los colores que iluminan tu piel te hacen parecer m&aacute;s seguro de ti mismo de lo que quiz&aacute; te sientes.</p>
        <h2>Gu&iacute;a de colores para el look de entrevista</h2>
        <p>Las entrevistas requieren transmitir confianza y profesionalidad. Si eres c&aacute;lido (Primavera u Oto&ntilde;o), construye tu look con base marfil o camel y a&ntilde;ade una prenda interior en tono c&aacute;lido como toque de color. Si eres fr&iacute;o (Verano o Invierno), construye tu look con base blanca o azul marino y una prenda interior en tono fr&iacute;o &mdash; formal, pero con tu piel visiblemente luminosa.</p>
        <h2>Look de invitada de boda y celebraciones</h2>
        <p>En los looks de invitada, el objetivo es verse festivo sin opacar la ocasi&oacute;n. Primavera C&aacute;lida brilla con coral o camel claro, Verano Fr&iacute;o con lavanda o rosa polvoriento, Oto&ntilde;o C&aacute;lido con terracota o caqui, e Invierno Fr&iacute;o con azul marino o borgo&ntilde;a.</p>
        <h2>Combinaciones de color que quedan bien en fotos</h2>
        <p>Las fotos suelen atenuar un poco los colores respecto a la realidad, as&iacute; que es buena idea elegir tonos ligeramente m&aacute;s saturados de lo habitual. Y como el color m&aacute;s cercano a tu rostro (la parte de arriba) es el que m&aacute;s impacto visual tiene, prioriza acertar ah&iacute; antes que en la parte de abajo o los accesorios.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>C&oacute;mo elegir el color de labial seg&uacute;n tu color personal</h3>
                <p>Desde los tonos de labial recomendados por estaci&oacute;n hasta un m&eacute;todo infalible para probarlos en la tienda sin arrepentirte despu&eacute;s.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>Los mejores colores de cabello para cada tipo de color personal</h3>
                <p>Colores de cabello recomendados por estaci&oacute;n, qu&eacute; revisar antes de te&ntilde;irte y c&oacute;mo usar las mechas de forma estrat&eacute;gica.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</h3>
                <p>Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/photo-tips-for-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso | Find Your Personal Color</title>
    <meta name="description" content="Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/photo-tips-for-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso">
    <meta property="og:description" content="Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/photo-tips-for-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso",
        "description": "Una checklist pr&aacute;ctica sobre iluminaci&oacute;n, &aacute;ngulo y condiciones de foto que marcan la diferencia en la precisi&oacute;n del diagn&oacute;stico con IA.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/photo-tips-for-diagnosis.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
        <h1 class="serif">Consejos de fotograf&iacute;a para un diagn&oacute;stico preciso</h1>
        <div class="article-meta">4 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Como el diagn&oacute;stico de color personal con IA analiza los p&iacute;xeles de una sola foto, las condiciones en las que la tomas afectan enormemente a la precisi&oacute;n. Unos pocos ajustes marcan una gran diferencia en la fiabilidad del resultado.</p>
        <h2>Por qu&eacute; la iluminaci&oacute;n es lo m&aacute;s importante</h2>
        <p>La luz artificial, sobre todo las bombillas c&aacute;lidas amarillentas o las luces de colores, puede distorsionar el color real de tu piel en la foto. La luz natural de una ventana, idealmente por la ma&ntilde;ana o a primera hora de la tarde cuando el sol no es tan intenso, da los resultados m&aacute;s fiables.</p>
        <h2>&Aacute;ngulo y distancia</h2>
        <p>Toma la foto de frente, con todo tu rostro centrado en el encuadre. Demasiado cerca introduce distorsi&oacute;n del lente; demasiado lejos deja muy pocos datos de p&iacute;xeles del rostro. Una distancia de un brazo extendido es lo ideal.</p>
        <h2>Qu&eacute; evitar</h2>
        <ul>
            <li>Filtros de belleza o apps de edici&oacute;n</li>
            <li>Base de maquillaje pesada o crema tonificadora</li>
            <li>Fotos a contraluz</li>
            <li>Iluminaci&oacute;n interior mixta o de colores</li>
        </ul>
        <h2>Checklist r&aacute;pida antes de la foto</h2>
        <ul>
            <li>&iquest;Est&aacute;s cerca de una ventana con luz natural?</li>
            <li>&iquest;Est&aacute;s mirando directamente a la c&aacute;mara?</li>
            <li>&iquest;Has desactivado filtros o edici&oacute;n?</li>
            <li>&iquest;Llevas el maquillaje al m&iacute;nimo?</li>
        </ul>
        <p>Seguir esta checklist por s&iacute; sola mejora notablemente la fiabilidad de tu diagn&oacute;stico con IA. Si el resultado te parece extra&ntilde;o, prueba a repetir la foto en otro momento del d&iacute;a o lugar y compara ambos resultados.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; tan preciso es el diagn&oacute;stico de color personal con IA?</h3>
                <p>C&oacute;mo funciona realmente el an&aacute;lisis de color personal con IA, sus puntos fuertes y limitaciones, y consejos de foto para mejorar la precisi&oacute;n.</p>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>Tono c&aacute;lido vs tono fr&iacute;o: 5 formas de diferenciarlos</h3>
                <p>Desde las venas de la mu&ntilde;eca hasta la reacci&oacute;n a las joyas, aqu&iacute; tienes 5 comprobaciones sencillas que puedes hacer en casa para descubrir tu subtono.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>El look perfecto para entrevistas, bodas y d&iacute;as importantes</h3>
                <p>Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/color-trends-2026.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal | Find Your Personal Color</title>
    <meta name="description" content="El Color del A&ntilde;o 2026 de Pantone, y consejos pr&aacute;cticos para adaptar los colores de tendencia a cualquier tipo de color personal.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/color-trends-2026.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal">
    <meta property="og:description" content="El Color del A&ntilde;o 2026 de Pantone, y consejos pr&aacute;cticos para adaptar los colores de tendencia a cualquier tipo de color personal.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/color-trends-2026.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal",
        "description": "El Color del A&ntilde;o 2026 de Pantone, y consejos pr&aacute;cticos para adaptar los colores de tendencia a cualquier tipo de color personal.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/color-trends-2026.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">Tendencias de Color</span>
        <h1 class="serif">Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal</h1>
        <div class="article-meta">6 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">Cada a&ntilde;o, el "color del a&ntilde;o" influye en la moda y la belleza. Pero seguir una tendencia a ciegas no siempre es la mejor idea: adaptarla a tu propio color personal es lo que realmente da un resultado elegante.</p>
        <h2>Los colores que definen 2026</h2>
        <p>Pantone eligi&oacute; Cloud Dancer &mdash; un blanco roto suave y et&eacute;reo &mdash; como su Color del A&ntilde;o 2026. Por su parte, las agencias de tendencias WGSN y Coloro nombraron Transformative Teal, un verde azulado profundo, como su color del a&ntilde;o. Otros tonos destacados incluyen el f&uacute;csia, la menta, el aqua, el &aacute;mbar y el verde salvia.</p>
        <h2>C&oacute;mo adaptar los colores de tendencia a tu color personal</h2>
        <p>Cualquier color de tendencia puede funcionar con cualquier tipo de color personal con un peque&ntilde;o ajuste de subtono. Por ejemplo, con Transformative Teal: los tipos c&aacute;lidos pueden inclinarse hacia una versi&oacute;n m&aacute;s verdosa, mientras que los tipos fr&iacute;os pueden inclinarse hacia una versi&oacute;n m&aacute;s azulada &mdash; ambas siguen la tendencia pero se ven mucho m&aacute;s naturales en tu piel.</p>
        <h2>C&oacute;mo usar las tendencias de 2026 seg&uacute;n tu estaci&oacute;n</h2>
        <ul>
            <li><strong>Primavera C&aacute;lida</strong>: prueba el &aacute;mbar o un f&uacute;csia c&aacute;lido como color de acento</li>
            <li><strong>Verano Fr&iacute;o</strong>: construye tu look con Cloud Dancer, aqua o una menta suave</li>
            <li><strong>Oto&ntilde;o C&aacute;lido</strong>: incorpora el verde salvia o un teal m&aacute;s c&aacute;lido en prendas de abrigo</li>
            <li><strong>Invierno Fr&iacute;o</strong>: atr&eacute;vete con un Transformative Teal vivo o un f&uacute;csia fr&iacute;o</li>
        </ul>
        <p>Los colores de tendencia cambian cada a&ntilde;o, pero los fundamentos de tu color personal (subtono, valor y saturaci&oacute;n) nunca cambian. Traducir las tendencias a tu propia paleta, en lugar de seguirlas tal cual, es la estrategia de estilo que realmente perdura.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">Psicolog&iacute;a del Color</span>
                <h3>C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n</h3>
                <p>Los fundamentos de la psicolog&iacute;a del color, y c&oacute;mo llevar tu color personal puede influir en tu autoconfianza y en c&oacute;mo te perciben los dem&aacute;s.</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">Primavera C&aacute;lida</span>
                <h3>Gu&iacute;a completa de Primavera C&aacute;lida: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Primavera C&aacute;lida: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">Invierno Fr&iacute;o</span>
                <h3>Gu&iacute;a completa de Invierno Fr&iacute;o: colores, maquillaje y estilismo</h3>
                <p>Todo sobre Invierno Fr&iacute;o: caracter&iacute;sticas clave, la mejor paleta de colores, maquillaje recomendado y consejos de ropa y accesorios.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > es/guide/color-psychology-confidence.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n | Find Your Personal Color</title>
    <meta name="description" content="Los fundamentos de la psicolog&iacute;a del color, y c&oacute;mo llevar tu color personal puede influir en tu autoconfianza y en c&oacute;mo te perciben los dem&aacute;s.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/es/guide/color-psychology-confidence.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n">
    <meta property="og:description" content="Los fundamentos de la psicolog&iacute;a del color, y c&oacute;mo llevar tu color personal puede influir en tu autoconfianza y en c&oacute;mo te perciben los dem&aacute;s.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/es/guide/color-psychology-confidence.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n",
        "description": "Los fundamentos de la psicolog&iacute;a del color, y c&oacute;mo llevar tu color personal puede influir en tu autoconfianza y en c&oacute;mo te perciben los dem&aacute;s.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/es/guide/color-psychology-confidence.html",
        "inLanguage": "es"
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
            <a href="/es/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/" class="active">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/es/">Inicio</a> / <a href="/es/guide/">Gu&iacute;a</a> / C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">Psicolog&iacute;a del Color</span>
        <h1 class="serif">C&oacute;mo el color afecta la confianza y la primera impresi&oacute;n</h1>
        <div class="article-meta">5 min de lectura &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">El color no se trata solo de verse bien: tiene un efecto real y medible en c&oacute;mo nos sentimos con nosotros mismos y en la impresi&oacute;n que dejamos en los dem&aacute;s.</p>
        <h2>&iquest;Qu&eacute; es la psicolog&iacute;a del color?</h2>
        <p>La psicolog&iacute;a del color estudia c&oacute;mo colores espec&iacute;ficos influyen en las emociones y el comportamiento humano. El rojo suele asociarse con energ&iacute;a y confianza, el azul con confianza y estabilidad, y el verde con calma y equilibrio: asociaciones que aparecen una y otra vez en distintas investigaciones y culturas.</p>
        <h2>C&oacute;mo el color moldea la impresi&oacute;n que das</h2>
        <p>En situaciones donde las primeras impresiones se forman r&aacute;pido &mdash; entrevistas de trabajo, primeros encuentros &mdash;, los colores que llevas pueden actuar como una se&ntilde;al inconsciente sobre tu personalidad. Los colores profundos y saturados suelen transmitir confianza y profesionalidad, mientras que los pasteles suaves suelen transmitir calidez y cercan&iacute;a.</p>
        <h2>La relaci&oacute;n entre el color personal y la autoconfianza</h2>
        <p>Lo interesante es que los efectos de la psicolog&iacute;a del color son m&aacute;s fuertes cuando llevas puesto un color que realmente te favorece. Ponerte tu color personal hace que te sientas genuinamente m&aacute;s a gusto con tu propio reflejo, y eso se refleja de forma natural en tu postura, tu expresi&oacute;n y tu tono de voz.</p>
        <h2>C&oacute;mo usar la psicolog&iacute;a del color en el d&iacute;a a d&iacute;a</h2>
        <p>Elige colores que transmitan confianza antes de una presentaci&oacute;n importante, y tonos m&aacute;s suaves para encuentros relajados. En cualquier caso, la base siempre deber&iacute;a ser tu rango de color personal: incluso un color "psicol&oacute;gicamente ideal" puede verse mal si no combina con tu subtono natural.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>&iquest;Quieres saber cu&aacute;l es tu color personal?</h3>
        <p>Descubre tu tipo en menos de un minuto con 4 preguntas y an&aacute;lisis de foto con IA.</p>
        <a href="/es/#quiz-container" class="btn">Hacer el test</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">Tambi&eacute;n te puede interesar</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">Tendencias de Color</span>
                <h3>Tendencias de color 2026 y c&oacute;mo llevarlas con tu color personal</h3>
                <p>El Color del A&ntilde;o 2026 de Pantone, y consejos pr&aacute;cticos para adaptar los colores de tendencia a cualquier tipo de color personal.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">Gu&iacute;a B&aacute;sica</span>
                <h3>&iquest;Qu&eacute; es el Color Personal? Gu&iacute;a completa para principiantes</h3>
                <p>Desde el concepto b&aacute;sico hasta el sistema de las cuatro estaciones y c&oacute;mo conseguir un diagn&oacute;stico preciso, todo lo que necesitas saber sobre el color personal.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">Consejos de Estilo</span>
                <h3>El look perfecto para entrevistas, bodas y d&iacute;as importantes</h3>
                <p>Desde el look de entrevista hasta el look de invitada de boda, as&iacute; puedes usar tu color personal para causar una gran impresi&oacute;n cuando m&aacute;s importa.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/es/guide/">Gu&iacute;a</a>
            <a href="/es/about.html">Sobre Nosotros</a>
            <a href="/es/privacy.html">Pol&iacute;tica de Privacidad</a>
            <a href="/es/terms.html">T&eacute;rminos de Servicio</a>
            <a href="/es/contact.html">Contacto</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

echo "Files written. Staging and committing..."
git add -A
git commit -m "Add es/guide content section: 14 articles + index, nav links, sitemap update"
git push

echo "Done. Vercel should redeploy automatically via the GitHub integration."
