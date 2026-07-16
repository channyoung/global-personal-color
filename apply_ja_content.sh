#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- ja content batch
# Adds /ja/guide/ section: 14 articles + index, wired into
# homepage/footer nav, sitemap updated with all new URLs.
# Run from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Adding ja/guide content section..."
mkdir -p ja/guide

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
</urlset>
EOF_GPC

cat > ja/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>パーソナルカラー診断テスト｜自分に似合う色を見つけよう | Find Your Personal Color</title>
    <meta name="description" content="4つの簡単な質問とAI写真分析で、スプリング・サマー・オータム・ウィンターのどれに当てはまるか無料で診断。あなたに似合うカラーパレットとスタイリングガイドもご紹介します。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="パーソナルカラー診断テスト｜自分に似合う色を見つけよう">
    <meta property="og:description" content="簡単な質問とAIカメラ分析で、あなたのパーソナルカラーを無料で診断します。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="パーソナルカラー診断テスト｜自分に似合う色を見つけよう">
    <meta name="twitter:description" content="簡単な質問とAIカメラ分析で、あなたのパーソナルカラーを無料で診断します。">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "WebApplication",
      "name": "Find Your Personal Color",
      "url": "https://global-personal-color.vercel.app/ja/",
      "description": "4つの簡単な質問とAI写真分析で、スプリング・サマー・オータム・ウィンターのどれに当てはまるか無料で診断。あなたに似合うカラーパレットとスタイリングガイドもご紹介します。",
      "applicationCategory": "LifestyleApplication",
      "operatingSystem": "Any",
      "inLanguage": "ja",
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
          "name": "パーソナルカラー診断とは何ですか？",
          "acceptedAnswer": { "@type": "Answer", "text": "生まれ持った肌のトーンと調和する最適な色を見つけるプロセスです。" }
        },
        {
          "@type": "Question",
          "name": "AIカメラ分析はどのように機能しますか？",
          "acceptedAnswer": { "@type": "Answer", "text": "顔部分のピクセルのRGB値を計算し、瞬時に似合う季節パレットを提案します。" }
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" id="lang-ko">KO</a>
                <a href="/en/" id="lang-en">EN</a>
                <a href="/ja/" id="lang-ja" class="active">JA</a>
                <a href="/es/" id="lang-es">ES</a>
                <a href="/zh/" id="lang-zh">ZH</a>
            </div>
        </div>
    </header>

    <section class="wrap hero">
        <div>
            <div class="eyebrow">Personal Color Diagnosis</div>
            <h1>あなたの顔にも<br><em>季節</em>があります</h1>
            <p class="lede">生まれ持った肌・瞳・髪の色を4つの季節で診断し、あなたに最も似合うカラーパレットをお探しします。</p>
            <div class="cta-row">
                <button class="btn-primary" onclick="startQuiz();document.getElementById('quiz-container').scrollIntoView({behavior:'smooth'});">無料で診断を始める</button>
                <span class="cta-note">4問 · 所要時間1分</span>
            </div>
        </div>
        <div class="fan">
            <div class="fcard f1"><span class="fnum">01 &middot; Spring</span><span class="fname">スプリングウォーム</span><span class="fdots"><span style="background:#FF8C69"></span><span style="background:#FFD59A"></span><span style="background:#F6C9AD"></span></span></div>
            <div class="fcard f2"><span class="fnum">02 &middot; Summer</span><span class="fname">サマークール</span><span class="fdots"><span style="background:#B9C6DC"></span><span style="background:#DCE4EF"></span><span style="background:#8AA9D6"></span></span></div>
            <div class="fcard f3"><span class="fnum">03 &middot; Autumn</span><span class="fname">オータムウォーム</span><span class="fdots"><span style="background:#8C4A24"></span><span style="background:#C98452"></span><span style="background:#E6D2C1"></span></span></div>
            <div class="fcard f4"><span class="fnum">04 &middot; Winter</span><span class="fname">ウィンタークール</span><span class="fdots"><span style="background:#FFFFFF"></span><span style="background:#7A8CA8"></span><span style="background:#12182A"></span></span></div>
        </div>
    </section>

    <div class="wrap">
        <div class="tabs">
            <a class="tab" href="#guide">パーソナルカラーガイド</a>
            <a class="tab" href="#quiz-container">診断</a>
            <a class="tab" href="#analysis-card-zone">AI</a>
            <a class="tab" href="#faq">FAQ</a>
        </div>
    </div>

    <section class="wrap block guide-grid" id="guide">
        <div>
            <h2 class="serif">パーソナルカラーガイド</h2>
            <p>パーソナルカラーとは、生まれ持った肌・瞳・髪の色と最も調和する色のコレクションです。自分に合うトーンを見つけると顔色が明るく見えますが、合わないトーンだと肌がくすんで見えることがあります。</p>
            <p>誰もが生まれ持った独自の肌のアンダートーンと瞳の色を持っています。パーソナルカラー診断では、これらの特徴をスプリング・サマー・オータム・ウィンターの4つのシーズンに分類します。自分に合うパレットを知ることで、買い物の失敗を減らし、メイクやスタイリングの精度を大きく高めることができます。</p>
            <p><a href="/ja/guide/" style="color:var(--brand);font-weight:600;text-decoration:none;">パーソナルカラーガイドをもっと見る &rarr;</a></p>
        </div>
        <div class="index-card">
            <div class="idxlabel">4 Seasons at a glance</div>
            <div class="srow"><span class="chip chip-spring"></span><div class="stxt"><strong>スプリングウォーム</strong><span>新垣結衣, 広瀬すず &middot; 華やかなピーチ、コーラル</span></div></div>
            <div class="srow"><span class="chip chip-summer"></span><div class="stxt"><strong>サマークール</strong><span>石原さとみ, 綾瀬はるか &middot; 澄んだラベンダー、スカイブルー</span></div></div>
            <div class="srow"><span class="chip chip-autumn"></span><div class="stxt"><strong>オータムウォーム</strong><span>米倉涼子, 深田恭子 &middot; 深みのあるカーキ、バーガンディ</span></div></div>
            <div class="srow"><span class="chip chip-winter"></span><div class="stxt"><strong>ウィンタークール</strong><span>宇多田ヒカル, 中島美嘉 &middot; 鮮やかなブラック、ネイビー</span></div></div>
        </div>
    </section>

    <section class="wrap block" id="quiz-container">
        <div class="card-panel">
            <div id="start-view">
                <h3 class="panel-title">🎨 パーソナルカラー診断テスト</h3>
                <p class="panel-sub">簡単なビジュアル質問に答えるだけで、あなたの季節タイプをすぐに見つけられます。</p>
                <button id="start-btn" class="btn">診断テストを始める</button>
            </div>

            <div id="question-view" class="hidden">
                <div class="progress-container"><div id="progress"></div></div>
                <h3 id="question-text">Question Loading...</h3>
                <div id="answer-buttons"></div>
            </div>

            <div id="result-view" class="hidden">
                <h3 class="panel-title">🎉 あなたのパーソナルカラー診断結果</h3>
                <div id="result-tags"></div>
                <p id="result-description"></p>
                <h4 id="best-color-title"></h4>
                <div id="color-palette-display"></div>
                <h4 id="match-guide-title"></h4>
                <button id="restart-btn" class="btn btn-secondary">もう一度テストする</button>
            </div>
        </div>
    </section>

    <section class="wrap block" id="analysis-card-zone">
        <div class="card-panel">
            <h3 class="panel-title">📸 AIスマート分析 (Beta)</h3>
            <p class="panel-sub">正確な分析のため、正面から明るく撮影された写真をご使用ください。データが外部サーバーに保存されることは一切ありません。</p>

            <button id="init-cam-btn" class="btn action-btn">リアルタイムカメラを起動する</button>
            <button id="trigger-file-btn" class="btn btn-secondary action-btn">📁 写真をアップロードする</button>

            <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">

            <div id="camera-zone" class="hidden">
                <div class="camera-wrapper">
                    <video id="webcam" autoplay playsinline muted></video>
                    <div class="face-overlay"></div>
                </div>
                <button id="capture-btn" class="btn">📸 撮影してAI分析する</button>
            </div>

            <div id="camera-loading" class="hidden">⏳ AIが肌トーンをリアルタイム分析中...</div>
            <canvas id="calc-canvas" class="hidden"></canvas>
        </div>
    </section>

    <section class="wrap block" id="faq" style="max-width:760px;">
        <h2 class="serif" style="text-align:center;margin-bottom:24px;">よくある質問</h2>
        <div class="faq-list">
            <details>
                <summary>パーソナルカラー診断とは何ですか？</summary>
                <p>生まれ持った肌のトーンと調和する最適な色を見つけるプロセスです。</p>
            </details>
            <details>
                <summary>AIカメラ分析はどのように機能しますか？</summary>
                <p>顔部分のピクセルのRGB値を計算し、瞬時に似合う季節パレットを提案します。</p>
            </details>
        </div>
    </section>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>

    <script>
        const camErrorMsg = "カメラを起動できませんでした。権限をご確認いただくか、代わりに写真アップロード機能をご利用ください。";
    </script>
    <script src="script.js"></script>
</body>
</html>
EOF_GPC

cat > ja/about.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>サービス紹介 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Colorは、ユーザーが自分のパーソナルカラーを診断し、スタイリングのヒントを得られるようにするために作られたサービスです。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/about.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/about.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/about.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/about.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/about.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/about.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/about.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="サービス紹介 | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Colorは、ユーザーが自分のパーソナルカラーを診断し、スタイリングのヒントを得られるようにするために作られたサービスです。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/about.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="サービス紹介 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Colorは、ユーザーが自分のパーソナルカラーを診断し、スタイリングのヒントを得られるようにするために作られたサービスです。">
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>サービス紹介</h2>
        <p>Find Your Personal Colorは、ユーザーが自分自身のパーソナルカラーを診断し、スタイリングのヒントを得られるようにするために作られました。データに基づいた分析を通じて、日常に小さな楽しみをお届けすることが目標です。</p>
        <a href="/ja/" class="btn">ホームに戻る</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>お問い合わせ | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Colorのご利用に関するご質問やご意見は、メールにてお問い合わせください。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/contact.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="お問い合わせ | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Colorのご利用に関するご質問やご意見は、メールにてお問い合わせください。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/contact.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="お問い合わせ | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Colorのご利用に関するご質問やご意見は、メールにてお問い合わせください。">
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>お問い合わせ</h2>
        <p>本サービスに関するお問い合わせは、下記のメールアドレスまでご連絡ください。できるだけ早くご返信できるよう努めます。お問い合わせ先: seanstudio.contact@gmail.com</p>
        <a href="/ja/" class="btn">ホームに戻る</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/privacy.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>プライバシーポリシー | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Colorのプライバシーポリシーです。個人識別情報は保存されません。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/privacy.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/privacy.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/privacy.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/privacy.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/privacy.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/privacy.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/privacy.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="プライバシーポリシー | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Colorのプライバシーポリシーです。個人識別情報は保存されません。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/privacy.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="プライバシーポリシー | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Colorのプライバシーポリシーです。個人識別情報は保存されません。">
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>プライバシーポリシー</h2>
        <p>Find Your Personal Colorは、ユーザーのプライバシーを尊重します。本サービスは、いかなる個人識別情報も保存しません。パーソナライズされた広告を提供するために、Cookieを使用する場合があるGoogle AdSenseを利用しています。</p>
        <a href="/ja/" class="btn">ホームに戻る</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/terms.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>利用規約 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Colorの利用規約です。診断結果はすべて参考情報として提供されます。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/terms.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/terms.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/terms.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/terms.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/terms.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/terms.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/terms.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="利用規約 | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Colorの利用規約です。診断結果はすべて参考情報として提供されます。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/terms.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="利用規約 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Colorの利用規約です。診断結果はすべて参考情報として提供されます。">
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>利用規約</h2>
        <p>提供されるすべての結果は参考情報であり、専門的な助言に代わるものではありません。ユーザーは本サービスの利用中、他者の権利を尊重するものとします。</p>
        <a href="/ja/" class="btn">ホームに戻る</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/guide.css <<'EOF_GPC'
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

cat > ja/guide/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>パーソナルカラーガイド &amp; 記事一覧 | Find Your Personal Color</title>
    <meta name="description" content="パーソナルカラーの基礎から季節タイプ別の完全ガイド、メイクやスタイリングのコツまで。専門的なパーソナルカラー記事をお届けします。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:title" content="パーソナルカラーガイド &amp; 記事一覧">
    <meta property="og:description" content="パーソナルカラーの基礎から季節タイプ別の完全ガイド、メイクやスタイリングのコツまで。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / ガイド</div>
    <div class="wrap guide-hero">
        <h1 class="serif">パーソナルカラーガイド</h1>
        <p>基礎理論から季節タイプ別の完全ガイド、メイクやスタイリングのコツまで ― 専門的なパーソナルカラー記事をお届けします。</p>
    </div>
    <div class="wrap article-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>パーソナルカラーとは？初心者のための完全ガイド</h3>
                <p>パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。</p>
                <div class="meta">読了時間 6分</div>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">スプリングウォーム</span>
                <h3>スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
                <div class="meta">読了時間 7分</div>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>ウォームトーンとクールトーン、5つの見分け方</h3>
                <p>手首の血管からアクセサリーの反応まで、自宅ですぐに確認できるウォームトーン・クールトーンのセルフチェック方法5つを紹介します。</p>
                <div class="meta">読了時間 5分</div>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>AIパーソナルカラー診断はどれくらい正確？</h3>
                <p>AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。</p>
                <div class="meta">読了時間 6分</div>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？</h3>
                <p>プロのドレーピング診断とAI・オンライン診断の違い、それぞれのメリット・デメリット、状況に応じた選び方を比較しました。</p>
                <div class="meta">読了時間 6分</div>
            </a>
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">サマークール</span>
                <h3>サマークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>サマークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
                <div class="meta">読了時間 7分</div>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">オータムウォーム</span>
                <h3>オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>オータムウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
                <div class="meta">読了時間 7分</div>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">ウィンタークール</span>
                <h3>ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
                <div class="meta">読了時間 7分</div>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラーに合うリップカラーの選び方</h3>
                <p>季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。</p>
                <div class="meta">読了時間 5分</div>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラー別おすすめヘアカラー</h3>
                <p>季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。</p>
                <div class="meta">読了時間 5分</div>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>面接や結婚式など、大切な日の完璧なコーディネート</h3>
                <p>面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。</p>
                <div class="meta">読了時間 6分</div>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>正確な診断のための写真撮影のコツ</h3>
                <p>AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。</p>
                <div class="meta">読了時間 4分</div>
            </a>
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">カラートレンド</span>
                <h3>2026年のカラートレンドをパーソナルカラーに取り入れる方法</h3>
                <p>パンドンが発表した2026年の今年の色から、トレンドカラーを自分のパーソナルカラーに合わせて取り入れる実践的なコツまで紹介します。</p>
                <div class="meta">読了時間 6分</div>
            </a>
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">カラー心理学</span>
                <h3>色が自信と第一印象に与える心理的効果</h3>
                <p>色彩心理学の基本原理から、パーソナルカラーが自己肯定感や第一印象にどのような影響を与えるかを見ていきます。</p>
                <div class="meta">読了時間 5分</div>
            </a>
    </div>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/what-is-personal-color.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>パーソナルカラーとは？初心者のための完全ガイド | Find Your Personal Color</title>
    <meta name="description" content="パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/what-is-personal-color.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="パーソナルカラーとは？初心者のための完全ガイド">
    <meta property="og:description" content="パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/what-is-personal-color.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "パーソナルカラーとは？初心者のための完全ガイド",
        "description": "パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/what-is-personal-color.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / パーソナルカラーとは？初心者のための完全ガイド</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基礎ガイド</span>
        <h1 class="serif">パーソナルカラーとは？初心者のための完全ガイド</h1>
        <div class="article-meta">読了時間 6分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">「パーソナルカラー」という言葉はよく耳にしても、正確に何を意味するのか分かりにくいという方も多いのではないでしょうか。簡単に言うと、パーソナルカラーとは生まれ持った肌・瞳・髪の色と最も調和する色の集まりのことです。</p>
        <p>同じ赤いリップでも、ある人には華やかで血色よく見える一方、別の人には顔がくすんで疲れて見えてしまうことがあります。この違いを生むのが、その人の肌のアンダートーンと明度・彩度の組み合わせであり、パーソナルカラー診断はこの組み合わせを体系的に分析するプロセスです。</p>
        <h2>パーソナルカラーの基本原理：アンダートーンが鍵</h2>
        <p>肌色は、目に見える表面の色と、その奥から透けて見えるアンダートーンの2層に分かれます。アンダートーンは大きく分けて、黄みや金色みのあるウォームトーンと、赤みや青みのあるクールトーンに分類されます。</p>
        <p>ウォームトーンの人がクールトーンの色（青みの強いラベンダーやアイシーなシルバーグレーなど）を身につけると、肌が青白く不健康に見えることがあります。逆にクールトーンの人がウォームトーンの色（オレンジみの強いコーラルや黄金色のキャメルなど）を身につけると、顔が赤らんで見えたり、むくんで見えたりすることがあります。これがパーソナルカラーが実際に印象へ影響を与える理由です。</p>
        <h2>4シーズン分類はどのように決まる？</h2>
        <p>パーソナルカラーは一般的に、スプリング・サマー・オータム・ウィンターの4つの季節タイプに分類されます。この分類は単純にウォーム・クールの2つに分けるだけでなく、色の明度（明るさ）と彩度（鮮やかさ）も併せて考慮します。</p>
        <ul>
            <li><strong>スプリングウォーム</strong>：明るく華やかなウォームトーン。生き生きとした鮮やかな色がよく似合う</li>
            <li><strong>オータムウォーム</strong>：深く落ち着いたウォームトーン。深みのある豊かな色がよく似合う</li>
            <li><strong>サマークール</strong>：明るく柔らかなクールトーン。パステル調の落ち着いた色がよく似合う</li>
            <li><strong>ウィンタークール</strong>：深く鮮やかなクールトーン。コントラストの強い鮮明な色がよく似合う</li>
        </ul>
        <p>つまり、同じウォームトーンでもスプリングとオータムでは明るさと彩度に明確な違いがあり、この細やかな区分によってより精密な色の提案が可能になります。</p>
        <h2>なぜ正確な診断が大切なのか</h2>
        <p>パーソナルカラーを知ることは、単なる娯楽以上の実用的なメリットがあります。まず、服やコスメを購入する際の失敗が大きく減ります。次に、自分に合った色を使うことで肌がより明るく、顔立ちがより整って見える効果があります。さらに、自分に合うカラーパレットが明確になることで、買い物やスタイリングにかける時間や悩みが減ります。</p>
        <h2>診断方法3つの比較</h2>
        <p>パーソナルカラーを確認する方法は、大きく分けて3つあります。</p>
        <ul>
            <li><strong>セルフチェック</strong>：手首の血管の色や日焼けの反応などから大まかにウォーム・クールを判断。手軽だが精度は低い</li>
            <li><strong>プロのドレーピング診断</strong>：専門家がさまざまな色の布を顔に当てて判断。精度は高いが時間と費用がかかる</li>
            <li><strong>AI・オンライン診断</strong>：写真やリアルタイムのカメラで肌のピクセルデータを分析。無料ですぐに結果が得られ、最初の一歩として最適</li>
        </ul>
        <p>完璧な精度を求めるならプロのドレーピングが最も正確ですが、ほとんどの人にとってはAI診断だけでも十分に有用な方向性を得ることができます。特に明るい場所で正面から撮影すると、信頼度が高まります。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>ウォームトーンとクールトーン、5つの見分け方</h3>
                <p>手首の血管からアクセサリーの反応まで、自宅ですぐに確認できるウォームトーン・クールトーンのセルフチェック方法5つを紹介します。</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>AIパーソナルカラー診断はどれくらい正確？</h3>
                <p>AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。</p>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？</h3>
                <p>プロのドレーピング診断とAI・オンライン診断の違い、それぞれのメリット・デメリット、状況に応じた選び方を比較しました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/spring-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング | Find Your Personal Color</title>
    <meta name="description" content="スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/spring-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング">
    <meta property="og:description" content="スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/spring-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング",
        "description": "スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/spring-warm-guide.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</div>

    <div class="wrap article-header">
        <span class="tag tag-spring">スプリングウォーム</span>
        <h1 class="serif">スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</h1>
        <div class="article-meta">読了時間 7分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">スプリングウォームは、明るく華やかで生き生きとした印象が特徴のタイプです。黄みのある温かい肌のアンダートーンに、澄んだ鮮やかな色が加わることで、特有の生命力が最大限に引き出されます。</p>
        <h2>スプリングウォームの特徴</h2>
        <p>スプリングウォームは、アイボリーや明るい黄金色の肌のアンダートーンを持つことが多く、日焼けしやすい傾向があります。瞳は明るいブラウンやヘーゼル系が多く、髪は明るいブラウンから黄金みのあるブラウン系がよく似合います。全体的に華やかで若々しい印象を与えるのが特徴です。</p>
        <h2>スプリングウォームに似合うカラーパレット</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#FF8C69"><span style="color:#4A2712">コーラル</span></div>
            <div class="sw" style="background:#FFD59A"><span style="color:#5C3D14">ピーチ</span></div>
            <div class="sw" style="background:#F6C9AD"><span style="color:#5C3D14">ハニーキャメル</span></div>
            <div class="sw" style="background:#8FBF6A"><span style="color:#1F3810">ライトグリーン</span></div>
        </div>
        <p>コーラル、ピーチ、ハニーキャメルのような明るく温かみのある色が、スプリングウォームの顔を最も華やかに見せてくれます。パステルよりも少し彩度のある明るい色を選ぶのがポイントです。</p>
        <h2>メイクカラーガイド</h2>
        <ul>
            <li><strong>リップ</strong>：コーラル、サーモンピンク、オレンジみのあるレッドがよく似合う</li>
            <li><strong>チーク</strong>：ピーチ、コーラル系で自然な血色感を演出</li>
            <li><strong>アイシャドウ</strong>：ゴールド、カーキ、ブロンズなどウォームトーンベースのシャドウがおすすめ</li>
            <li><strong>避けたい色</strong>：青みの強いバーガンディ、冷たいグレー系のリップ</li>
        </ul>
        <h2>服とアクセサリーのスタイリング</h2>
        <p>アクセサリーはシルバーよりゴールド系の方が肌をぐっと華やかに見せてくれます。服の色はアイボリー、キャメル、コーラル、ライトカーキのような温かく明るいトーンを基本にすると失敗が少なくなります。逆に、真っ黒や冷たいネイビーのような深く冷たい色は顔を相対的に暗く重く見せることがあるため、差し色として少量使うのがおすすめです。</p>
        <blockquote>ポイントは「明るく温かく」― スプリングウォームは彩度と明度がともに高い色に出会ったとき、最も輝きます。</blockquote>
        <h2>スプリングウォームが避けたい色</h2>
        <p>フューシャピンクやアイシーラベンダーのような青みの強い色、そして彩度の低い無彩色系（冷たいグレー、真っ黒）は、スプリングウォームの華やかなイメージを沈ませる傾向があります。どうしても使いたい場合は、靴やバッグなど顔から離れたアイテムに差し色として取り入れるのが安全です。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">サマークール</span>
                <h3>サマークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>サマークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">オータムウォーム</span>
                <h3>オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>オータムウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラーに合うリップカラーの選び方</h3>
                <p>季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/warm-vs-cool-tone.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ウォームトーンとクールトーン、5つの見分け方 | Find Your Personal Color</title>
    <meta name="description" content="手首の血管からアクセサリーの反応まで、自宅ですぐに確認できるウォームトーン・クールトーンのセルフチェック方法5つを紹介します。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/warm-vs-cool-tone.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="ウォームトーンとクールトーン、5つの見分け方">
    <meta property="og:description" content="手首の血管からアクセサリーの反応まで、自宅ですぐに確認できるウォームトーン・クールトーンのセルフチェック方法5つを紹介します。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/warm-vs-cool-tone.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "ウォームトーンとクールトーン、5つの見分け方",
        "description": "手首の血管からアクセサリーの反応まで、自宅ですぐに確認できるウォームトーン・クールトーンのセルフチェック方法5つを紹介します。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/warm-vs-cool-tone.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / ウォームトーンとクールトーン、5つの見分け方</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基礎ガイド</span>
        <h1 class="serif">ウォームトーンとクールトーン、5つの見分け方</h1>
        <div class="article-meta">読了時間 5分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">ウォームトーンかクールトーンか迷ったとき、専門診断を受ける前に自宅で簡単に確認できる方法があります。完璧に正確ではありませんが、大まかな方向性をつかむには十分役立ちます。</p>
        <h2>1. 手首の血管の色で確認する</h2>
        <p>明るい自然光の下で、手首の内側の血管の色を確認してみましょう。血管が緑がかって見えるならウォームトーン、青や紫がかって見えるならクールトーンの可能性が高いです。</p>
        <h2>2. ゴールド vs シルバーアクセサリーの反応</h2>
        <p>ゴールドのアクセサリーをつけたときに肌が明るく健康的に見えるならウォームトーン、シルバーのアクセサリーをつけたときに肌がより澄んで整って見えるならクールトーンに近いといえます。</p>
        <h2>3. 紫外線に当たったときの肌の反応</h2>
        <p>長時間日光に当たったとき、赤くなるよりも自然に日焼けして色黒になる方はウォームトーン、すぐに赤くなったり日焼けで肌が痛くなりやすい方はクールトーンの可能性が高いです。</p>
        <h2>4. 素の唇・頬の色</h2>
        <p>メイクをしていない状態の唇や頬の色がコーラルやオレンジみに近ければウォームトーン、ピンクやローズみに近ければクールトーンであることが多いです。</p>
        <h2>5. 白い紙との対比テスト</h2>
        <p>白い紙を顔の横に当てて鏡を見てみましょう。肌が紙より黄色や金色っぽく見えるならウォームトーン、ピンクや青みがかって見えるならクールトーンに近いです。</p>
        <blockquote>5つのうち3つ以上が同じ方向に出た場合、そちらのトーンである可能性が高いです。ただし、照明やメイク、季節によって結果が変わることもあるので、あくまで参考程度に活用してください。</blockquote>
        <p>セルフチェックはあくまで大まかなヒントに過ぎません。より正確で、4シーズンまで細かく分かる結果を求めるなら、AI分析も併せて活用することをおすすめします。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>パーソナルカラーとは？初心者のための完全ガイド</h3>
                <p>パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>AIパーソナルカラー診断はどれくらい正確？</h3>
                <p>AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>正確な診断のための写真撮影のコツ</h3>
                <p>AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/how-accurate-is-ai-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AIパーソナルカラー診断はどれくらい正確？ | Find Your Personal Color</title>
    <meta name="description" content="AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/how-accurate-is-ai-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="AIパーソナルカラー診断はどれくらい正確？">
    <meta property="og:description" content="AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/how-accurate-is-ai-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "AIパーソナルカラー診断はどれくらい正確？",
        "description": "AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/how-accurate-is-ai-diagnosis.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / AIパーソナルカラー診断はどれくらい正確？</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基礎ガイド</span>
        <h1 class="serif">AIパーソナルカラー診断はどれくらい正確？</h1>
        <div class="article-meta">読了時間 6分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">「AIが写真1枚でパーソナルカラーを診断する」と聞くと、驚きつつも本当に信頼できるのか気になるものです。AI分析の仕組みと限界を正しく理解すれば、はるかに効果的に活用できます。</p>
        <h2>AI分析はどのように機能するのか</h2>
        <p>一般的なAIパーソナルカラー分析は、顔の中央部分のピクセルデータをサンプリングし、RGB（赤・緑・青）の平均値を計算します。この平均値から赤み・黄み・青みの割合を分析し、ウォームトーンかクールトーンか、そして明度が明るいか暗いかを判断して、4シーズンのどれに近いかを算出する仕組みです。</p>
        <h2>AI診断の強み</h2>
        <ul>
            <li>無料ですぐに結果が得られる</li>
            <li>人の主観が入らないため、一貫した基準で分析される</li>
            <li>いつでもどこでも繰り返しテストできる</li>
        </ul>
        <h2>AI診断の限界</h2>
        <ul>
            <li>照明環境によってピクセルの色の値が大きく変わる可能性がある</li>
            <li>カメラや画面ごとに色の補正方法が異なり、機器間で誤差が生じることがある</li>
            <li>メイクやフィルター、補正アプリを使うと、実際の肌色と異なる分析結果になる可能性がある</li>
            <li>プロのドレーピングのように、実際の布を当てて微妙な違いを比較することはまだ難しい</li>
        </ul>
        <h2>精度を高める撮影のコツ</h2>
        <ul>
            <li>自然光が入る窓際で、正午前後の時間帯に撮影する</li>
            <li>色のついた照明（黄色い白熱灯、色付き照明）は避ける</li>
            <li>メイクを最小限にして正面を見る</li>
            <li>フィルターや補正アプリを使わずに撮影する</li>
        </ul>
        <p>結論として、AI診断は完璧な絶対的な答えというよりも、素早く手軽に方向性をつかむための優れた出発点です。撮影のコツを守れば信頼度は大きく高まり、さらに精密な確認が必要な場合はプロのドレーピングと併用することをおすすめします。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？</h3>
                <p>プロのドレーピング診断とAI・オンライン診断の違い、それぞれのメリット・デメリット、状況に応じた選び方を比較しました。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>正確な診断のための写真撮影のコツ</h3>
                <p>AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>パーソナルカラーとは？初心者のための完全ガイド</h3>
                <p>パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/draping-vs-online-quiz.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？ | Find Your Personal Color</title>
    <meta name="description" content="プロのドレーピング診断とAI・オンライン診断の違い、それぞれのメリット・デメリット、状況に応じた選び方を比較しました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/draping-vs-online-quiz.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？">
    <meta property="og:description" content="プロのドレーピング診断とAI・オンライン診断の違い、それぞれのメリット・デメリット、状況に応じた選び方を比較しました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/draping-vs-online-quiz.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？",
        "description": "プロのドレーピング診断とAI・オンライン診断の違い、それぞれのメリット・デメリット、状況に応じた選び方を比較しました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/draping-vs-online-quiz.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基礎ガイド</span>
        <h1 class="serif">セルフドレーピング診断 vs AIオンライン診断、どちらを選ぶべき？</h1>
        <div class="article-meta">読了時間 6分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">パーソナルカラーの診断方法は大きく、プロのドレーピング診断とAI・オンライン診断の2つに分かれます。この2つは、アプローチから結果の精密さまで、さまざまな点で異なります。</p>
        <h2>ドレーピング診断とは</h2>
        <p>ドレーピングとは、専門家がさまざまな色の布を顔の下に直接当てながら、肌のトーン・目の輝き・血色がどう変化するかを目で見て比較する、伝統的な診断方法です。通常100枚以上のカラー布を使って細かく比較します。</p>
        <h2>ドレーピングのメリットと限界</h2>
        <p>実際の色を直接顔に当てるため、画面や照明による歪みがなく、精密な比較ができるのが最大のメリットです。ただし予約や来店が必要で費用も発生し、診断結果は担当する専門家の熟練度や主観的な解釈によって多少変わることがあるという限界もあります。</p>
        <h2>AI・オンライン診断のメリットと限界</h2>
        <p>AI診断は無料で、いつでも繰り返し利用できるのが強みです。好きなときに何度でも再挑戦でき、結果は一貫したアルゴリズムの基準で算出されます。ただし照明やカメラの環境によって誤差が生じることがあり、ドレーピングほどの精密さは期待しにくい面があります。</p>
        <h2>どちらの方法を選ぶべきか</h2>
        <p>初めてパーソナルカラーに触れるなら、まずAIオンライン診断でおおよその方向性（ウォームかクールか、どの季節に近いか）を把握することをおすすめします。その後、結果が曖昧だったり、より精密な確認が必要な場合は、プロのドレーピング診断を受けて細かいトーンを確定させるのが効率的な流れです。</p>
        <blockquote>AIで方向性をつかみ、必要であればドレーピングで精密に ― 2つの方法は競合するものではなく、補完し合う関係です。</blockquote>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>AIパーソナルカラー診断はどれくらい正確？</h3>
                <p>AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>パーソナルカラーとは？初心者のための完全ガイド</h3>
                <p>パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>正確な診断のための写真撮影のコツ</h3>
                <p>AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/summer-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>サマークール完全ガイド ― 似合う色・メイク・スタイリング | Find Your Personal Color</title>
    <meta name="description" content="サマークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/summer-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="サマークール完全ガイド ― 似合う色・メイク・スタイリング">
    <meta property="og:description" content="サマークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/summer-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "サマークール完全ガイド ― 似合う色・メイク・スタイリング",
        "description": "サマークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/summer-cool-guide.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / サマークール完全ガイド ― 似合う色・メイク・スタイリング</div>

    <div class="wrap article-header">
        <span class="tag tag-summer">サマークール</span>
        <h1 class="serif">サマークール完全ガイド ― 似合う色・メイク・スタイリング</h1>
        <div class="article-meta">読了時間 7分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">サマークールは、澄んで柔らかく、上品な印象が特徴のタイプです。青みのある冷たい肌のアンダートーンに、パステル調の柔らかな色が加わることで、特有の清涼感のある雰囲気が引き立ちます。</p>
        <h2>サマークールの特徴</h2>
        <p>サマークールは、ピンクみや青みのある明るい肌のアンダートーンを持つことが多く、日焼けすると赤くなりやすい傾向があります。瞳は柔らかいブラウンやグレーがかったブラウン系が多く、髪はアッシュブラウンや冷たいトーンのダークブラウンがよく似合います。全体的に清楚で上品な印象を与えるのが特徴です。</p>
        <h2>サマークールに似合うカラーパレット</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B9A6D9"><span style="color:#2E1F42">ラベンダー</span></div>
            <div class="sw" style="background:#8AA9D6"><span style="color:#1B2A42">スカイブルー</span></div>
            <div class="sw" style="background:#E8A0BF"><span style="color:#4A1B2E">ローズピンク</span></div>
            <div class="sw" style="background:#C7CDD6"><span style="color:#2B2F38">ソフトグレー</span></div>
        </div>
        <p>ラベンダー、スカイブルー、ローズピンクのような柔らかく落ち着いたパステルカラーが、サマークールの顔を最も澄んで見せてくれます。彩度が低く明るい色を選ぶのがポイントです。</p>
        <h2>メイクカラーガイド</h2>
        <ul>
            <li><strong>リップ</strong>：ローズピンク、モーブ、ラズベリー系がよく似合う</li>
            <li><strong>チーク</strong>：ソフトピンクで自然な血色感を演出</li>
            <li><strong>アイシャドウ</strong>：ラベンダー、グレーがかったブラウンなどクールトーンベースのシャドウがおすすめ</li>
            <li><strong>避けたい色</strong>：オレンジみの強いコーラル、黄みの強いゴールドハイライター</li>
        </ul>
        <h2>服とアクセサリーのスタイリング</h2>
        <p>アクセサリーはゴールドよりシルバーやホワイトゴールド系の方が肌をぐっと澄んで見せてくれます。服の色はラベンダー、パウダーブルー、ローズグレーのような柔らかく冷たいトーンを基本にすると失敗が少なくなります。逆に、マスタードイエローや濃いブラウンのような温かく濁った色は顔を相対的にくすんで見せることがあるため、少量だけ取り入れるのがおすすめです。</p>
        <h2>サマークールが避けたい色</h2>
        <p>オレンジみの強いオレンジやマスタードイエロー、濃いカーキなどウォームトーンベースの色は、サマークール特有の澄んだイメージを沈ませる傾向があります。アクセサリーや靴など顔から離れた部分に差し色として取り入れるのが安全です。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">スプリングウォーム</span>
                <h3>スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">ウィンタークール</span>
                <h3>ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラー別おすすめヘアカラー</h3>
                <p>季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/autumn-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング | Find Your Personal Color</title>
    <meta name="description" content="オータムウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/autumn-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング">
    <meta property="og:description" content="オータムウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/autumn-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング",
        "description": "オータムウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/autumn-warm-guide.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング</div>

    <div class="wrap article-header">
        <span class="tag tag-autumn">オータムウォーム</span>
        <h1 class="serif">オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング</h1>
        <div class="article-meta">読了時間 7分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">オータムウォームは、深く豊かで上品な印象が特徴のタイプです。濃い金色みのある温かい肌のアンダートーンに、落ち着いた深みのある色が加わることで、特有の成熟した魅力が最大限に引き出されます。</p>
        <h2>オータムウォームの特徴</h2>
        <p>オータムウォームは、金色みやオリーブみのある濃い肌のアンダートーンを持つことが多く、日焼けしやすく焼けが定着しやすい傾向があります。瞳は濃いブラウンやダークヘーゼル系が多く、髪はダークブラウンや濃いキャメル系がよく似合います。全体的に落ち着いて上品な印象を与えるのが特徴です。</p>
        <h2>オータムウォームに似合うカラーパレット</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B85C38"><span style="color:#2E1608">テラコッタ</span></div>
            <div class="sw" style="background:#8C7A3D"><span style="color:#2A2410">カーキ</span></div>
            <div class="sw" style="background:#7A3B1C"><span style="color:#F6D9C6">バーガンディブラウン</span></div>
            <div class="sw" style="background:#C9A24B"><span style="color:#2A2008">マスタード</span></div>
        </div>
        <p>テラコッタ、カーキ、マスタードのような深く土っぽい色が、オータムウォームの顔を最も深みを持って見せてくれます。彩度が低めで暗めの温かい色を選ぶのがポイントです。</p>
        <h2>メイクカラーガイド</h2>
        <ul>
            <li><strong>リップ</strong>：ブリックレッド、テラコッタ、ブラウン系がよく似合う</li>
            <li><strong>チーク</strong>：ブロンズ、テラコッタで自然な陰影を演出</li>
            <li><strong>アイシャドウ</strong>：カーキ、ブラウン、ゴールドブロンズなどウォームトーンベースのシャドウがおすすめ</li>
            <li><strong>避けたい色</strong>：ピンクみの強いローズ、アイシーなラベンダー</li>
        </ul>
        <h2>服とアクセサリーのスタイリング</h2>
        <p>アクセサリーはゴールドやブロンズ、アンティークゴールド系が肌をぐっと豊かに見せてくれます。服の色はカーキ、キャメル、バーガンディ、マスタードのような深く温かいトーンを基本にすると失敗が少なくなります。逆に、真っ白やアイシーなパステルは顔を相対的に単調に見せることがあるため、差し色として取り入れるのがおすすめです。</p>
        <h2>オータムウォームが避けたい色</h2>
        <p>青みの強いラベンダーやアイシーピンク、真っ黒などの冷たく明るい色は、オータムウォーム特有の深みを薄める傾向があります。ブラックの代わりにダークブラウンを、アイシーな色の代わりにウォームトーンベースのニュートラルを選ぶのが安全です。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">スプリングウォーム</span>
                <h3>スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">ウィンタークール</span>
                <h3>ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラーに合うリップカラーの選び方</h3>
                <p>季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/winter-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング | Find Your Personal Color</title>
    <meta name="description" content="ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/winter-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング">
    <meta property="og:description" content="ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/winter-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング",
        "description": "ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/winter-cool-guide.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</div>

    <div class="wrap article-header">
        <span class="tag tag-winter">ウィンタークール</span>
        <h1 class="serif">ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</h1>
        <div class="article-meta">読了時間 7分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">ウィンタークールは、モダンで鮮明、カリスマ性のある印象が特徴のタイプです。青みやピンクみのある冷たい肌のアンダートーンに、コントラストの強い鮮やかな色が加わることで、特有の強い魅力が引き立ちます。</p>
        <h2>ウィンタークールの特徴</h2>
        <p>ウィンタークールは、青みやピンクみのある透明感のある白い肌のアンダートーンを持つことが多く、赤くなりやすい傾向があります。瞳は濃い黒褐色や真っ黒に近い色が多く、髪は真っ黒やアッシュトーンのダークブラウンがよく似合います。全体的に鮮明でカリスマ性のある印象を与えるのが特徴です。</p>
        <h2>ウィンタークールに似合うカラーパレット</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#12182A"><span style="color:#FFFFFF">ピュアブラック</span></div>
            <div class="sw" style="background:#FFFFFF"><span style="color:#12182A">ピュアホワイト</span></div>
            <div class="sw" style="background:#1A1A40"><span style="color:#FFFFFF">ネイビー</span></div>
            <div class="sw" style="background:#7A0BC0"><span style="color:#FFFFFF">鮮やかなフューシャ</span></div>
        </div>
        <p>ピュアブラック、ホワイト、ネイビー、鮮やかなエメラルドやフューシャピンクのようなコントラストの強い色が、ウィンタークールの顔を最もくっきりと見せてくれます。彩度が高く明度差のはっきりした色を選ぶのがポイントです。</p>
        <h2>メイクカラーガイド</h2>
        <ul>
            <li><strong>リップ</strong>：ブルーレッド、ワイン、鮮やかなフューシャ系がよく似合う</li>
            <li><strong>チーク</strong>：クールトーンピンクではっきりした血色感を演出</li>
            <li><strong>アイシャドウ</strong>：ブラック、グレー、シルバーなど高彩度のクールトーンシャドウがおすすめ</li>
            <li><strong>避けたい色</strong>：オレンジみのコーラル、濁ったベージュ</li>
        </ul>
        <h2>服とアクセサリーのスタイリング</h2>
        <p>アクセサリーはシルバーやプラチナ、ホワイトゴールド系が肌を最も洗練させて見せてくれます。服の色はブラック、ホワイト、ネイビーを基本にし、エメラルドやフューシャのような原色の差し色を加えると、ウィンタークール特有のカリスマ性が引き立ちます。逆に、ベージュやキャメルのような濁った温かいニュートラルは顔をぼやけさせることがあるため注意が必要です。</p>
        <h2>ウィンタークールが避けたい色</h2>
        <p>マスタード、カーキ、ブラウン系の濁ったウォームトーンの色は、ウィンタークールの鮮明なイメージを沈ませる傾向があります。ウォームトーンのニュートラルの代わりにグレーやブラック系のニュートラルを選ぶ方がはるかによく似合います。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">サマークール</span>
                <h3>サマークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>サマークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">オータムウォーム</span>
                <h3>オータムウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>オータムウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラー別おすすめヘアカラー</h3>
                <p>季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/lipstick-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>パーソナルカラーに合うリップカラーの選び方 | Find Your Personal Color</title>
    <meta name="description" content="季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/lipstick-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="パーソナルカラーに合うリップカラーの選び方">
    <meta property="og:description" content="季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/lipstick-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "パーソナルカラーに合うリップカラーの選び方",
        "description": "季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/lipstick-color-guide.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / パーソナルカラーに合うリップカラーの選び方</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">スタイリング</span>
        <h1 class="serif">パーソナルカラーに合うリップカラーの選び方</h1>
        <div class="article-meta">読了時間 5分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">顔の中で最も視線が集まりやすいパーツの一つが唇です。それだけに、リップカラーひとつを変えるだけで全体の印象が大きく変わることがあります。</p>
        <h2>なぜリップカラーが印象を大きく左右するのか</h2>
        <p>唇は肌の面積に対して色が濃く、視線が集中しやすい部位のため、アンダートーンに合わない色を使うと顔全体が不自然に見えやすくなります。逆に自分に合う色を見つければ、それほどメイクを重ねなくても生き生きとした印象を与えることができます。</p>
        <h2>季節タイプ別おすすめリップカラー</h2>
        <ul>
            <li><strong>スプリングウォーム</strong>：コーラル、サーモンピンク、オレンジみのあるレッド</li>
            <li><strong>サマークール</strong>：ローズピンク、モーブ、ラズベリー</li>
            <li><strong>オータムウォーム</strong>：ブリックレッド、テラコッタ、ブラウン系</li>
            <li><strong>ウィンタークール</strong>：ブルーレッド、ワイン、鮮やかなフューシャ</li>
        </ul>
        <h2>質感（マット・グロッシー）も考慮すべき？</h2>
        <p>色味と同じくらい大切なのが質感です。マットなテクスチャーは色がより鮮明で濃く表現されるため、ウィンタークールやオータムウォームのようなくっきりした印象によく合います。一方、グロッシーで潤いのあるテクスチャーは華やかで血色よい印象を与え、スプリングウォームやサマークールによく合う傾向があります。</p>
        <h2>店頭で失敗しないためのコツ</h2>
        <p>店頭の照明は実際と違って見えることがあるため、できれば自然光が入る場所で、手の甲ではなく唇に直接塗って確認しましょう。また、同じカラー系統でもブランドによって微妙に色味が異なるので、レビュー写真よりも実際の発色を確認するのが最も確実です。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラー別おすすめヘアカラー</h3>
                <p>季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>面接や結婚式など、大切な日の完璧なコーディネート</h3>
                <p>面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">スプリングウォーム</span>
                <h3>スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/hair-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>パーソナルカラー別おすすめヘアカラー | Find Your Personal Color</title>
    <meta name="description" content="季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/hair-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="パーソナルカラー別おすすめヘアカラー">
    <meta property="og:description" content="季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/hair-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "パーソナルカラー別おすすめヘアカラー",
        "description": "季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/hair-color-guide.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / パーソナルカラー別おすすめヘアカラー</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">スタイリング</span>
        <h1 class="serif">パーソナルカラー別おすすめヘアカラー</h1>
        <div class="article-meta">読了時間 5分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">髪色は顔全体を包む面積が広いため、パーソナルカラーと合わないと顔色全体に影響を与えることがあります。逆に、よく合う髪色は顔を明るく生き生きと見せてくれます。</p>
        <h2>髪色が顔に与える影響</h2>
        <p>髪は顔の周りを包む面積の大きい色のため、反射する光が肌のトーンに直接影響を与えます。アンダートーンと反対のヘアカラーを選ぶと、肌がくすんだり青白く見えたりすることがあります。</p>
        <h2>季節タイプ別おすすめヘアカラー</h2>
        <ul>
            <li><strong>スプリングウォーム</strong>：明るいブラウン、黄金みのあるブラウン、ハニーブロンド</li>
            <li><strong>サマークール</strong>：アッシュブラウン、グレーがかったブラウン</li>
            <li><strong>オータムウォーム</strong>：ダークブラウン、キャメル、チョコレートブラウン</li>
            <li><strong>ウィンタークール</strong>：濃いブラック、アッシュダークブラウン</li>
        </ul>
        <h2>カラーリング前に確認すべきこと</h2>
        <p>カラーリングは一度すると元に戻すのが難しいため、事前にカラーサンプルを実際に顔の横に当てて、肌との相性を確認するのがおすすめです。また、明るい色ほど根元のリタッチやダメージケアなど、より頻繁なお手入れが必要になる点も考慮しておきましょう。</p>
        <h2>ブリッジ・ポイントカラーの活用法</h2>
        <p>全体カラーに抵抗がある場合は、顔まわりだけに明るいブリッジカラーを入れるのもおすすめの方法です。こうすることで顔のトーンへの効果は保ちつつ、はるかに少ないリスクで雰囲気を変えることができます。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラーに合うリップカラーの選び方</h3>
                <p>季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>面接や結婚式など、大切な日の完璧なコーディネート</h3>
                <p>面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">ウィンタークール</span>
                <h3>ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/interview-wedding-styling.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>面接や結婚式など、大切な日の完璧なコーディネート | Find Your Personal Color</title>
    <meta name="description" content="面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/interview-wedding-styling.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="面接や結婚式など、大切な日の完璧なコーディネート">
    <meta property="og:description" content="面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/interview-wedding-styling.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "面接や結婚式など、大切な日の完璧なコーディネート",
        "description": "面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/interview-wedding-styling.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / 面接や結婚式など、大切な日の完璧なコーディネート</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">スタイリング</span>
        <h1 class="serif">面接や結婚式など、大切な日の完璧なコーディネート</h1>
        <div class="article-meta">読了時間 6分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">大切な日ほど、色選びの影響力は大きくなります。いつもより少しだけパーソナルカラーを意識するだけで、自然と好印象を残すことができます。</p>
        <h2>なぜ大切な日ほど色選びが重要なのか</h2>
        <p>短い時間で良い印象を残さなければならない場面では、服やメイクの色が表情や話し方と同じくらい大きな役割を果たします。顔を明るく生き生きと見せる色を身につけると、実際以上に自信があるように見える効果があります。</p>
        <h2>面接コーデのカラーガイド</h2>
        <p>面接では信頼感を与えることが重要です。ウォームトーン（スプリング・オータム）ならアイボリーやキャメルをベースに、ウォームトーンのインナーで差し色を。クールトーン（サマー・ウィンター）ならホワイトやネイビーをベースに、クールトーンのインナーを合わせると、きちんとした印象を保ちながらも顔色が華やかに見える効果があります。</p>
        <h2>結婚式ゲストコーデ・お祝いの場のカラーガイド</h2>
        <p>ゲストコーデは、目立ちすぎず華やかに見えることがポイントです。スプリングウォームはコーラルやライトキャメル、サマークールはラベンダーやダスティピンク、オータムウォームはテラコッタやカーキ、ウィンタークールはネイビーやバーガンディ系のワンピースがよく似合います。</p>
        <h2>写真映えするカラーの組み合わせ</h2>
        <p>写真では実物より色がやや落ち着いて表現される傾向があるため、普段より少し彩度のある色を選ぶのがおすすめです。また、顔に最も近いトップスの色が結果に最も大きな影響を与えるため、ボトムスやアクセサリーよりもトップスの色選びに気を配ることをおすすめします。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラーに合うリップカラーの選び方</h3>
                <p>季節タイプ別の似合うリップカラーから、店頭で失敗しないための実践的なテスト方法まで紹介します。</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>パーソナルカラー別おすすめヘアカラー</h3>
                <p>季節タイプ別に似合うヘアカラーと、カラーリング前に確認しておきたいポイントを紹介します。</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>正確な診断のための写真撮影のコツ</h3>
                <p>AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/photo-tips-for-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>正確な診断のための写真撮影のコツ | Find Your Personal Color</title>
    <meta name="description" content="AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/photo-tips-for-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="正確な診断のための写真撮影のコツ">
    <meta property="og:description" content="AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/photo-tips-for-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "正確な診断のための写真撮影のコツ",
        "description": "AI診断の精度を左右する照明・角度・撮影環境を、実践チェックリストとしてまとめました。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/photo-tips-for-diagnosis.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / 正確な診断のための写真撮影のコツ</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">基礎ガイド</span>
        <h1 class="serif">正確な診断のための写真撮影のコツ</h1>
        <div class="article-meta">読了時間 4分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">AIパーソナルカラー診断は写真1枚のピクセルデータを分析する仕組みのため、撮影環境が結果の精度を大きく左右します。いくつかのポイントを押さえるだけで、はるかに信頼度の高い結果が得られます。</p>
        <h2>照明が最も重要な理由</h2>
        <p>人工照明、特に黄色みのある白熱灯や色付き照明の下では、実際の肌色と異なって撮影されることがあります。窓から差し込む自然光、その中でも日差しが強すぎない午前や午後の時間帯が最も安定しています。</p>
        <h2>撮影の角度と距離</h2>
        <p>顔全体がフレームの中央に来るよう、正面から撮影しましょう。近すぎるとレンズの歪みが生じ、遠すぎると顔部分のピクセルデータが不足することがあります。腕の長さ程度の距離がちょうど良いでしょう。</p>
        <h2>避けたい状況</h2>
        <ul>
            <li>美肌フィルターや補正アプリの使用</li>
            <li>濃いファンデーションやトーンアップクリームの使用</li>
            <li>逆光の状態での撮影</li>
            <li>複数の色照明が混ざった室内</li>
        </ul>
        <h2>撮影チェックリスト</h2>
        <ul>
            <li>自然光が入る窓際にいますか？</li>
            <li>正面を見ていますか？</li>
            <li>フィルターや補正が適用されていませんか？</li>
            <li>メイクを最小限にしていますか？</li>
        </ul>
        <p>このチェックリストを守るだけでも、AI診断の信頼度は目に見えて上がります。結果が曖昧に感じる場合は、別の時間帯や場所でもう一度撮影して比較してみるのも良い方法です。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>AIパーソナルカラー診断はどれくらい正確？</h3>
                <p>AIパーソナルカラー分析が実際にどのように機能するのか、その強みと限界、そして精度を高める撮影のコツをまとめました。</p>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>ウォームトーンとクールトーン、5つの見分け方</h3>
                <p>手首の血管からアクセサリーの反応まで、自宅ですぐに確認できるウォームトーン・クールトーンのセルフチェック方法5つを紹介します。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>面接や結婚式など、大切な日の完璧なコーディネート</h3>
                <p>面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/color-trends-2026.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2026年のカラートレンドをパーソナルカラーに取り入れる方法 | Find Your Personal Color</title>
    <meta name="description" content="パンドンが発表した2026年の今年の色から、トレンドカラーを自分のパーソナルカラーに合わせて取り入れる実践的なコツまで紹介します。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/color-trends-2026.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="2026年のカラートレンドをパーソナルカラーに取り入れる方法">
    <meta property="og:description" content="パンドンが発表した2026年の今年の色から、トレンドカラーを自分のパーソナルカラーに合わせて取り入れる実践的なコツまで紹介します。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/color-trends-2026.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "2026年のカラートレンドをパーソナルカラーに取り入れる方法",
        "description": "パンドンが発表した2026年の今年の色から、トレンドカラーを自分のパーソナルカラーに合わせて取り入れる実践的なコツまで紹介します。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/color-trends-2026.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / 2026年のカラートレンドをパーソナルカラーに取り入れる方法</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">カラートレンド</span>
        <h1 class="serif">2026年のカラートレンドをパーソナルカラーに取り入れる方法</h1>
        <div class="article-meta">読了時間 6分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">毎年発表される「今年の色」は、ファッションやビューティーのトレンドに大きな影響を与えます。トレンドカラーだからといって闇雲に取り入れるよりも、自分のパーソナルカラーに合わせて消化する方がはるかに洗練された印象になります。</p>
        <h2>2026年を代表するカラー</h2>
        <p>パントン（Pantone）は2026年の今年の色として、柔らかく落ち着いたオフホワイトトーンの「クラウドダンサー（Cloud Dancer）」を選びました。一方、トレンド予測機関のWGSNとColoroは、ディープブルーグリーン系の「トランスフォーマティブティール（Transformative Teal）」を今年の色として発表しています。この他にも、フューシャ、ミント、アクア、アンバーヘイズ、セージグリーンなどが注目のカラーとして挙げられています。</p>
        <h2>トレンドカラー、自分のパーソナルカラーにはどう取り入れる？</h2>
        <p>同じトレンドカラーでも、トーンを少し調整するだけでどのパーソナルカラーにも取り入れることができます。例えばトランスフォーマティブティールなら、ウォームトーンの方はややグリーンみの強いバージョンを、クールトーンの方はブルーみの強いバージョンを選ぶと、はるかに自然に馴染みます。</p>
        <h2>季節タイプ別2026年トレンド活用法</h2>
        <ul>
            <li><strong>スプリングウォーム</strong>：アンバーヘイズや、ウォームトーンのフューシャを差し色に</li>
            <li><strong>サマークール</strong>：クラウドダンサー、アクア、柔らかなミントをベースに</li>
            <li><strong>オータムウォーム</strong>：セージグリーンや、ウォームトーンに近いティールをアウターに取り入れる</li>
            <li><strong>ウィンタークール</strong>：鮮やかなトランスフォーマティブティール、クールトーンのフューシャを大胆に</li>
        </ul>
        <p>トレンドカラーは毎年変わりますが、自分のパーソナルカラーの基本原則（ウォーム・クール、明度、彩度）は変わりません。トレンドをそのまま追いかけるのではなく、自分のトーンに合わせて「翻訳」して取り入れることが、最も長く楽しめるスタイリング戦略です。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">カラー心理学</span>
                <h3>色が自信と第一印象に与える心理的効果</h3>
                <p>色彩心理学の基本原理から、パーソナルカラーが自己肯定感や第一印象にどのような影響を与えるかを見ていきます。</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">スプリングウォーム</span>
                <h3>スプリングウォーム完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>スプリングウォームの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">ウィンタークール</span>
                <h3>ウィンタークール完全ガイド ― 似合う色・メイク・スタイリング</h3>
                <p>ウィンタークールの特徴から似合うカラーパレット、メイク、服やアクセサリーのスタイリングのコツまでまとめました。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ja/guide/color-psychology-confidence.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>色が自信と第一印象に与える心理的効果 | Find Your Personal Color</title>
    <meta name="description" content="色彩心理学の基本原理から、パーソナルカラーが自己肯定感や第一印象にどのような影響を与えるかを見ていきます。">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ja/guide/color-psychology-confidence.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="色が自信と第一印象に与える心理的効果">
    <meta property="og:description" content="色彩心理学の基本原理から、パーソナルカラーが自己肯定感や第一印象にどのような影響を与えるかを見ていきます。">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ja/guide/color-psychology-confidence.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "色が自信と第一印象に与える心理的効果",
        "description": "色彩心理学の基本原理から、パーソナルカラーが自己肯定感や第一印象にどのような影響を与えるかを見ていきます。",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ja/guide/color-psychology-confidence.html",
        "inLanguage": "ja"
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
            <a href="/ja/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/" class="active">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ja/">ホーム</a> / <a href="/ja/guide/">ガイド</a> / 色が自信と第一印象に与える心理的効果</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">カラー心理学</span>
        <h1 class="serif">色が自信と第一印象に与える心理的効果</h1>
        <div class="article-meta">読了時間 5分 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">色は単に見た目の良し悪しを超えて、私たちが自分自身をどう感じるか、そして他人に与える印象にも実質的な影響を及ぼします。</p>
        <h2>色彩心理学とは</h2>
        <p>色彩心理学とは、特定の色が人間の感情や行動に与える影響を研究する分野です。例えば赤はエネルギーや自信、青は信頼や安定感、緑は安らぎやバランスを連想させるというのが、広く知られている色の連想原理です。</p>
        <h2>色が他人に与える印象</h2>
        <p>面接や初対面のように、短い時間で印象が決まる場面では、服の色が性格や態度についての無意識のサインとして働くことがあります。濃く鮮やかな色は自信や専門性を、柔らかいパステルカラーは親しみやすさや安心感を伝える傾向があります。</p>
        <h2>パーソナルカラーと自己肯定感の関係</h2>
        <p>興味深いのは、色が持つ心理的効果は「自分に似合う色を身につけたとき」にはるかに強く現れるという点です。自分に合ったパーソナルカラーを身につけると、鏡に映る自分の姿に自然と満足でき、それが姿勢や表情、話し方にも良い影響を与えます。</p>
        <h2>日常でカラー心理学を活用する方法</h2>
        <p>大切な発表やミーティングがある日には信頼感を与えるトーンを、リラックスした集まりには柔らかいトーンを選んでみましょう。ただし、どんな場面でも基本は自分のパーソナルカラーの範囲内で選ぶことです。どんなに心理的に良いとされる色でも、自分のトーンに合わなければ、かえって不自然に見えてしまうことがあります。</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>あなたのパーソナルカラーが気になったら</h3>
        <p>4つの質問とAI写真分析で、1分で無料診断できます。</p>
        <a href="/ja/#quiz-container" class="btn">今すぐ診断する</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">あわせて読みたい</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">カラートレンド</span>
                <h3>2026年のカラートレンドをパーソナルカラーに取り入れる方法</h3>
                <p>パンドンが発表した2026年の今年の色から、トレンドカラーを自分のパーソナルカラーに合わせて取り入れる実践的なコツまで紹介します。</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">基礎ガイド</span>
                <h3>パーソナルカラーとは？初心者のための完全ガイド</h3>
                <p>パーソナルカラーの基本概念から4シーズン分類の仕組み、正確な診断方法まで、初めての方にもわかりやすくまとめました。</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">スタイリング</span>
                <h3>面接や結婚式など、大切な日の完璧なコーディネート</h3>
                <p>面接コーデから結婚式のゲストコーデまで、大切な場面でパーソナルカラーを活かして好印象を残す方法を紹介します。</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ja/guide/">ガイド</a>
            <a href="/ja/about.html">サービス紹介</a>
            <a href="/ja/privacy.html">プライバシーポリシー</a>
            <a href="/ja/terms.html">利用規約</a>
            <a href="/ja/contact.html">お問い合わせ</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

echo "Files written. Staging and committing..."
git add -A
git commit -m "Add ja/guide content section: 14 articles + index, nav links, sitemap update"
git push

echo "Done. Vercel should redeploy automatically via the GitHub integration."
