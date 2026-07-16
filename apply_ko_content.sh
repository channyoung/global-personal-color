#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- ko content batch 1
# Adds /ko/guide/ section: 14 articles + index, wired into
# homepage/footer nav, sitemap updated with all new URLs.
# Run from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Adding ko/guide content section..."
mkdir -p ko/guide

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
</urlset>
EOF_GPC

cat > ko/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 컬러 진단 테스트 - 나에게 맞는 웜톤 쿨톤 찾기 | Find Your Personal Color</title>
    <meta name="description" content="4가지 간단한 질문과 AI 사진 분석으로 봄웜, 여름쿨, 가을웜, 겨울쿨 중 나에게 어울리는 퍼스널 컬러를 무료로 진단해보세요. 어울리는 컬러 팔레트와 스타일링 가이드까지 확인할 수 있습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/">

    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/">

    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="퍼스널 컬러 진단 테스트 - 나에게 맞는 웜톤 쿨톤 찾기">
    <meta property="og:description" content="4가지 간단한 질문과 AI 사진 분석으로 나만의 퍼스널 컬러를 무료로 진단해보세요.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="퍼스널 컬러 진단 테스트 - 나에게 맞는 웜톤 쿨톤 찾기">
    <meta name="twitter:description" content="4가지 간단한 질문과 AI 사진 분석으로 나만의 퍼스널 컬러를 무료로 진단해보세요.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">

    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "WebApplication",
        "name": "Find Your Personal Color",
        "url": "https://global-personal-color.vercel.app/ko/",
        "description": "간단한 질문과 AI 사진 분석으로 나에게 어울리는 퍼스널 컬러를 무료로 진단하는 웹 서비스입니다.",
        "applicationCategory": "LifestyleApplication",
        "operatingSystem": "Any",
        "inLanguage": "ko",
        "offers": { "@type": "Offer", "price": "0", "priceCurrency": "KRW" }
    }
    </script>
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "FAQPage",
        "mainEntity": [
            {
                "@type": "Question",
                "name": "퍼스널 컬러 진단이란 무엇인가요?",
                "acceptedAnswer": { "@type": "Answer", "text": "타고난 피부 톤과 가장 조화를 이루는 최적의 색상을 찾는 과정입니다." }
            },
            {
                "@type": "Question",
                "name": "AI 카메라 분석은 어떻게 작동하나요?",
                "acceptedAnswer": { "@type": "Answer", "text": "얼굴 픽셀의 RGB 평균값을 계산하여 즉시 어울리는 계절 팔레트를 제안합니다." }
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
        .faq-list details[open] summary::after{content:"–";}
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" id="lang-ko" class="active">KO</a>
                <a href="/en/" id="lang-en">EN</a>
                <a href="/ja/" id="lang-ja">JA</a>
                <a href="/es/" id="lang-es">ES</a>
                <a href="/zh/" id="lang-zh">ZH</a>
            </div>
        </div>
    </header>

    <section class="wrap hero">
        <div>
            <div class="eyebrow">Personal Color Diagnosis</div>
            <h1>당신의 얼굴에도<br><em>계절</em>이 있습니다</h1>
            <p class="lede">타고난 피부·눈동자·머리카락의 색을 4가지 계절로 진단하고, 당신에게 가장 잘 어울리는 컬러 팔레트를 찾아드립니다.</p>
            <div class="cta-row">
                <button class="btn-primary" onclick="startQuiz();document.getElementById('quiz-container').scrollIntoView({behavior:'smooth'});">무료로 진단 시작하기</button>
                <span class="cta-note">4문항 · 소요시간 1분</span>
            </div>
        </div>
        <div class="fan">
            <div class="fcard f1"><span class="fnum">01 · Spring</span><span class="fname">봄 웜톤</span><span class="fdots"><span style="background:#FF8C69"></span><span style="background:#FFD59A"></span><span style="background:#F6C9AD"></span></span></div>
            <div class="fcard f2"><span class="fnum">02 · Summer</span><span class="fname">여름 쿨톤</span><span class="fdots"><span style="background:#B9C6DC"></span><span style="background:#DCE4EF"></span><span style="background:#8AA9D6"></span></span></div>
            <div class="fcard f3"><span class="fnum">03 · Autumn</span><span class="fname">가을 웜톤</span><span class="fdots"><span style="background:#8C4A24"></span><span style="background:#C98452"></span><span style="background:#E6D2C1"></span></span></div>
            <div class="fcard f4"><span class="fnum">04 · Winter</span><span class="fname">겨울 쿨톤</span><span class="fdots"><span style="background:#FFFFFF"></span><span style="background:#7A8CA8"></span><span style="background:#12182A"></span></span></div>
        </div>
    </section>

    <div class="wrap">
        <div class="tabs">
            <a class="tab" href="#guide">가이드</a>
            <a class="tab" href="#quiz-container">진단하기</a>
            <a class="tab" href="#analysis-card-zone">AI 분석</a>
            <a class="tab" href="#faq">FAQ</a>
        </div>
    </div>

    <section class="wrap block guide-grid" id="guide">
        <div>
            <h2 class="serif">퍼스널 컬러 가이드</h2>
            <p>퍼스널 컬러는 개인이 가진 고유의 신체 색상과 가장 조화를 이루는 핵심 컬러 컬렉션입니다. 맞는 톤을 찾으면 안색이 맑아 보이지만, 맞지 않는 톤은 피부가 칙칙해 보일 수 있습니다.</p>
            <p>사람은 저마다 타고난 고유의 피부 언더톤과 눈동자 색을 가지고 있습니다. 퍼스널 컬러 진단은 이러한 특징을 봄, 여름, 가을, 겨울의 네 가지 계절 타입으로 분류합니다. 자신에게 맞는 컬러 팔레트를 알면 쇼핑 실패를 줄이고 메이크업과 스타일링 선택의 정확도를 크게 높일 수 있습니다.</p>
            <p><a href="/ko/guide/" style="color:var(--brand);font-weight:600;text-decoration:none;">퍼스널 컬러 가이드 &amp; 아티클 더 보기 &rarr;</a></p>
        </div>
        <div class="index-card">
            <div class="idxlabel">4 Seasons at a glance</div>
            <div class="srow"><span class="chip chip-spring"></span><div class="stxt"><strong>봄 웜톤</strong><span>아이유, 수지 · 화사한 피치, 코랄</span></div></div>
            <div class="srow"><span class="chip chip-summer"></span><div class="stxt"><strong>여름 쿨톤</strong><span>손예진, 태연 · 맑은 라벤더, 스카이블루</span></div></div>
            <div class="srow"><span class="chip chip-autumn"></span><div class="stxt"><strong>가을 웜톤</strong><span>제니, 효리 · 깊은 카키, 버건디</span></div></div>
            <div class="srow"><span class="chip chip-winter"></span><div class="stxt"><strong>겨울 쿨톤</strong><span>카리나, 선미 · 선명한 블랙, 네이비</span></div></div>
        </div>
    </section>

    <section class="wrap block" id="quiz-container">
        <div class="card-panel">
            <div id="start-view">
                <h3 class="panel-title">🎨 나만의 퍼스널 컬러 진단</h3>
                <p class="panel-sub">간단한 시각적 질문을 통해 사계절 퍼스널 컬러를 즉시 찾아보세요.</p>
                <button id="start-btn" class="btn">퍼스널 컬러 테스트 시작하기</button>
            </div>

            <div id="question-view" class="hidden">
                <div class="progress-container"><div id="progress"></div></div>
                <h3 id="question-text">Question Loading...</h3>
                <div id="answer-buttons"></div>
            </div>

            <div id="result-view" class="hidden">
                <h3 class="panel-title">🎉 당신의 퍼스널 컬러 진단 결과</h3>
                <div id="result-tags"></div>
                <p id="result-description"></p>
                <h4 id="best-color-title"></h4>
                <div id="color-palette-display"></div>
                <h4 id="match-guide-title"></h4>
                <button id="restart-btn" class="btn btn-secondary">다시 테스트하기</button>
            </div>
        </div>
    </section>

    <section class="wrap block" id="analysis-card-zone">
        <div class="card-panel">
            <h3 class="panel-title">📸 AI 스마트 분석 및 진단 (Beta)</h3>
            <p class="panel-sub">정확한 분석을 위해 얼굴이 정면으로 잘 나온 밝은 사진을 사용해 주세요. 데이터는 외부 서버에 절대 저장되지 않습니다.</p>

            <button id="init-cam-btn" class="btn action-btn">실시간 카메라 작동하기</button>
            <button id="trigger-file-btn" class="btn btn-secondary action-btn">📁 기존 사진 업로드하기</button>

            <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">

            <div id="camera-zone" class="hidden">
                <div class="camera-wrapper">
                    <video id="webcam" autoplay playsinline muted></video>
                    <div class="face-overlay"></div>
                </div>
                <button id="capture-btn" class="btn">📸 사진 촬영 및 AI 분석하기</button>
            </div>

            <div id="camera-loading" class="hidden">⏳ AI가 실시간 피부 톤 분석 중...</div>
            <canvas id="calc-canvas" class="hidden"></canvas>
        </div>
    </section>

    <section class="wrap block" id="faq" style="max-width:760px;">
        <h2 class="serif" style="text-align:center;margin-bottom:24px;">자주 묻는 질문</h2>
        <div class="faq-list">
            <details>
                <summary>퍼스널 컬러 진단이란 무엇인가요?</summary>
                <p>타고난 피부 톤과 가장 조화를 이루는 최적의 색상을 찾는 과정입니다.</p>
            </details>
            <details>
                <summary>AI 카메라 분석은 어떻게 작동하나요?</summary>
                <p>얼굴 픽셀의 RGB 평균값을 계산하여 즉시 어울리는 계절 팔레트를 제안합니다.</p>
            </details>
        </div>
    </section>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/guide/">가이드</a>
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>

    <script>
        const camErrorMsg = "카메라를 시작할 수 없습니다. 권한을 확인해 주시거나, 대신 [기존 사진 업로드] 기능을 사용해 주세요!";
    </script>
    <script src="script.js"></script>
</body>
</html>
EOF_GPC

cat > ko/about.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서비스 소개 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color는 사용자가 자신의 퍼스널 컬러를 진단하고 스타일링에 대한 통찰을 얻을 수 있도록 돕는 서비스입니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/about.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/about.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/about.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/about.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/about.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/about.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/about.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="서비스 소개 | Find Your Personal Color">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/about.html">
    <meta property="og:locale" content="ko_KR">
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>서비스 소개</h2>
        <p>Find Your Personal Color는 사용자가 자신의 퍼스널 컬러를 진단하고 스타일링에 대한 통찰을 얻을 수 있도록 돕기 위해 제작되었습니다. 데이터 기반 분석을 통해 일상에 작은 즐거움을 선사하는 것이 목표입니다.</p>

        <a href="/ko/" class="btn">홈으로 돌아가기</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/guide/">가이드</a>
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의하기 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color 서비스 이용 중 궁금한 점이나 제안 사항이 있다면 이메일로 문의해 주세요.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/contact.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="문의하기 | Find Your Personal Color">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/contact.html">
    <meta property="og:locale" content="ko_KR">
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>문의하기</h2>
        <p>본 서비스에 대한 문의 사항은 아래 이메일로 연락해 주시기 바랍니다. 신속하게 답변드릴 수 있도록 노력하겠습니다.<br>문의: seanstudio.contact@gmail.com</p>

        <a href="/ko/" class="btn">홈으로 돌아가기</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/guide/">가이드</a>
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/privacy.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인정보처리방침 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color의 개인정보처리방침입니다. 서비스는 개인 식별 정보를 저장하지 않습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/privacy.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/privacy.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/privacy.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/privacy.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/privacy.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/privacy.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/privacy.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="개인정보처리방침 | Find Your Personal Color">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/privacy.html">
    <meta property="og:locale" content="ko_KR">
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>개인정보처리방침</h2>
        <p>Find Your Personal Color는 사용자의 개인정보를 존중합니다. 본 서비스는 어떠한 개인 식별 정보도 저장하지 않습니다. 맞춤형 광고를 제공하기 위해 쿠키를 사용할 수 있는 구글 애드센스를 이용하고 있습니다.</p>

        <a href="/ko/" class="btn">홈으로 돌아가기</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/guide/">가이드</a>
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/terms.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이용약관 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color의 이용약관입니다. 제공되는 모든 진단 결과는 참고용입니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/terms.html">
    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/terms.html">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/terms.html">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/terms.html">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/terms.html">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/terms.html">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/terms.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="이용약관 | Find Your Personal Color">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/terms.html">
    <meta property="og:locale" content="ko_KR">
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <main class="wrap card-panel">
        <h2>이용약관</h2>
        <p>제공되는 모든 결과는 참고용일 뿐이며 전문적인 조언을 대신할 수 없습니다. 사용자는 본 서비스를 이용하는 동안 타인의 권리를 존중해야 합니다.</p>

        <a href="/ko/" class="btn">홈으로 돌아가기</a>
    </main>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/guide/">가이드</a>
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">© 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/guide.css <<'EOF_GPC'
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

cat > ko/guide/index.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 컬러 가이드 &amp; 아티클 | Find Your Personal Color</title>
    <meta name="description" content="퍼스널 컬러의 기초부터 계절별 완벽 가이드, 메이크업과 스타일링 팁까지. 전문적인 퍼스널 컬러 아티클 모음입니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:title" content="퍼스널 컬러 가이드 &amp; 아티클">
    <meta property="og:description" content="퍼스널 컬러의 기초부터 계절별 완벽 가이드, 메이크업과 스타일링 팁까지.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="guide.css">
</head>
<body>
    <header class="wrap">
        <div class="nav">
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / 가이드</div>
    <div class="wrap guide-hero">
        <h1 class="serif">퍼스널 컬러 가이드</h1>
        <p>기초 이론부터 계절별 완벽 가이드, 메이크업과 스타일링 팁까지 — 전문적인 퍼스널 컬러 아티클을 만나보세요.</p>
    </div>
    <div class="wrap article-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</h3>
                <p>퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.</p>
                <div class="meta">읽는 시간 6분</div>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">봄 웜톤</span>
                <h3>봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
                <div class="meta">읽는 시간 7분</div>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>웜톤 vs 쿨톤, 5가지로 구별하는 법</h3>
                <p>손목 정맥부터 주얼리 반응까지, 집에서 바로 확인할 수 있는 웜톤·쿨톤 셀프 체크 방법 5가지를 소개합니다.</p>
                <div class="meta">읽는 시간 5분</div>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러 AI 진단, 얼마나 정확할까?</h3>
                <p>AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.</p>
                <div class="meta">읽는 시간 6분</div>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까</h3>
                <p>전문 드레이핑 진단과 AI 온라인 퀴즈의 차이, 각각의 장단점, 그리고 상황별로 어떤 방법을 선택해야 하는지 비교했습니다.</p>
                <div class="meta">읽는 시간 6분</div>
            </a>
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">여름 쿨톤</span>
                <h3>여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>여름 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
                <div class="meta">읽는 시간 7분</div>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">가을 웜톤</span>
                <h3>가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>가을 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
                <div class="meta">읽는 시간 7분</div>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">겨울 쿨톤</span>
                <h3>겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
                <div class="meta">읽는 시간 7분</div>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러에 맞는 립스틱 고르는 법</h3>
                <p>계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.</p>
                <div class="meta">읽는 시간 5분</div>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러별 헤어 컬러 추천</h3>
                <p>계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.</p>
                <div class="meta">읽는 시간 5분</div>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</h3>
                <p>면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.</p>
                <div class="meta">읽는 시간 6분</div>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</h3>
                <p>AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.</p>
                <div class="meta">읽는 시간 4분</div>
            </a>
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">컬러 트렌드</span>
                <h3>2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법</h3>
                <p>팬톤이 발표한 2026년 올해의 컬러부터, 트렌드 컬러를 내 퍼스널 컬러에 맞게 소화하는 실전 팁까지 소개합니다.</p>
                <div class="meta">읽는 시간 6분</div>
            </a>
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">컬러 심리학</span>
                <h3>색이 자신감과 첫인상에 미치는 심리적 영향</h3>
                <p>색채 심리학의 기본 원리부터, 퍼스널 컬러가 자기 확신과 첫인상에 어떤 영향을 주는지 살펴봅니다.</p>
                <div class="meta">읽는 시간 5분</div>
            </a>
    </div>
    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/what-is-personal-color.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드 | Find Your Personal Color</title>
    <meta name="description" content="퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/what-is-personal-color.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드">
    <meta property="og:description" content="퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/what-is-personal-color.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드",
        "description": "퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/what-is-personal-color.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">기초 가이드</span>
        <h1 class="serif">퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</h1>
        <div class="article-meta">읽는 시간 6분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">퍼스널 컬러라는 말은 많이 들어봤지만, 정확히 무엇을 의미하는지 헷갈리는 분들이 많습니다. 한마디로 정의하면, 퍼스널 컬러는 타고난 피부·눈동자·머리카락의 색과 가장 조화롭게 어울리는 색상의 집합입니다.</p>
        <p>같은 빨간색 립스틱이라도 누군가에게는 화사하고 생기 있어 보이는 반면, 다른 누군가에게는 얼굴이 칙칙하고 피곤해 보이게 만들 수 있습니다. 이 차이를 만드는 것이 바로 개인의 피부 언더톤과 명도, 채도의 조합이며, 퍼스널 컬러 진단은 이 조합을 체계적으로 분석하는 과정입니다.</p>
        <h2>퍼스널 컬러의 기본 원리: 언더톤이 핵심이다</h2>
        <p>피부색은 크게 표면톤(눈에 보이는 피부색)과 언더톤(피부 안쪽에서 비치는 색조)으로 나뉩니다. 언더톤은 크게 웜톤(노란빛, 황금빛이 도는 따뜻한 톤)과 쿨톤(붉은빛, 푸른빛이 도는 차가운 톤)으로 구분됩니다.</p>
        <p>웜톤인 사람이 쿨톤 컬러(예: 푸른빛이 도는 라벤더, 아이시한 실버 그레이)를 착용하면 피부가 창백하고 아파 보일 수 있고, 반대로 쿨톤인 사람이 웜톤 컬러(예: 주황빛이 도는 코랄, 황금빛 카멜)를 착용하면 얼굴이 붉거나 부어 보일 수 있습니다. 이것이 퍼스널 컬러가 인상에 실제로 영향을 미치는 이유입니다.</p>
        <h2>4계절 분류는 어떻게 정해질까</h2>
        <p>퍼스널 컬러는 보통 봄(Spring), 여름(Summer), 가을(Autumn), 겨울(Winter)의 4가지 계절 타입으로 분류됩니다. 이 분류는 단순히 웜톤·쿨톤 두 가지로만 나누는 것이 아니라, 색의 명도(밝기)와 채도(선명함)까지 함께 고려합니다.</p>
        <ul>
            <li><strong>봄 웜톤</strong>: 밝고 화사한 웜톤. 생기 있고 선명한 컬러가 잘 어울림</li>
            <li><strong>가을 웜톤</strong>: 깊고 차분한 웜톤. 짙고 풍부한 컬러가 잘 어울림</li>
            <li><strong>여름 쿨톤</strong>: 밝고 부드러운 쿨톤. 파스텔 톤의 차분한 컬러가 잘 어울림</li>
            <li><strong>겨울 쿨톤</strong>: 짙고 선명한 쿨톤. 고대비의 강렬한 컬러가 잘 어울림</li>
        </ul>
        <p>즉 같은 웜톤이라도 봄과 가을은 밝기와 채도에서 뚜렷한 차이를 보이며, 이 세밀한 구분 덕분에 훨씬 정교한 컬러 추천이 가능해집니다.</p>
        <h2>왜 정확한 진단이 중요할까</h2>
        <p>퍼스널 컬러를 아는 것은 단순한 재미를 넘어 실질적인 이점이 있습니다. 첫째, 옷이나 화장품을 구매할 때 실패 확률이 크게 줄어듭니다. 둘째, 같은 얼굴이라도 어울리는 컬러를 사용하면 피부 톤이 맑아 보이고 이목구비가 또렷해 보이는 효과가 있습니다. 셋째, 자신에게 맞는 컬러 팔레트가 명확해지면 쇼핑이나 스타일링에 들이는 시간과 고민이 줄어듭니다.</p>
        <h2>진단 방법 세 가지 비교</h2>
        <p>퍼스널 컬러를 확인하는 방법은 크게 세 가지입니다.</p>
        <ul>
            <li><strong>셀프 체크</strong>: 손목 정맥 색, 자외선 반응 등으로 대략적인 웜/쿨 판단. 간편하지만 정확도가 낮음</li>
            <li><strong>전문 드레이핑 진단</strong>: 전문가가 다양한 컬러 천을 얼굴에 대보며 판단. 정확도는 높지만 시간과 비용이 듦</li>
            <li><strong>AI·온라인 진단</strong>: 사진이나 실시간 카메라로 피부 픽셀 데이터를 분석. 무료이고 즉시 결과를 받을 수 있어 처음 시작하기에 좋음</li>
        </ul>
        <p>완벽한 정밀도가 필요하다면 전문 드레이핑이 가장 정확하지만, 대부분의 사람에게는 AI 기반 진단만으로도 충분히 유용한 방향성을 얻을 수 있습니다. 특히 조명이 밝은 곳에서 정면 사진으로 진단하면 신뢰도가 높아집니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>웜톤 vs 쿨톤, 5가지로 구별하는 법</h3>
                <p>손목 정맥부터 주얼리 반응까지, 집에서 바로 확인할 수 있는 웜톤·쿨톤 셀프 체크 방법 5가지를 소개합니다.</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러 AI 진단, 얼마나 정확할까?</h3>
                <p>AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.</p>
            </a>
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까</h3>
                <p>전문 드레이핑 진단과 AI 온라인 퀴즈의 차이, 각각의 장단점, 그리고 상황별로 어떤 방법을 선택해야 하는지 비교했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/spring-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링 | Find Your Personal Color</title>
    <meta name="description" content="봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/spring-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링">
    <meta property="og:description" content="봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/spring-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링",
        "description": "봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/spring-warm-guide.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</div>

    <div class="wrap article-header">
        <span class="tag tag-spring">봄 웜톤</span>
        <h1 class="serif">봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h1>
        <div class="article-meta">읽는 시간 7분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">봄 웜톤은 밝고 화사하며 생기 넘치는 이미지가 특징인 타입입니다. 노란빛이 도는 따뜻한 피부 언더톤에 맑고 선명한 컬러가 더해지면 특유의 생동감이 극대화됩니다.</p>
        <h2>봄 웜톤의 특징</h2>
        <p>봄 웜톤은 대체로 아이보리나 밝은 황금빛 피부 언더톤을 가지고 있으며, 햇빛 아래에서 쉽게 그을리는 편입니다. 눈동자는 밝은 갈색이나 헤이즐 계열이 많고, 머리카락은 밝은 갈색부터 골드빛이 도는 브라운 계열이 잘 어울립니다. 전체적으로 화사하고 청춘 넘치는 인상을 주는 것이 특징입니다.</p>
        <h2>봄 웜톤에게 어울리는 컬러 팔레트</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#FF8C69"><span style="color:#4A2712">코랄</span></div>
            <div class="sw" style="background:#FFD59A"><span style="color:#5C3D14">피치</span></div>
            <div class="sw" style="background:#F6C9AD"><span style="color:#5C3D14">허니 카멜</span></div>
            <div class="sw" style="background:#8FBF6A"><span style="color:#1F3810">라이트 그린</span></div>
        </div>
        <p>코랄, 피치, 허니 카멜처럼 밝고 따뜻한 컬러가 봄 웜톤의 얼굴을 가장 화사하게 살려줍니다. 파스텔보다는 살짝 채도가 있는 밝은 컬러를 선택하는 것이 포인트입니다.</p>
        <h2>메이크업 컬러 가이드</h2>
        <ul>
            <li><strong>립 컬러</strong>: 코랄, 살몬 핑크, 오렌지빛 레드가 잘 어울림</li>
            <li><strong>블러셔</strong>: 피치, 코랄 계열로 자연스러운 홍조 연출</li>
            <li><strong>아이섀도우</strong>: 골드, 카키, 브론즈 등 웜톤 베이스 섀도우 추천</li>
            <li><strong>피해야 할 컬러</strong>: 푸른빛이 강한 버건디, 차가운 그레이 계열 립스틱</li>
        </ul>
        <h2>옷과 액세서리 스타일링</h2>
        <p>쥬얼리는 실버보다 골드 계열이 피부를 훨씬 화사하게 살려줍니다. 의류 컬러는 아이보리, 카멜, 코랄, 라이트 카키처럼 따뜻하고 밝은 톤을 기본으로 하면 실패가 적습니다. 반대로 새까만 블랙이나 차가운 네이비 같은 짙고 차가운 컬러는 얼굴을 상대적으로 어둡고 무겁게 만들 수 있어, 포인트 컬러로만 소량 활용하는 것을 추천합니다.</p>
        <blockquote>핵심은 '밝고 따뜻하게' — 봄 웜톤은 채도와 명도가 모두 높은 컬러를 만났을 때 가장 빛납니다.</blockquote>
        <h2>봄 웜톤이 피해야 할 컬러</h2>
        <p>푸시아 핑크나 아이시 라벤더처럼 푸른 기가 강한 컬러, 그리고 채도가 낮은 무채색 계열(차가운 그레이, 새까만 블랙)은 봄 웜톤의 화사한 이미지를 가라앉히는 경향이 있습니다. 꼭 사용하고 싶다면 피부와 먼 하의나 신발 등에 포인트로만 활용하는 것이 안전합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">여름 쿨톤</span>
                <h3>여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>여름 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">가을 웜톤</span>
                <h3>가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>가을 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러에 맞는 립스틱 고르는 법</h3>
                <p>계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/warm-vs-cool-tone.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웜톤 vs 쿨톤, 5가지로 구별하는 법 | Find Your Personal Color</title>
    <meta name="description" content="손목 정맥부터 주얼리 반응까지, 집에서 바로 확인할 수 있는 웜톤·쿨톤 셀프 체크 방법 5가지를 소개합니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/warm-vs-cool-tone.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="웜톤 vs 쿨톤, 5가지로 구별하는 법">
    <meta property="og:description" content="손목 정맥부터 주얼리 반응까지, 집에서 바로 확인할 수 있는 웜톤·쿨톤 셀프 체크 방법 5가지를 소개합니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/warm-vs-cool-tone.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "웜톤 vs 쿨톤, 5가지로 구별하는 법",
        "description": "손목 정맥부터 주얼리 반응까지, 집에서 바로 확인할 수 있는 웜톤·쿨톤 셀프 체크 방법 5가지를 소개합니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/warm-vs-cool-tone.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 웜톤 vs 쿨톤, 5가지로 구별하는 법</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">기초 가이드</span>
        <h1 class="serif">웜톤 vs 쿨톤, 5가지로 구별하는 법</h1>
        <div class="article-meta">읽는 시간 5분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">웜톤인지 쿨톤인지 헷갈릴 때, 전문 진단을 받기 전에 집에서 간단히 확인할 수 있는 방법들이 있습니다. 100% 정확하진 않지만, 대략적인 방향을 잡는 데 충분히 유용합니다.</p>
        <h2>1. 손목 정맥 색으로 확인하기</h2>
        <p>밝은 자연광 아래에서 손목 안쪽 정맥 색을 확인해보세요. 정맥이 초록빛에 가깝다면 웜톤, 파란빛이나 보랏빛에 가깝다면 쿨톤일 가능성이 높습니다.</p>
        <h2>2. 골드 vs 실버 주얼리 반응</h2>
        <p>골드 액세서리를 착용했을 때 피부가 화사하고 건강해 보인다면 웜톤, 실버 액세서리를 착용했을 때 피부가 더 맑고 정돈되어 보인다면 쿨톤에 가깝습니다.</p>
        <h2>3. 햇빛 노출 시 피부 반응</h2>
        <p>자외선에 오래 노출됐을 때 붉어지기보다 자연스럽게 그을리는 편이라면 웜톤, 쉽게 빨갛게 익거나 화상을 입는 편이라면 쿨톤일 가능성이 높습니다.</p>
        <h2>4. 자연스러운 입술·볼 색</h2>
        <p>화장을 하지 않은 상태의 입술과 볼 색이 코랄이나 오렌지빛에 가까우면 웜톤, 핑크나 로즈빛에 가까우면 쿨톤인 경우가 많습니다.</p>
        <h2>5. 흰 종이 대비 테스트</h2>
        <p>흰 종이를 얼굴 옆에 대고 거울을 보세요. 피부가 종이보다 노랗거나 황금빛으로 보이면 웜톤, 분홍빛이나 푸른빛으로 보이면 쿨톤에 가깝습니다.</p>
        <blockquote>5가지 중 3개 이상 같은 방향으로 나온다면 그쪽 톤일 가능성이 높습니다. 다만 조명, 화장, 계절에 따라 결과가 달라질 수 있으니 참고용으로만 활용하세요.</blockquote>
        <p>셀프 체크는 어디까지나 대략적인 힌트일 뿐입니다. 좀 더 정확하고 세분화된(4계절 타입까지) 결과를 원한다면 AI 분석을 함께 활용하는 것을 추천합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</h3>
                <p>퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.</p>
            </a>
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러 AI 진단, 얼마나 정확할까?</h3>
                <p>AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</h3>
                <p>AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/how-accurate-is-ai-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 컬러 AI 진단, 얼마나 정확할까? | Find Your Personal Color</title>
    <meta name="description" content="AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/how-accurate-is-ai-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="퍼스널 컬러 AI 진단, 얼마나 정확할까?">
    <meta property="og:description" content="AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/how-accurate-is-ai-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "퍼스널 컬러 AI 진단, 얼마나 정확할까?",
        "description": "AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/how-accurate-is-ai-diagnosis.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 퍼스널 컬러 AI 진단, 얼마나 정확할까?</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">기초 가이드</span>
        <h1 class="serif">퍼스널 컬러 AI 진단, 얼마나 정확할까?</h1>
        <div class="article-meta">읽는 시간 6분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">"AI가 사진 한 장으로 퍼스널 컬러를 진단한다"는 말을 처음 들으면 신기하면서도 정말 믿을 수 있을지 궁금해집니다. AI 분석의 원리와 한계를 정확히 알면 훨씬 효과적으로 활용할 수 있습니다.</p>
        <h2>AI 분석은 어떻게 작동할까</h2>
        <p>일반적인 AI 퍼스널 컬러 분석은 얼굴 중앙 영역의 픽셀 데이터를 샘플링해 RGB(빨강·초록·파랑) 평균값을 계산합니다. 이 평균값에서 붉은빛·노란빛·푸른빛의 비중을 분석해 웜톤인지 쿨톤인지, 그리고 명도가 밝은지 어두운지를 판단하여 4계절 중 어디에 가까운지를 계산하는 방식입니다.</p>
        <h2>AI 진단의 강점</h2>
        <ul>
            <li>무료이고 즉시 결과를 받을 수 있음</li>
            <li>사람의 주관적 판단이 개입하지 않아 일관된 기준으로 분석</li>
            <li>언제 어디서든 반복해서 테스트해볼 수 있음</li>
        </ul>
        <h2>AI 진단의 한계</h2>
        <ul>
            <li>조명 환경에 따라 픽셀 색상값이 크게 달라질 수 있음</li>
            <li>카메라·화면마다 색 보정 방식이 달라 기기 간 오차 발생 가능</li>
            <li>메이크업, 필터, 보정 앱 사용 시 원래 피부색과 다르게 분석될 수 있음</li>
            <li>전문 드레이핑처럼 실제 천을 대보며 미세한 차이를 비교하는 것은 아직 어려움</li>
        </ul>
        <h2>정확도를 높이는 촬영 팁</h2>
        <ul>
            <li>자연광이 드는 창가에서, 정오 무렵 촬영하기</li>
            <li>색이 있는 조명(노란 백열등, 색조명)은 피하기</li>
            <li>화장을 최소화하고 정면을 응시하기</li>
            <li>필터나 보정 앱 없이 촬영하기</li>
        </ul>
        <p>결론적으로 AI 진단은 완벽한 절대값이라기보다, 빠르고 편리하게 방향성을 잡아주는 훌륭한 출발점입니다. 촬영 팁을 지키면 신뢰도를 크게 높일 수 있고, 더 정밀한 확인이 필요하다면 전문 드레이핑과 병행하는 것을 추천합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="draping-vs-online-quiz.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까</h3>
                <p>전문 드레이핑 진단과 AI 온라인 퀴즈의 차이, 각각의 장단점, 그리고 상황별로 어떤 방법을 선택해야 하는지 비교했습니다.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</h3>
                <p>AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</h3>
                <p>퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/draping-vs-online-quiz.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까 | Find Your Personal Color</title>
    <meta name="description" content="전문 드레이핑 진단과 AI 온라인 퀴즈의 차이, 각각의 장단점, 그리고 상황별로 어떤 방법을 선택해야 하는지 비교했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/draping-vs-online-quiz.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까">
    <meta property="og:description" content="전문 드레이핑 진단과 AI 온라인 퀴즈의 차이, 각각의 장단점, 그리고 상황별로 어떤 방법을 선택해야 하는지 비교했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/draping-vs-online-quiz.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까",
        "description": "전문 드레이핑 진단과 AI 온라인 퀴즈의 차이, 각각의 장단점, 그리고 상황별로 어떤 방법을 선택해야 하는지 비교했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/draping-vs-online-quiz.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">기초 가이드</span>
        <h1 class="serif">셀프 드레이핑 진단 vs AI 온라인 퀴즈, 뭐가 다를까</h1>
        <div class="article-meta">읽는 시간 6분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">퍼스널 컬러를 진단하는 방법은 크게 전문가의 드레이핑 진단과 AI·온라인 퀴즈 두 가지로 나뉩니다. 두 방법은 접근 방식부터 결과의 정밀도까지 여러 면에서 다릅니다.</p>
        <h2>드레이핑 진단이란</h2>
        <p>드레이핑은 전문가가 다양한 색상의 천을 얼굴 아래에 직접 대보면서, 피부톤·눈빛·혈색이 어떻게 변화하는지 육안으로 비교하는 전통적인 진단 방식입니다. 보통 100장 이상의 컬러 천을 사용해 세밀하게 비교합니다.</p>
        <h2>드레이핑의 장점과 한계</h2>
        <p>실물 컬러를 직접 얼굴에 대보기 때문에 화면이나 조명 왜곡 없이 정밀한 비교가 가능하다는 것이 가장 큰 장점입니다. 다만 예약과 방문이 필요하고 비용이 발생하며, 진단 결과가 진행하는 전문가의 숙련도와 주관적 해석에 따라 다소 달라질 수 있다는 한계도 있습니다.</p>
        <h2>AI·온라인 진단의 장점과 한계</h2>
        <p>AI 진단은 무료이며 즉시, 반복적으로 이용할 수 있다는 것이 강점입니다. 언제든 원할 때 재시도할 수 있고, 결과가 일관된 알고리즘 기준으로 산출됩니다. 다만 조명이나 카메라 환경에 따라 오차가 발생할 수 있어, 드레이핑만큼의 정밀도를 기대하기는 어렵습니다.</p>
        <h2>어떤 방법을 선택해야 할까</h2>
        <p>처음 퍼스널 컬러를 접한다면 AI 온라인 진단으로 대략적인 방향(웜톤인지 쿨톤인지, 어떤 계절에 가까운지)을 먼저 파악하는 것을 추천합니다. 이후 결과가 애매하거나 더 정밀한 확인이 필요하다면, 전문 드레이핑 진단을 받아 세부 톤을 확정하는 것이 효율적인 순서입니다.</p>
        <blockquote>AI로 방향을 잡고, 필요하다면 드레이핑으로 정밀하게 — 두 방법은 경쟁이 아니라 보완 관계입니다.</blockquote>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러 AI 진단, 얼마나 정확할까?</h3>
                <p>AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</h3>
                <p>퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</h3>
                <p>AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/summer-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링 | Find Your Personal Color</title>
    <meta name="description" content="여름 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/summer-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링">
    <meta property="og:description" content="여름 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/summer-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링",
        "description": "여름 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/summer-cool-guide.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</div>

    <div class="wrap article-header">
        <span class="tag tag-summer">여름 쿨톤</span>
        <h1 class="serif">여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h1>
        <div class="article-meta">읽는 시간 7분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">여름 쿨톤은 맑고 부드러우며 우아한 이미지가 특징인 타입입니다. 푸른빛이 도는 차가운 피부 언더톤에 파스텔 톤의 부드러운 컬러가 더해지면 특유의 청량한 분위기가 살아납니다.</p>
        <h2>여름 쿨톤의 특징</h2>
        <p>여름 쿨톤은 대체로 핑크빛이나 푸른빛이 도는 밝은 피부 언더톤을 가지고 있으며, 햇빛에 쉽게 붉어지는 편입니다. 눈동자는 부드러운 갈색이나 회갈색 계열이 많고, 머리카락은 애쉬 브라운이나 차가운 톤의 다크 브라운이 잘 어울립니다. 전체적으로 청초하고 우아한 인상을 주는 것이 특징입니다.</p>
        <h2>여름 쿨톤에게 어울리는 컬러 팔레트</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B9A6D9"><span style="color:#2E1F42">라벤더</span></div>
            <div class="sw" style="background:#8AA9D6"><span style="color:#1B2A42">스카이블루</span></div>
            <div class="sw" style="background:#E8A0BF"><span style="color:#4A1B2E">로즈 핑크</span></div>
            <div class="sw" style="background:#C7CDD6"><span style="color:#2B2F38">소프트 그레이</span></div>
        </div>
        <p>라벤더, 스카이블루, 로즈 핑크처럼 부드럽고 차분한 파스텔 컬러가 여름 쿨톤의 얼굴을 가장 맑게 살려줍니다. 채도가 낮고 밝은 컬러를 선택하는 것이 포인트입니다.</p>
        <h2>메이크업 컬러 가이드</h2>
        <ul>
            <li><strong>립 컬러</strong>: 로즈 핑크, 모브, 라즈베리 계열이 잘 어울림</li>
            <li><strong>블러셔</strong>: 소프트 핑크로 자연스러운 홍조 연출</li>
            <li><strong>아이섀도우</strong>: 라벤더, 그레이시 브라운 등 쿨톤 베이스 섀도우 추천</li>
            <li><strong>피해야 할 컬러</strong>: 오렌지빛이 강한 코랄, 노란빛의 골드 하이라이터</li>
        </ul>
        <h2>옷과 액세서리 스타일링</h2>
        <p>쥬얼리는 골드보다 실버나 화이트골드 계열이 피부를 훨씬 맑게 살려줍니다. 의류 컬러는 라벤더, 파우더 블루, 로즈 그레이처럼 부드럽고 차가운 톤을 기본으로 하면 실패가 적습니다. 반대로 머스타드 옐로우나 짙은 브라운 같은 따뜻하고 탁한 컬러는 얼굴을 상대적으로 칙칙하게 만들 수 있어 소량만 활용하는 것을 추천합니다.</p>
        <h2>여름 쿨톤이 피해야 할 컬러</h2>
        <p>주황빛이 강한 오렌지나 머스타드 옐로우, 짙은 카키 등 웜톤 베이스의 컬러는 여름 쿨톤 특유의 맑은 이미지를 가라앉히는 경향이 있습니다. 액세서리나 신발 등 얼굴에서 먼 부분에 포인트로만 활용하는 것이 안전합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">봄 웜톤</span>
                <h3>봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">겨울 쿨톤</span>
                <h3>겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러별 헤어 컬러 추천</h3>
                <p>계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/autumn-warm-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링 | Find Your Personal Color</title>
    <meta name="description" content="가을 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/autumn-warm-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링">
    <meta property="og:description" content="가을 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/autumn-warm-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링",
        "description": "가을 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/autumn-warm-guide.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</div>

    <div class="wrap article-header">
        <span class="tag tag-autumn">가을 웜톤</span>
        <h1 class="serif">가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h1>
        <div class="article-meta">읽는 시간 7분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">가을 웜톤은 깊고 풍부하며 고급스러운 이미지가 특징인 타입입니다. 짙은 황금빛이 도는 따뜻한 피부 언더톤에 차분하고 깊이 있는 컬러가 더해지면 특유의 성숙한 매력이 극대화됩니다.</p>
        <h2>가을 웜톤의 특징</h2>
        <p>가을 웜톤은 대체로 황금빛이나 올리브빛이 도는 짙은 피부 언더톤을 가지고 있으며, 쉽게 그을리고 잘 타는 편입니다. 눈동자는 짙은 갈색이나 다크 헤이즐 계열이 많고, 머리카락은 다크 브라운이나 짙은 카멜 계열이 잘 어울립니다. 전체적으로 차분하고 고급스러운 인상을 주는 것이 특징입니다.</p>
        <h2>가을 웜톤에게 어울리는 컬러 팔레트</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#B85C38"><span style="color:#2E1608">테라코타</span></div>
            <div class="sw" style="background:#8C7A3D"><span style="color:#2A2410">카키</span></div>
            <div class="sw" style="background:#7A3B1C"><span style="color:#F6D9C6">버건디 브라운</span></div>
            <div class="sw" style="background:#C9A24B"><span style="color:#2A2008">머스타드</span></div>
        </div>
        <p>테라코타, 카키, 머스타드처럼 짙고 흙빛이 도는 컬러가 가을 웜톤의 얼굴을 가장 깊이 있게 살려줍니다. 채도가 낮고 어두운 편의 따뜻한 컬러를 선택하는 것이 포인트입니다.</p>
        <h2>메이크업 컬러 가이드</h2>
        <ul>
            <li><strong>립 컬러</strong>: 브릭 레드, 테라코타, 브라운 계열이 잘 어울림</li>
            <li><strong>블러셔</strong>: 브론즈, 테라코타로 자연스러운 음영 연출</li>
            <li><strong>아이섀도우</strong>: 카키, 브라운, 골드 브론즈 등 웜톤 베이스 섀도우 추천</li>
            <li><strong>피해야 할 컬러</strong>: 핑크빛이 강한 로즈, 아이시한 라벤더</li>
        </ul>
        <h2>옷과 액세서리 스타일링</h2>
        <p>쥬얼리는 골드나 브론즈, 앤틱 골드 계열이 피부를 훨씬 풍부하게 살려줍니다. 의류 컬러는 카키, 카멜, 버건디, 머스타드처럼 짙고 따뜻한 톤을 기본으로 하면 실패가 적습니다. 반대로 새하얀 화이트나 아이시한 파스텔은 얼굴을 상대적으로 밋밋하게 만들 수 있어 포인트로만 활용하는 것을 추천합니다.</p>
        <h2>가을 웜톤이 피해야 할 컬러</h2>
        <p>푸른빛이 강한 라벤더나 아이시 핑크, 새까만 블랙 등 차갑고 밝은 컬러는 가을 웜톤 특유의 깊이감을 흐리는 경향이 있습니다. 블랙 대신 다크 브라운을, 아이시 컬러 대신 웜톤 베이스의 뉴트럴을 선택하는 것이 안전합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">봄 웜톤</span>
                <h3>봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">겨울 쿨톤</span>
                <h3>겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러에 맞는 립스틱 고르는 법</h3>
                <p>계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/winter-cool-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링 | Find Your Personal Color</title>
    <meta name="description" content="겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/winter-cool-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링">
    <meta property="og:description" content="겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/winter-cool-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링",
        "description": "겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/winter-cool-guide.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</div>

    <div class="wrap article-header">
        <span class="tag tag-winter">겨울 쿨톤</span>
        <h1 class="serif">겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h1>
        <div class="article-meta">읽는 시간 7분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">겨울 쿨톤은 모던하고 선명하며 카리스마 있는 이미지가 특징인 타입입니다. 푸른빛이 도는 차가운 피부 언더톤에 고대비의 선명한 컬러가 더해지면 특유의 강렬한 매력이 살아납니다.</p>
        <h2>겨울 쿨톤의 특징</h2>
        <p>겨울 쿨톤은 대체로 푸른빛이나 핑크빛이 도는 맑고 흰 피부 언더톤을 가지고 있으며, 쉽게 붉어지는 편입니다. 눈동자는 짙은 흑갈색이나 새까만 블랙 계열이 많고, 머리카락은 진한 블랙이나 애쉬 톤의 다크 브라운이 잘 어울립니다. 전체적으로 선명하고 카리스마 있는 인상을 주는 것이 특징입니다.</p>
        <h2>겨울 쿨톤에게 어울리는 컬러 팔레트</h2>
        <div class="swatch-strip">
            <div class="sw" style="background:#12182A"><span style="color:#FFFFFF">퓨어 블랙</span></div>
            <div class="sw" style="background:#FFFFFF"><span style="color:#12182A">퓨어 화이트</span></div>
            <div class="sw" style="background:#1A1A40"><span style="color:#FFFFFF">네이비</span></div>
            <div class="sw" style="background:#7A0BC0"><span style="color:#FFFFFF">자주빛 퓨셔</span></div>
        </div>
        <p>퓨어 블랙, 화이트, 네이비, 선명한 에메랄드나 퓨셔 핑크처럼 고대비의 강렬한 컬러가 겨울 쿨톤의 얼굴을 가장 또렷하게 살려줍니다. 채도가 높고 명도 차이가 뚜렷한 컬러를 선택하는 것이 포인트입니다.</p>
        <h2>메이크업 컬러 가이드</h2>
        <ul>
            <li><strong>립 컬러</strong>: 블루 레드, 와인, 선명한 퓨셔 계열이 잘 어울림</li>
            <li><strong>블러셔</strong>: 쿨톤 핑크로 또렷한 혈색 연출</li>
            <li><strong>아이섀도우</strong>: 블랙, 그레이, 실버 등 고채도 쿨톤 섀도우 추천</li>
            <li><strong>피해야 할 컬러</strong>: 오렌지빛 코랄, 탁한 베이지</li>
        </ul>
        <h2>옷과 액세서리 스타일링</h2>
        <p>쥬얼리는 실버나 플래티넘, 화이트골드 계열이 피부를 가장 세련되게 살려줍니다. 의류 컬러는 블랙, 화이트, 네이비를 기본으로 하고, 에메랄드나 퓨셔 같은 원색 포인트를 더하면 겨울 쿨톤 특유의 카리스마가 살아납니다. 반대로 베이지나 카멜 같은 탁하고 따뜻한 뉴트럴은 얼굴을 흐릿하게 만들 수 있어 주의가 필요합니다.</p>
        <h2>겨울 쿨톤이 피해야 할 컬러</h2>
        <p>머스타드, 카키, 브라운 계열의 탁한 웜톤 컬러는 겨울 쿨톤의 선명한 이미지를 가라앉히는 경향이 있습니다. 웜톤 뉴트럴 대신 그레이나 블랙 계열의 뉴트럴을 선택하는 것이 훨씬 잘 어울립니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="summer-cool-guide.html">
                <span class="tag tag-summer">여름 쿨톤</span>
                <h3>여름 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>여름 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="autumn-warm-guide.html">
                <span class="tag tag-autumn">가을 웜톤</span>
                <h3>가을 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>가을 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러별 헤어 컬러 추천</h3>
                <p>계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/lipstick-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 컬러에 맞는 립스틱 고르는 법 | Find Your Personal Color</title>
    <meta name="description" content="계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/lipstick-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="퍼스널 컬러에 맞는 립스틱 고르는 법">
    <meta property="og:description" content="계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/lipstick-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "퍼스널 컬러에 맞는 립스틱 고르는 법",
        "description": "계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/lipstick-color-guide.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 퍼스널 컬러에 맞는 립스틱 고르는 법</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">스타일링 팁</span>
        <h1 class="serif">퍼스널 컬러에 맞는 립스틱 고르는 법</h1>
        <div class="article-meta">읽는 시간 5분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">얼굴에서 가장 먼저 시선이 가는 부위 중 하나가 입술입니다. 그만큼 립 컬러 하나만 바꿔도 전체적인 인상이 크게 달라질 수 있습니다.</p>
        <h2>왜 립 컬러가 인상을 가장 크게 바꿀까</h2>
        <p>입술은 피부 면적 대비 색이 진하고 시선이 집중되는 부위라, 언더톤과 맞지 않는 컬러를 사용하면 얼굴 전체가 부자연스러워 보이기 쉽습니다. 반대로 맞는 컬러를 찾으면 화장을 많이 하지 않아도 생기 있어 보이는 효과를 낼 수 있습니다.</p>
        <h2>계절별 추천 립 컬러</h2>
        <ul>
            <li><strong>봄 웜톤</strong>: 코랄, 살몬 핑크, 오렌지빛 레드</li>
            <li><strong>여름 쿨톤</strong>: 로즈 핑크, 모브, 라즈베리</li>
            <li><strong>가을 웜톤</strong>: 브릭 레드, 테라코타, 브라운 계열</li>
            <li><strong>겨울 쿨톤</strong>: 블루 레드, 와인, 선명한 퓨셔</li>
        </ul>
        <h2>질감(매트·글로시)도 고려해야 할까</h2>
        <p>톤만큼 중요한 것이 질감입니다. 매트 텍스처는 컬러가 더 선명하고 진하게 표현되어 겨울 쿨톤이나 가을 웜톤처럼 또렷한 이미지에 잘 어울리고, 글로시하고 촉촉한 텍스처는 화사하고 물오른 느낌을 줘 봄 웜톤이나 여름 쿨톤에 잘 맞는 경향이 있습니다.</p>
        <h2>매장에서 실패 없이 고르는 팁</h2>
        <p>매장 조명은 실제와 다르게 보일 수 있으므로, 가능하면 자연광이 드는 곳에서 손등이 아닌 입술에 직접 발라보고 확인하세요. 또한 같은 색상 계열이라도 브랜드마다 미묘하게 다르니, 리뷰 사진보다는 직접 발색을 확인하는 것이 가장 정확합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러별 헤어 컬러 추천</h3>
                <p>계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</h3>
                <p>면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">봄 웜톤</span>
                <h3>봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/hair-color-guide.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 컬러별 헤어 컬러 추천 | Find Your Personal Color</title>
    <meta name="description" content="계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/hair-color-guide.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="퍼스널 컬러별 헤어 컬러 추천">
    <meta property="og:description" content="계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/hair-color-guide.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "퍼스널 컬러별 헤어 컬러 추천",
        "description": "계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/hair-color-guide.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 퍼스널 컬러별 헤어 컬러 추천</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">스타일링 팁</span>
        <h1 class="serif">퍼스널 컬러별 헤어 컬러 추천</h1>
        <div class="article-meta">읽는 시간 5분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">헤어 컬러는 얼굴 전체를 감싸는 만큼, 퍼스널 컬러와 맞지 않으면 안색 전체에 영향을 줄 수 있습니다. 반대로 잘 맞는 헤어 컬러는 얼굴을 환하고 생기 있어 보이게 만들어줍니다.</p>
        <h2>헤어 컬러가 얼굴에 미치는 영향</h2>
        <p>머리카락은 얼굴 주변을 감싸는 큰 면적의 색이기 때문에, 반사되는 빛이 피부 톤에 직접적인 영향을 줍니다. 언더톤과 반대되는 헤어 컬러를 선택하면 피부가 칙칙하거나 창백해 보일 수 있습니다.</p>
        <h2>계절별 추천 헤어 컬러</h2>
        <ul>
            <li><strong>봄 웜톤</strong>: 밝은 브라운, 골드빛 브라운, 허니 블론드</li>
            <li><strong>여름 쿨톤</strong>: 애쉬 브라운, 그레이시 브라운</li>
            <li><strong>가을 웜톤</strong>: 다크 브라운, 카멜, 초콜릿 브라운</li>
            <li><strong>겨울 쿨톤</strong>: 진한 블랙, 애쉬 다크 브라운</li>
        </ul>
        <h2>염색 전에 확인해야 할 것들</h2>
        <p>염색은 한 번 하면 되돌리기 어려운 만큼, 컬러 견본을 실제 얼굴 옆에 대보고 피부와의 조화를 미리 확인하는 것이 좋습니다. 또한 밝은 컬러일수록 유지 관리(뿌리 염색 주기, 손상 케어)가 더 자주 필요하다는 점도 고려해야 합니다.</p>
        <h2>브릿지·포인트 컬러 활용법</h2>
        <p>전체 염색이 부담스럽다면, 얼굴 라인 주변에만 밝은 브릿지 컬러를 넣는 것도 좋은 방법입니다. 이렇게 하면 얼굴 톤에 미치는 영향은 유지하면서도, 훨씬 적은 리스크로 분위기를 바꿀 수 있습니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러에 맞는 립스틱 고르는 법</h3>
                <p>계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</h3>
                <p>면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">겨울 쿨톤</span>
                <h3>겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/interview-wedding-styling.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>면접·결혼식처럼 중요한 날, 완벽한 룩 만들기 | Find Your Personal Color</title>
    <meta name="description" content="면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/interview-wedding-styling.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="면접·결혼식처럼 중요한 날, 완벽한 룩 만들기">
    <meta property="og:description" content="면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/interview-wedding-styling.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "면접·결혼식처럼 중요한 날, 완벽한 룩 만들기",
        "description": "면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/interview-wedding-styling.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</div>

    <div class="wrap article-header">
        <span class="tag tag-styling">스타일링 팁</span>
        <h1 class="serif">면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</h1>
        <div class="article-meta">읽는 시간 6분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">중요한 자리일수록 컬러 선택의 영향력이 커집니다. 평소보다 조금 더 신경 써서 퍼스널 컬러를 활용하면, 자연스럽게 좋은 인상을 남길 수 있습니다.</p>
        <h2>왜 중요한 날엔 컬러 선택이 더 중요할까</h2>
        <p>짧은 시간 안에 좋은 인상을 남겨야 하는 자리에서는, 옷과 메이크업 컬러가 표정이나 말투 못지않게 큰 역할을 합니다. 얼굴을 화사하고 생기 있어 보이게 하는 컬러를 입으면 실제보다 더 자신감 있어 보이는 효과가 있습니다.</p>
        <h2>면접룩 컬러 가이드</h2>
        <p>면접에서는 신뢰감을 주는 것이 중요합니다. 웜톤(봄·가을)이라면 아이보리나 카멜 베이스에 이너로 포인트 컬러를, 쿨톤(여름·겨울)이라면 화이트나 네이비 베이스에 쿨톤 이너를 매치하면 단정하면서도 얼굴이 화사해 보이는 효과를 낼 수 있습니다.</p>
        <h2>하객룩·축하 자리 컬러 가이드</h2>
        <p>하객룩은 튀지 않으면서도 화사해 보이는 것이 핵심입니다. 봄 웜톤은 코랄이나 라이트 카멜, 여름 쿨톤은 라벤더나 더스티 핑크, 가을 웜톤은 테라코타나 카키, 겨울 쿨톤은 네이비나 버건디 계열의 원피스가 잘 어울립니다.</p>
        <h2>사진이 예쁘게 나오는 컬러 조합 팁</h2>
        <p>사진에서는 실물보다 색이 다소 차분하게 표현되는 경향이 있어, 평소보다 살짝 채도가 있는 컬러를 선택하는 것이 좋습니다. 또한 얼굴과 가까운 상의 컬러가 결과에 가장 큰 영향을 주므로, 하의나 액세서리보다 상의 컬러 선택에 더 신경 쓰는 것을 추천합니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="lipstick-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러에 맞는 립스틱 고르는 법</h3>
                <p>계절별로 어울리는 립 컬러부터, 매장에서 실패 없이 립스틱을 고르는 실전 테스트 방법까지 소개합니다.</p>
            </a>
            <a class="article-card" href="hair-color-guide.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>퍼스널 컬러별 헤어 컬러 추천</h3>
                <p>계절 타입별로 어울리는 헤어 컬러와, 염색 전에 꼭 확인해야 할 것들을 정리했습니다.</p>
            </a>
            <a class="article-card" href="photo-tips-for-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</h3>
                <p>AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/photo-tips-for-diagnosis.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁 | Find Your Personal Color</title>
    <meta name="description" content="AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/photo-tips-for-diagnosis.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁">
    <meta property="og:description" content="AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/photo-tips-for-diagnosis.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁",
        "description": "AI 진단 정확도를 좌우하는 조명, 각도, 촬영 환경을 실전 체크리스트로 정리했습니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/photo-tips-for-diagnosis.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</div>

    <div class="wrap article-header">
        <span class="tag tag-basic">기초 가이드</span>
        <h1 class="serif">정확한 퍼스널 컬러 진단을 위한 사진 촬영 팁</h1>
        <div class="article-meta">읽는 시간 4분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">AI 퍼스널 컬러 진단은 사진 한 장의 픽셀 데이터를 분석하는 방식이라, 촬영 환경이 결과의 정확도를 크게 좌우합니다. 몇 가지만 신경 써도 훨씬 신뢰도 높은 결과를 받을 수 있습니다.</p>
        <h2>조명이 가장 중요한 이유</h2>
        <p>인공조명, 특히 노란빛이 도는 백열등이나 색이 있는 조명 아래에서는 실제 피부색과 다르게 촬영될 수 있습니다. 창가에서 들어오는 자연광, 그중에서도 해가 강하지 않은 오전이나 오후 시간대가 가장 안정적입니다.</p>
        <h2>촬영 각도와 거리</h2>
        <p>얼굴 전체가 프레임 중앙에 오도록 정면에서 촬영하세요. 너무 가까우면 렌즈 왜곡이 생기고, 너무 멀면 얼굴 영역의 픽셀 데이터가 부족해질 수 있습니다. 팔 길이 정도의 거리가 적당합니다.</p>
        <h2>피해야 할 상황</h2>
        <ul>
            <li>뷰티 필터나 보정 앱 사용</li>
            <li>진한 파운데이션이나 톤업 크림 사용</li>
            <li>역광 상태에서 촬영</li>
            <li>여러 색조명이 섞인 실내</li>
        </ul>
        <h2>촬영 체크리스트</h2>
        <ul>
            <li>자연광이 드는 창가인가요?</li>
            <li>정면을 응시하고 있나요?</li>
            <li>필터나 보정이 적용되지 않았나요?</li>
            <li>화장을 최소화했나요?</li>
        </ul>
        <p>이 체크리스트만 지켜도 AI 진단의 신뢰도가 눈에 띄게 올라갑니다. 결과가 애매하게 나온다면, 다른 시간대나 장소에서 한 번 더 촬영해 비교해보는 것도 좋은 방법입니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="how-accurate-is-ai-diagnosis.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러 AI 진단, 얼마나 정확할까?</h3>
                <p>AI 퍼스널 컬러 분석이 실제로 어떻게 작동하는지, 강점과 한계는 무엇인지, 정확도를 높이는 촬영 팁까지 정리했습니다.</p>
            </a>
            <a class="article-card" href="warm-vs-cool-tone.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>웜톤 vs 쿨톤, 5가지로 구별하는 법</h3>
                <p>손목 정맥부터 주얼리 반응까지, 집에서 바로 확인할 수 있는 웜톤·쿨톤 셀프 체크 방법 5가지를 소개합니다.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</h3>
                <p>면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/color-trends-2026.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법 | Find Your Personal Color</title>
    <meta name="description" content="팬톤이 발표한 2026년 올해의 컬러부터, 트렌드 컬러를 내 퍼스널 컬러에 맞게 소화하는 실전 팁까지 소개합니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/color-trends-2026.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법">
    <meta property="og:description" content="팬톤이 발표한 2026년 올해의 컬러부터, 트렌드 컬러를 내 퍼스널 컬러에 맞게 소화하는 실전 팁까지 소개합니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/color-trends-2026.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법",
        "description": "팬톤이 발표한 2026년 올해의 컬러부터, 트렌드 컬러를 내 퍼스널 컬러에 맞게 소화하는 실전 팁까지 소개합니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/color-trends-2026.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">컬러 트렌드</span>
        <h1 class="serif">2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법</h1>
        <div class="article-meta">읽는 시간 6분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">매년 발표되는 '올해의 컬러'는 패션과 뷰티 트렌드에 큰 영향을 미칩니다. 트렌드 컬러라고 해서 무조건 따라 입기보다, 내 퍼스널 컬러에 맞게 소화하는 것이 훨씬 세련된 방법입니다.</p>
        <h2>2026년을 대표하는 컬러들</h2>
        <p>팬톤(Pantone)은 2026년 올해의 컬러로 부드럽고 차분한 오프화이트 톤인 '클라우드 댄서(Cloud Dancer)'를 선정했습니다. 한편 트렌드 예측 기관 WGSN과 컬로로(Coloro)는 딥 블루그린 계열의 '트랜스포머티브 틸(Transformative Teal)'을 올해의 컬러로 발표했습니다. 이 외에도 퓨셔, 민트, 아쿠아, 앰버 헤이즈, 세이지 그린 등이 주목받는 컬러로 꼽히고 있습니다.</p>
        <h2>트렌드 컬러, 내 퍼스널 컬러에는 어떻게 적용할까</h2>
        <p>같은 트렌드 컬러라도 톤을 조금만 조정하면 어떤 퍼스널 컬러든 활용할 수 있습니다. 예를 들어 트랜스포머티브 틸을 웜톤이라면 살짝 그린빛이 강한 버전으로, 쿨톤이라면 블루빛이 강한 버전으로 선택하면 훨씬 자연스럽게 어울립니다.</p>
        <h2>계절별 2026 트렌드 활용 팁</h2>
        <ul>
            <li><strong>봄 웜톤</strong>: 앰버 헤이즈, 웜톤 버전의 퓨셔를 포인트 컬러로</li>
            <li><strong>여름 쿨톤</strong>: 클라우드 댄서, 아쿠아, 소프트한 민트를 베이스로</li>
            <li><strong>가을 웜톤</strong>: 세이지 그린, 웜톤에 가까운 틸을 아우터에 활용</li>
            <li><strong>겨울 쿨톤</strong>: 선명한 트랜스포머티브 틸, 쿨톤 퓨셔를 과감하게</li>
        </ul>
        <p>트렌드 컬러는 매년 바뀌지만, 내 퍼스널 컬러의 기본 원칙(웜톤·쿨톤, 명도, 채도)은 변하지 않습니다. 트렌드를 좇기보다, 트렌드를 내 톤에 맞게 번역해서 활용하는 것이 가장 오래가는 스타일링 전략입니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-psychology-confidence.html">
                <span class="tag tag-trend">컬러 심리학</span>
                <h3>색이 자신감과 첫인상에 미치는 심리적 영향</h3>
                <p>색채 심리학의 기본 원리부터, 퍼스널 컬러가 자기 확신과 첫인상에 어떤 영향을 주는지 살펴봅니다.</p>
            </a>
            <a class="article-card" href="spring-warm-guide.html">
                <span class="tag tag-spring">봄 웜톤</span>
                <h3>봄 웜톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>봄 웜톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
            <a class="article-card" href="winter-cool-guide.html">
                <span class="tag tag-winter">겨울 쿨톤</span>
                <h3>겨울 쿨톤 완벽 가이드 — 어울리는 컬러, 메이크업, 옷 스타일링</h3>
                <p>겨울 쿨톤의 특징부터 어울리는 컬러 팔레트, 메이크업, 옷과 액세서리 스타일링 팁까지 한 번에 정리했습니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

cat > ko/guide/color-psychology-confidence.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>색이 자신감과 첫인상에 미치는 심리적 영향 | Find Your Personal Color</title>
    <meta name="description" content="색채 심리학의 기본 원리부터, 퍼스널 컬러가 자기 확신과 첫인상에 어떤 영향을 주는지 살펴봅니다.">
    <link rel="canonical" href="https://global-personal-color.vercel.app/ko/guide/color-psychology-confidence.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="article">
    <meta property="og:title" content="색이 자신감과 첫인상에 미치는 심리적 영향">
    <meta property="og:description" content="색채 심리학의 기본 원리부터, 퍼스널 컬러가 자기 확신과 첫인상에 어떤 영향을 주는지 살펴봅니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/guide/color-psychology-confidence.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Article",
        "headline": "색이 자신감과 첫인상에 미치는 심리적 영향",
        "description": "색채 심리학의 기본 원리부터, 퍼스널 컬러가 자기 확신과 첫인상에 어떤 영향을 주는지 살펴봅니다.",
        "author": { "@type": "Organization", "name": "Find Your Personal Color" },
        "publisher": { "@type": "Organization", "name": "Find Your Personal Color" },
        "mainEntityOfPage": "https://global-personal-color.vercel.app/ko/guide/color-psychology-confidence.html",
        "inLanguage": "ko"
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
            <a href="/ko/" class="logo">Find Your Personal Color</a>
            <div class="lang-tabs">
                <a href="/ko/" class="active">KO</a>
                <a href="/en/">EN</a>
                <a href="/ja/">JA</a>
                <a href="/es/">ES</a>
                <a href="/zh/">ZH</a>
            </div>
        </div>
    </header>
    <div class="wrap crumb"><a href="/ko/">홈</a> / <a href="/ko/guide/">가이드</a> / 색이 자신감과 첫인상에 미치는 심리적 영향</div>

    <div class="wrap article-header">
        <span class="tag tag-trend">컬러 심리학</span>
        <h1 class="serif">색이 자신감과 첫인상에 미치는 심리적 영향</h1>
        <div class="article-meta">읽는 시간 5분 &middot; Find Your Personal Color</div>
    </div>

    <div class="wrap article-body">
        <p class="lead">색은 단순히 보기 좋고 나쁨을 넘어, 우리가 스스로를 느끼는 방식과 타인에게 주는 인상에도 실질적인 영향을 미칩니다.</p>
        <h2>색채 심리학이란</h2>
        <p>색채 심리학은 특정 색이 인간의 감정과 행동에 미치는 영향을 연구하는 분야입니다. 예를 들어 빨간색은 에너지와 자신감, 파란색은 신뢰와 안정감, 초록색은 편안함과 균형을 연상시킨다는 것이 널리 알려진 색채 연상 원리입니다.</p>
        <h2>색이 타인에게 주는 인상</h2>
        <p>면접이나 첫 만남처럼 짧은 시간 안에 인상이 결정되는 상황에서는, 옷의 색이 성격이나 태도에 대한 무의식적인 신호로 작용하기도 합니다. 짙고 선명한 컬러는 자신감과 전문성을, 부드러운 파스텔 컬러는 친근함과 편안함을 전달하는 경향이 있습니다.</p>
        <h2>퍼스널 컬러와 자기 확신의 관계</h2>
        <p>흥미로운 점은, 색이 주는 심리적 효과가 '어울리는 색을 입었을 때' 훨씬 강하게 나타난다는 것입니다. 자신에게 맞는 퍼스널 컬러를 입으면 거울 속 자신의 모습에 스스로 만족하게 되고, 이는 자연스럽게 자세와 표정, 말투에도 긍정적인 영향을 줍니다.</p>
        <h2>일상에서 컬러 심리를 활용하는 법</h2>
        <p>중요한 발표나 미팅이 있는 날엔 신뢰감을 주는 톤을, 편안한 만남에는 부드러운 톤을 선택해보세요. 다만 어떤 상황이든 기본은 내 퍼스널 컬러 범위 안에서 고르는 것입니다. 아무리 심리적으로 좋은 색이라도, 내 톤과 맞지 않으면 오히려 부자연스러워 보일 수 있습니다.</p>
    </div>

    <div class="wrap">
    <div class="cta-card">
        <h3>내 퍼스널 컬러가 궁금하다면?</h3>
        <p>4가지 질문과 AI 사진 분석으로 1분 만에 무료로 진단해보세요.</p>
        <a href="/ko/#quiz-container" class="btn">지금 진단하기</a>
    </div>
    </div>

    <div class="related">
        <h3 class="serif">함께 보면 좋은 글</h3>
        <div class="article-grid related-grid">
            <a class="article-card" href="color-trends-2026.html">
                <span class="tag tag-trend">컬러 트렌드</span>
                <h3>2026년 컬러 트렌드, 내 퍼스널 컬러에 접목하는 법</h3>
                <p>팬톤이 발표한 2026년 올해의 컬러부터, 트렌드 컬러를 내 퍼스널 컬러에 맞게 소화하는 실전 팁까지 소개합니다.</p>
            </a>
            <a class="article-card" href="what-is-personal-color.html">
                <span class="tag tag-basic">기초 가이드</span>
                <h3>퍼스널 컬러란 무엇인가 — 초보자를 위한 완벽 가이드</h3>
                <p>퍼스널 컬러의 기본 개념부터 4계절 분류 원리, 정확한 진단 방법까지 처음 접하는 분들을 위해 쉽게 정리했습니다.</p>
            </a>
            <a class="article-card" href="interview-wedding-styling.html">
                <span class="tag tag-styling">스타일링 팁</span>
                <h3>면접·결혼식처럼 중요한 날, 완벽한 룩 만들기</h3>
                <p>면접룩부터 하객룩까지, 중요한 자리에서 퍼스널 컬러를 활용해 좋은 인상을 남기는 방법을 소개합니다.</p>
            </a>
        </div>
    </div>

    <footer class="wrap">
        <div class="flinks">
            <a href="/ko/about.html">서비스 소개</a>
            <a href="/ko/privacy.html">개인정보처리방침</a>
            <a href="/ko/terms.html">이용약관</a>
            <a href="/ko/contact.html">문의하기</a>
        </div>
        <div class="fcopy">&copy; 2026 Find Your Personal Color. All rights reserved.</div>
    </footer>
</body>
</html>
EOF_GPC

echo "Files written. Staging and committing..."
git add -A
git commit -m "Add ko/guide content section: 14 articles + index, nav links, sitemap update"
git push

echo "Done. Vercel should redeploy automatically via the GitHub integration."
