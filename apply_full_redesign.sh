#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- full redesign rollout
# New design system ('colorist's swatch deck') applied to ALL
# 5 languages (ko/en/ja/es/zh), real contact email wired in,
# all quiz/camera functionality + SEO metadata preserved.
# Run this from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Applying full redesign across ko/en/ja/es/zh..."
mkdir -p ko en ja es zh images

cat > index.html <<'EOF_GPC'
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Your Personal Color</title>
    <meta name="google-site-verification" content="TW7l1P1SIjiAjuRTz8jUIFztgIoJbLwDNrsLHJTykyY" />

    <!-- This page only redirects by browser language and has no indexable content of its own,
         so it is kept out of the index while still pointing crawlers to the real language pages. -->
    <meta name="robots" content="noindex, follow">

    <link rel="alternate" hreflang="ko" href="https://global-personal-color.vercel.app/ko/">
    <link rel="alternate" hreflang="en" href="https://global-personal-color.vercel.app/en/">
    <link rel="alternate" hreflang="ja" href="https://global-personal-color.vercel.app/ja/">
    <link rel="alternate" hreflang="es" href="https://global-personal-color.vercel.app/es/">
    <link rel="alternate" hreflang="zh" href="https://global-personal-color.vercel.app/zh/">
    <link rel="alternate" hreflang="x-default" href="https://global-personal-color.vercel.app/en/">

    <!-- Fallback for crawlers/browsers that don't run the redirect script -->
    <noscript>
        <meta http-equiv="refresh" content="0; url=https://global-personal-color.vercel.app/en/">
    </noscript>

    <script>
        var lang = navigator.language || navigator.userLanguage;
        lang = lang.toLowerCase();
        if (lang.indexOf('ko') !== -1) {
            window.location.href = '/ko/';
        } else if (lang.indexOf('ja') !== -1) {
            window.location.href = '/ja/';
        } else if (lang.indexOf('es') !== -1) {
            window.location.href = '/es/';
        } else if (lang.indexOf('zh') !== -1) {
            window.location.href = '/zh/';
        } else {
            window.location.href = '/en/';
        }
    </script>

    <style>
    /* CSS Injection - Responsive Layout */
    * { box-sizing: border-box; }
    .container {
        max-width: 1200px !important;
        width: 92% !important;
        margin: 0 auto !important;
        padding: 0 15px !important;
    }

    .main-layout-grid {
        display: grid !important;
        grid-template-columns: 1.1fr 0.9fr !important;
        gap: 40px !important;
        margin: 30px auto !important;
        align-items: start !important;
    }

    @media (max-width: 950px) {
        .main-layout-grid {
            grid-template-columns: 1fr !important;
            gap: 25px !important;
        }
    }

    .card {
        width: 100% !important;
        margin-bottom: 20px !important;
        padding: 30px !important;
        border-radius: 14px !important;
        box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important;
        background: #ffffff !important;
    }
    #quiz-container { margin-top: 0 !important; }
    </style>
</head>
<body>
    <p>Redirecting based on your browser language&hellip; If it doesn't work, choose a language:
        <a href="/en/">English</a> ·
        <a href="/ko/">한국어</a> ·
        <a href="/ja/">日本語</a> ·
        <a href="/es/">Español</a> ·
        <a href="/zh/">中文</a>
    </p>
</body>
</html>
EOF_GPC

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
</urlset>
EOF_GPC

cat > google6e619352a339a2d1.html <<'EOF_GPC'
google-site-verification: google6e619352a339a2d1.html
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

cat > ko/script.js <<'EOF_GPC'
const questions = [
    {
        question: "1. 골드와 실버 주얼리 중 어떤 것이 피부를 더 살려주나요?",
        answers: [
            { text: "골드를 착용했을 때 피부가 화사해 보인다.", score: { warm: 2, cool: 0 } },
            { text: "실버를 착용했을 때 피부가 투명해 보인다.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 자외선에 장시간 노출되었을 때 피부 반응은 어떤가요?",
        answers: [
            { text: "붉어지기보다는 쉽게 그을리고 어두워진다.", score: { warm: 1, cool: 0 } },
            { text: "쉽게 빨갛게 익거나 화상을 입는다.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 주변 사람들에게 자주 듣는 나의 첫인상 분위기는?",
        answers: [
            { text: "차분하고 부드러우며 따뜻한 이미지.", score: { warm: 1, cool: 0 } },
            { text: "선명하고 깨끗하며 시크한 이미지.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 본연의 머리카락 색상이나 눈동자 색은 어느 쪽에 가깝나요?",
        answers: [
            { text: "부드러운 브라운 또는 밝은 갈색 계열.", score: { warm: 1, cool: 0 } },
            { text: "선명한 블랙 또는 아주 어두운 흑갈색 계열.", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "당신은 생기발랄하고 따뜻한 에너지를 가진 봄 웜톤입니다! 피치, 코랄, 허니 카멜 컬러가 가장 베스트입니다.", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "당신은 맑고 청량하며 우아한 아우라를 지닌 여름 쿨톤입니다! 라벤더와 스카이 블루가 찰떡입니다.", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "당신은 깊고 풍부하며 고급스러운 분위기를 풍기는 가을 웜톤입니다! 카키, 버건디 계열이 매력을 극대화합니다.", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "당신은 모던하고 선명하며 카리스마 있는 분위기를 가진 겨울 쿨톤입니다! 퓨어 블랙, 화이트, 네이비가 이목구비를 살려줍니다.", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };
let localStream = null;

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

const triggerFileBtn = document.getElementById('trigger-file-btn');
const imageFileInput = document.getElementById('image-file-input');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
    stopCamera();
    currentQuestionIndex = 0;
    userScores = { warm: 0, cool: 0 };
    startView.classList.add('hidden');
    resultView.classList.add('hidden');
    questionView.classList.remove('hidden');
    showQuestion();
}

function showQuestion() {
    resetState();
    const currentQuestion = questions[currentQuestionIndex];
    questionText.innerText = currentQuestion.question;
    progressBar.style.width = `${(currentQuestionIndex / questions.length) * 100}%`;

    currentQuestion.answers.forEach(answer => {
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        button.addEventListener('click', () => selectAnswer(answer.score));
        answerButtons.appendChild(button);
    });
}

function resetState() {
    while (answerButtons.firstChild) {
        answerButtons.removeChild(answerButtons.firstChild);
    }
}

function selectAnswer(score) {
    for (const key in score) {
        if (userScores.hasOwnProperty(key)) userScores[key] += score[key];
    }
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {
        showQuestion();
    } else {
        showResult();
    }
}

function showResult(forcedTone = null) {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    startView.classList.add('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (forcedTone) {
        finalTone = forcedTone;
    } else {
        if (userScores.warm >= userScores.cool) {
            finalTone = userScores.warm > 3 ? "autumn" : "spring";
        } else {
            finalTone = userScores.cool > 3 ? "winter" : "summer";
        }
    }

    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;

    document.getElementById('best-color-title').innerText = "당신을 위한 최적의 컬러 파레트";
    document.getElementById('match-guide-title').innerText = "추천 스타일링 & 매칭 가이드";
    document.getElementById('result-description').innerText = resultData.desc;

    const paletteZone = document.getElementById('color-palette-display');
    paletteZone.innerHTML = "";
    resultData.colors.forEach(clr => {
        const circle = document.createElement('div');
        circle.style.width = "50px";
        circle.style.height = "50px";
        circle.style.borderRadius = "50%";
        circle.style.backgroundColor = clr;
        circle.style.boxShadow = "0 3px 6px rgba(0,0,0,0.1)";
        paletteZone.appendChild(circle);
    });

    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
        triggerFileBtn.classList.add('hidden');
        cameraZone.classList.remove('hidden');
    } catch (err) {
        alert(camErrorMsg);
        console.error(err);
    }
});

captureBtn.addEventListener('click', () => {
    if (!localStream) return;

    cameraZone.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;

    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);

    analyzeCanvasPixels(ctx, calcCanvas.width, calcCanvas.height);
});

triggerFileBtn.addEventListener('click', () => {
    imageFileInput.click();
});

imageFileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    if (!file) return;

    stopCamera();
    initCamBtn.classList.add('hidden');
    triggerFileBtn.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const img = new Image();
    img.src = URL.createObjectURL(file);
    img.onload = () => {
        const ctx = calcCanvas.getContext('2d');
        const maxDim = 640;
        let w = img.width;
        let h = img.height;
        if (w > maxDim || h > maxDim) {
            if (w > h) { h = (maxDim / w) * h; w = maxDim; }
            else { w = (maxDim / h) * w; h = maxDim; }
        }

        calcCanvas.width = w;
        calcCanvas.height = h;
        ctx.drawImage(img, 0, 0, w, h);

        analyzeCanvasPixels(ctx, w, h);
        URL.revokeObjectURL(img.src);
        imageFileInput.value = "";
    };
});

function analyzeCanvasPixels(ctx, width, height) {
    const sampleWidth = Math.min(80, width);
    const sampleHeight = Math.min(80, height);
    const sampleX = Math.floor(width / 2) - Math.floor(sampleWidth / 2);
    const sampleY = Math.floor(height / 2) - Math.floor(sampleHeight / 2);

    const imgData = ctx.getImageData(sampleX, sampleY, sampleWidth, sampleHeight);
    const data = imgData.data;

    let rSum = 0, gSum = 0, bSum = 0, totalPixels = 0;
    for (let i = 0; i < data.length; i += 4) {
        rSum += data[i];
        gSum += data[i+1];
        bSum += data[i+2];
        totalPixels++;
    }

    const avgR = rSum / totalPixels;
    const avgG = gSum / totalPixels;
    const avgB = bSum / totalPixels;

    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let computedTone = "spring";

    if (warmValue > 35) {
        computedTone = avgR > 180 ? "spring" : "autumn";
    } else {
        computedTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }

    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        triggerFileBtn.classList.remove('hidden');
        showResult(computedTone);
    }, 1300);
}

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
    triggerFileBtn.classList.remove('hidden');
}
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

cat > en/script.js <<'EOF_GPC'
const questions = [
    {
        question: "1. Which looks better on you, gold or silver accessories?",
        answers: [
            { text: "Gold items make my skin look bright and warm.", score: { warm: 2, cool: 0 } },
            { text: "Silver items look sophisticated and clear.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. How does your skin react to prolonged sun exposure?",
        answers: [
            { text: "It tans easily and turns darker.", score: { warm: 1, cool: 0 } },
            { text: "It gets red or sunburned easily.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. What kind of first impression vibe do you usually get?",
        answers: [
            { text: "Calm, soft, warm, or friendly image.", score: { warm: 1, cool: 0 } },
            { text: "Clear, clean, sophisticated, or chic image.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. What is your natural hair or eye color closer to?",
        answers: [
            { text: "Soft brown or light warm brown tone.", score: { warm: 1, cool: 0 } },
            { text: "Sharp black or very dark charcoal tone.", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "You possess a vibrant and warm energy! Peach, coral, and honey camel are your absolute best colors.", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "You have a clear, refreshing, and elegant aura! Lavender and sky blue suit you perfectly.", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "You project a deep, rich, and luxurious atmosphere! Earthy natural colors like khaki and deep burgundy maximize your charm.", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "You carry a modern, sharp, and charismatic vibe! Pure black, crisp white, and vivid tones like deep navy make your features striking.", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };
let localStream = null;

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

const triggerFileBtn = document.getElementById('trigger-file-btn');
const imageFileInput = document.getElementById('image-file-input');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
    stopCamera();
    currentQuestionIndex = 0;
    userScores = { warm: 0, cool: 0 };
    startView.classList.add('hidden');
    resultView.classList.add('hidden');
    questionView.classList.remove('hidden');
    showQuestion();
}

function showQuestion() {
    resetState();
    const currentQuestion = questions[currentQuestionIndex];
    questionText.innerText = currentQuestion.question;
    progressBar.style.width = `${(currentQuestionIndex / questions.length) * 100}%`;

    currentQuestion.answers.forEach(answer => {
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        button.addEventListener('click', () => selectAnswer(answer.score));
        answerButtons.appendChild(button);
    });
}

function resetState() {
    while (answerButtons.firstChild) {
        answerButtons.removeChild(answerButtons.firstChild);
    }
}

function selectAnswer(score) {
    for (const key in score) {
        if (userScores.hasOwnProperty(key)) userScores[key] += score[key];
    }
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {
        showQuestion();
    } else {
        showResult();
    }
}

function showResult(forcedTone = null) {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    startView.classList.add('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (forcedTone) {
        finalTone = forcedTone;
    } else {
        if (userScores.warm >= userScores.cool) {
            finalTone = userScores.warm > 3 ? "autumn" : "spring";
        } else {
            finalTone = userScores.cool > 3 ? "winter" : "summer";
        }
    }

    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;

    document.getElementById('best-color-title').innerText = "Best Color Palette for You";
    document.getElementById('match-guide-title').innerText = "Styling & Matching Guide";
    document.getElementById('result-description').innerText = resultData.desc;

    const paletteZone = document.getElementById('color-palette-display');
    paletteZone.innerHTML = "";
    resultData.colors.forEach(clr => {
        const circle = document.createElement('div');
        circle.style.width = "50px";
        circle.style.height = "50px";
        circle.style.borderRadius = "50%";
        circle.style.backgroundColor = clr;
        circle.style.boxShadow = "0 3px 6px rgba(0,0,0,0.1)";
        paletteZone.appendChild(circle);
    });

    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
        triggerFileBtn.classList.add('hidden');
        cameraZone.classList.remove('hidden');
    } catch (err) {
        alert(camErrorMsg);
        console.error(err);
    }
});

captureBtn.addEventListener('click', () => {
    if (!localStream) return;

    cameraZone.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;

    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);

    analyzeCanvasPixels(ctx, calcCanvas.width, calcCanvas.height);
});

triggerFileBtn.addEventListener('click', () => {
    imageFileInput.click();
});

imageFileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    if (!file) return;

    stopCamera();
    initCamBtn.classList.add('hidden');
    triggerFileBtn.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const img = new Image();
    img.src = URL.createObjectURL(file);
    img.onload = () => {
        const ctx = calcCanvas.getContext('2d');
        const maxDim = 640;
        let w = img.width;
        let h = img.height;
        if (w > maxDim || h > maxDim) {
            if (w > h) { h = (maxDim / w) * h; w = maxDim; }
            else { w = (maxDim / h) * w; h = maxDim; }
        }

        calcCanvas.width = w;
        calcCanvas.height = h;
        ctx.drawImage(img, 0, 0, w, h);

        analyzeCanvasPixels(ctx, w, h);
        URL.revokeObjectURL(img.src);
        imageFileInput.value = "";
    };
});

function analyzeCanvasPixels(ctx, width, height) {
    const sampleWidth = Math.min(80, width);
    const sampleHeight = Math.min(80, height);
    const sampleX = Math.floor(width / 2) - Math.floor(sampleWidth / 2);
    const sampleY = Math.floor(height / 2) - Math.floor(sampleHeight / 2);

    const imgData = ctx.getImageData(sampleX, sampleY, sampleWidth, sampleHeight);
    const data = imgData.data;

    let rSum = 0, gSum = 0, bSum = 0, totalPixels = 0;
    for (let i = 0; i < data.length; i += 4) {
        rSum += data[i];
        gSum += data[i+1];
        bSum += data[i+2];
        totalPixels++;
    }

    const avgR = rSum / totalPixels;
    const avgG = gSum / totalPixels;
    const avgB = bSum / totalPixels;

    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let computedTone = "spring";

    if (warmValue > 35) {
        computedTone = avgR > 180 ? "spring" : "autumn";
    } else {
        computedTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }

    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        triggerFileBtn.classList.remove('hidden');
        showResult(computedTone);
    }, 1300);
}

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
    triggerFileBtn.classList.remove('hidden');
}
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

cat > ja/script.js <<'EOF_GPC'
const questions = [
    {
        question: "1. ゴールドとシルバーのアクセサリー、どちらがより肌を引き立てますか？",
        answers: [
            { text: "ゴールドを着けると肌が明るく健康的に見える。", score: { warm: 2, cool: 0 } },
            { text: "シルバーを着けると肌が澄んで見える。", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 長時間紫外線に当たったとき、肌はどのように反応しますか？",
        answers: [
            { text: "赤くなるより先に、こんがり日焼けして色黒になる。", score: { warm: 1, cool: 0 } },
            { text: "すぐに赤くなったり、日焼けで肌が痛くなりやすい。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 周囲からよく言われる第一印象の雰囲気は？",
        answers: [
            { text: "穏やかで柔らかく、温かみのあるイメージ。", score: { warm: 1, cool: 0 } },
            { text: "はっきりとして清潔感のある、シックなイメージ。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 生まれつきの髪や瞳の色はどちらに近いですか？",
        answers: [
            { text: "柔らかいブラウンや明るい茶色系。", score: { warm: 1, cool: 0 } },
            { text: "はっきりとしたブラックや、とても暗い黒褐色系。", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "あなたは生き生きとした温かいエネルギーを持つスプリングウォームです！ピーチ、コーラル、ハニーキャメルカラーが最もよく似合います。", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "あなたは澄んでいて爽やかで、上品なオーラを持つサマークールです！ラベンダーとスカイブルーがぴったりです。", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "あなたは深みがあり豊かで、上質な雰囲気を漂わせるオータムウォームです！カーキやバーガンディ系の色が魅力を最大限に引き出します。", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "あなたはモダンで鮮明、カリスマ性のある雰囲気を持つウィンタークールです！ピュアブラック、ホワイト、ネイビーが顔立ちを引き立てます。", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };
let localStream = null;

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

const triggerFileBtn = document.getElementById('trigger-file-btn');
const imageFileInput = document.getElementById('image-file-input');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
    stopCamera();
    currentQuestionIndex = 0;
    userScores = { warm: 0, cool: 0 };
    startView.classList.add('hidden');
    resultView.classList.add('hidden');
    questionView.classList.remove('hidden');
    showQuestion();
}

function showQuestion() {
    resetState();
    const currentQuestion = questions[currentQuestionIndex];
    questionText.innerText = currentQuestion.question;
    progressBar.style.width = `${(currentQuestionIndex / questions.length) * 100}%`;

    currentQuestion.answers.forEach(answer => {
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        button.addEventListener('click', () => selectAnswer(answer.score));
        answerButtons.appendChild(button);
    });
}

function resetState() {
    while (answerButtons.firstChild) {
        answerButtons.removeChild(answerButtons.firstChild);
    }
}

function selectAnswer(score) {
    for (const key in score) {
        if (userScores.hasOwnProperty(key)) userScores[key] += score[key];
    }
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {
        showQuestion();
    } else {
        showResult();
    }
}

function showResult(forcedTone = null) {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    startView.classList.add('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (forcedTone) {
        finalTone = forcedTone;
    } else {
        if (userScores.warm >= userScores.cool) {
            finalTone = userScores.warm > 3 ? "autumn" : "spring";
        } else {
            finalTone = userScores.cool > 3 ? "winter" : "summer";
        }
    }

    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;

    document.getElementById('best-color-title').innerText = "あなたに最適なカラーパレット";
    document.getElementById('match-guide-title').innerText = "おすすめスタイリング＆マッチングガイド";
    document.getElementById('result-description').innerText = resultData.desc;

    const paletteZone = document.getElementById('color-palette-display');
    paletteZone.innerHTML = "";
    resultData.colors.forEach(clr => {
        const circle = document.createElement('div');
        circle.style.width = "50px";
        circle.style.height = "50px";
        circle.style.borderRadius = "50%";
        circle.style.backgroundColor = clr;
        circle.style.boxShadow = "0 3px 6px rgba(0,0,0,0.1)";
        paletteZone.appendChild(circle);
    });

    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
        triggerFileBtn.classList.add('hidden');
        cameraZone.classList.remove('hidden');
    } catch (err) {
        alert(camErrorMsg);
        console.error(err);
    }
});

captureBtn.addEventListener('click', () => {
    if (!localStream) return;

    cameraZone.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;

    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);

    analyzeCanvasPixels(ctx, calcCanvas.width, calcCanvas.height);
});

triggerFileBtn.addEventListener('click', () => {
    imageFileInput.click();
});

imageFileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    if (!file) return;

    stopCamera();
    initCamBtn.classList.add('hidden');
    triggerFileBtn.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const img = new Image();
    img.src = URL.createObjectURL(file);
    img.onload = () => {
        const ctx = calcCanvas.getContext('2d');
        const maxDim = 640;
        let w = img.width;
        let h = img.height;
        if (w > maxDim || h > maxDim) {
            if (w > h) { h = (maxDim / w) * h; w = maxDim; }
            else { w = (maxDim / h) * w; h = maxDim; }
        }

        calcCanvas.width = w;
        calcCanvas.height = h;
        ctx.drawImage(img, 0, 0, w, h);

        analyzeCanvasPixels(ctx, w, h);
        URL.revokeObjectURL(img.src);
        imageFileInput.value = "";
    };
});

function analyzeCanvasPixels(ctx, width, height) {
    const sampleWidth = Math.min(80, width);
    const sampleHeight = Math.min(80, height);
    const sampleX = Math.floor(width / 2) - Math.floor(sampleWidth / 2);
    const sampleY = Math.floor(height / 2) - Math.floor(sampleHeight / 2);

    const imgData = ctx.getImageData(sampleX, sampleY, sampleWidth, sampleHeight);
    const data = imgData.data;

    let rSum = 0, gSum = 0, bSum = 0, totalPixels = 0;
    for (let i = 0; i < data.length; i += 4) {
        rSum += data[i];
        gSum += data[i+1];
        bSum += data[i+2];
        totalPixels++;
    }

    const avgR = rSum / totalPixels;
    const avgG = gSum / totalPixels;
    const avgB = bSum / totalPixels;

    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let computedTone = "spring";

    if (warmValue > 35) {
        computedTone = avgR > 180 ? "spring" : "autumn";
    } else {
        computedTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }

    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        triggerFileBtn.classList.remove('hidden');
        showResult(computedTone);
    }, 1300);
}

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
    triggerFileBtn.classList.remove('hidden');
}
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

cat > es/script.js <<'EOF_GPC'
const questions = [
    {
        question: "1. ¿Qué te queda mejor, accesorios de oro o plata?",
        answers: [
            { text: "El oro hace que mi piel luce brillante.", score: { warm: 2, cool: 0 } },
            { text: "La plata me da un aspecto sofisticado.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. ¿Cómo reacciona tu piel al sol?",
        answers: [
            { text: "Me bronceo fácilmente.", score: { warm: 1, cool: 0 } },
            { text: "Me enrojezco o me quemo fácilmente.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. ¿Cuál es tu primera impresión habitual?",
        answers: [
            { text: "Imagen tranquila, suave y cálida.", score: { warm: 1, cool: 0 } },
            { text: "Imagen clara, limpia y sofisticada.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. ¿De qué color es tu cabello u ojos naturales?",
        answers: [
            { text: "Tono marrón suave o castaño claro.", score: { warm: 1, cool: 0 } },
            { text: "Negro intenso o tono carbón muy oscuro.", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "¡Tienes una energía vibrante (Primavera)! El melocotón y coral son tus mejores colores.", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "¡Tienes un aura clara (Verano)! La lavanda y el azul cielo te quedan perfectos.", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "¡Proyectas una atmósfera profunda (Otoño)! Los colores naturales terrosos maximizan tu encanto.", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "¡Tienes una vibra moderna (Invierno)! El negro puro y tonos vivos hacen que tus rasgos destaquen.", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };
let localStream = null;

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

const triggerFileBtn = document.getElementById('trigger-file-btn');
const imageFileInput = document.getElementById('image-file-input');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
    stopCamera();
    currentQuestionIndex = 0;
    userScores = { warm: 0, cool: 0 };
    startView.classList.add('hidden');
    resultView.classList.add('hidden');
    questionView.classList.remove('hidden');
    showQuestion();
}

function showQuestion() {
    resetState();
    const currentQuestion = questions[currentQuestionIndex];
    questionText.innerText = currentQuestion.question;
    progressBar.style.width = `${(currentQuestionIndex / questions.length) * 100}%`;

    currentQuestion.answers.forEach(answer => {
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        button.addEventListener('click', () => selectAnswer(answer.score));
        answerButtons.appendChild(button);
    });
}

function resetState() {
    while (answerButtons.firstChild) {
        answerButtons.removeChild(answerButtons.firstChild);
    }
}

function selectAnswer(score) {
    for (const key in score) {
        if (userScores.hasOwnProperty(key)) userScores[key] += score[key];
    }
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {
        showQuestion();
    } else {
        showResult();
    }
}

function showResult(forcedTone = null) {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    startView.classList.add('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (forcedTone) {
        finalTone = forcedTone;
    } else {
        if (userScores.warm >= userScores.cool) {
            finalTone = userScores.warm > 3 ? "autumn" : "spring";
        } else {
            finalTone = userScores.cool > 3 ? "winter" : "summer";
        }
    }

    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;

    document.getElementById('best-color-title').innerText = "Tu Mejor Paleta de Colores";
    document.getElementById('match-guide-title').innerText = "Guía de Estilo";
    document.getElementById('result-description').innerText = resultData.desc;

    const paletteZone = document.getElementById('color-palette-display');
    paletteZone.innerHTML = "";
    resultData.colors.forEach(clr => {
        const circle = document.createElement('div');
        circle.style.width = "50px";
        circle.style.height = "50px";
        circle.style.borderRadius = "50%";
        circle.style.backgroundColor = clr;
        circle.style.boxShadow = "0 3px 6px rgba(0,0,0,0.1)";
        paletteZone.appendChild(circle);
    });

    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
        triggerFileBtn.classList.add('hidden');
        cameraZone.classList.remove('hidden');
    } catch (err) {
        alert(camErrorMsg);
        console.error(err);
    }
});

captureBtn.addEventListener('click', () => {
    if (!localStream) return;

    cameraZone.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;

    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);

    analyzeCanvasPixels(ctx, calcCanvas.width, calcCanvas.height);
});

triggerFileBtn.addEventListener('click', () => {
    imageFileInput.click();
});

imageFileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    if (!file) return;

    stopCamera();
    initCamBtn.classList.add('hidden');
    triggerFileBtn.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const img = new Image();
    img.src = URL.createObjectURL(file);
    img.onload = () => {
        const ctx = calcCanvas.getContext('2d');
        const maxDim = 640;
        let w = img.width;
        let h = img.height;
        if (w > maxDim || h > maxDim) {
            if (w > h) { h = (maxDim / w) * h; w = maxDim; }
            else { w = (maxDim / h) * w; h = maxDim; }
        }

        calcCanvas.width = w;
        calcCanvas.height = h;
        ctx.drawImage(img, 0, 0, w, h);

        analyzeCanvasPixels(ctx, w, h);
        URL.revokeObjectURL(img.src);
        imageFileInput.value = "";
    };
});

function analyzeCanvasPixels(ctx, width, height) {
    const sampleWidth = Math.min(80, width);
    const sampleHeight = Math.min(80, height);
    const sampleX = Math.floor(width / 2) - Math.floor(sampleWidth / 2);
    const sampleY = Math.floor(height / 2) - Math.floor(sampleHeight / 2);

    const imgData = ctx.getImageData(sampleX, sampleY, sampleWidth, sampleHeight);
    const data = imgData.data;

    let rSum = 0, gSum = 0, bSum = 0, totalPixels = 0;
    for (let i = 0; i < data.length; i += 4) {
        rSum += data[i];
        gSum += data[i+1];
        bSum += data[i+2];
        totalPixels++;
    }

    const avgR = rSum / totalPixels;
    const avgG = gSum / totalPixels;
    const avgB = bSum / totalPixels;

    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let computedTone = "spring";

    if (warmValue > 35) {
        computedTone = avgR > 180 ? "spring" : "autumn";
    } else {
        computedTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }

    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        triggerFileBtn.classList.remove('hidden');
        showResult(computedTone);
    }, 1300);
}

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
    triggerFileBtn.classList.remove('hidden');
}
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

cat > zh/script.js <<'EOF_GPC'
const questions = [
    {
        question: "1. 金色和银色饰品，哪一种更衬你的肤色？",
        answers: [
            { text: "佩戴金色饰品时，肤色显得更加红润有光泽。", score: { warm: 2, cool: 0 } },
            { text: "佩戴银色饰品时，肤色显得更加通透干净。", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 长时间日晒后，你的皮肤通常会有什么反应？",
        answers: [
            { text: "不容易发红，但容易晒黑。", score: { warm: 1, cool: 0 } },
            { text: "容易晒红，甚至晒伤。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 身边的人常说你给人的第一印象是？",
        answers: [
            { text: "沉稳柔和，给人温暖亲切的感觉。", score: { warm: 1, cool: 0 } },
            { text: "清爽利落，给人干练精致的感觉。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 你天生的发色或瞳色更接近以下哪一种？",
        answers: [
            { text: "柔和的棕色或偏亮的浅棕色。", score: { warm: 1, cool: 0 } },
            { text: "纯正的黑色或非常深的黑棕色。", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "你拥有活力四射、温暖明媚的春季暖色气质！蜜桃色、珊瑚色和蜂蜜驼色最能衬托你的魅力。", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "你拥有清透、优雅、气质出众的夏季冷色魅力！薰衣草紫和天空蓝与你绝配。", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "你拥有深邃、丰盈、高级质感的秋季暖色气场！卡其色和酒红色系能将你的魅力发挥到极致。", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "你拥有摩登、鲜明、极具个人魅力的冬季冷色气质！纯黑、纯白与藏青色能让你的五官更加立体出众。", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };
let localStream = null;

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

const triggerFileBtn = document.getElementById('trigger-file-btn');
const imageFileInput = document.getElementById('image-file-input');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
    stopCamera();
    currentQuestionIndex = 0;
    userScores = { warm: 0, cool: 0 };
    startView.classList.add('hidden');
    resultView.classList.add('hidden');
    questionView.classList.remove('hidden');
    showQuestion();
}

function showQuestion() {
    resetState();
    const currentQuestion = questions[currentQuestionIndex];
    questionText.innerText = currentQuestion.question;
    progressBar.style.width = `${(currentQuestionIndex / questions.length) * 100}%`;

    currentQuestion.answers.forEach(answer => {
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        button.addEventListener('click', () => selectAnswer(answer.score));
        answerButtons.appendChild(button);
    });
}

function resetState() {
    while (answerButtons.firstChild) {
        answerButtons.removeChild(answerButtons.firstChild);
    }
}

function selectAnswer(score) {
    for (const key in score) {
        if (userScores.hasOwnProperty(key)) userScores[key] += score[key];
    }
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {
        showQuestion();
    } else {
        showResult();
    }
}

function showResult(forcedTone = null) {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    startView.classList.add('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (forcedTone) {
        finalTone = forcedTone;
    } else {
        if (userScores.warm >= userScores.cool) {
            finalTone = userScores.warm > 3 ? "autumn" : "spring";
        } else {
            finalTone = userScores.cool > 3 ? "winter" : "summer";
        }
    }

    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;

    document.getElementById('best-color-title').innerText = "为你推荐的最佳色彩搭配";
    document.getElementById('match-guide-title').innerText = "推荐穿搭与配色指南";
    document.getElementById('result-description').innerText = resultData.desc;

    const paletteZone = document.getElementById('color-palette-display');
    paletteZone.innerHTML = "";
    resultData.colors.forEach(clr => {
        const circle = document.createElement('div');
        circle.style.width = "50px";
        circle.style.height = "50px";
        circle.style.borderRadius = "50%";
        circle.style.backgroundColor = clr;
        circle.style.boxShadow = "0 3px 6px rgba(0,0,0,0.1)";
        paletteZone.appendChild(circle);
    });

    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
        triggerFileBtn.classList.add('hidden');
        cameraZone.classList.remove('hidden');
    } catch (err) {
        alert(camErrorMsg);
        console.error(err);
    }
});

captureBtn.addEventListener('click', () => {
    if (!localStream) return;

    cameraZone.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;

    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);

    analyzeCanvasPixels(ctx, calcCanvas.width, calcCanvas.height);
});

triggerFileBtn.addEventListener('click', () => {
    imageFileInput.click();
});

imageFileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    if (!file) return;

    stopCamera();
    initCamBtn.classList.add('hidden');
    triggerFileBtn.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const img = new Image();
    img.src = URL.createObjectURL(file);
    img.onload = () => {
        const ctx = calcCanvas.getContext('2d');
        const maxDim = 640;
        let w = img.width;
        let h = img.height;
        if (w > maxDim || h > maxDim) {
            if (w > h) { h = (maxDim / w) * h; w = maxDim; }
            else { w = (maxDim / h) * w; h = maxDim; }
        }

        calcCanvas.width = w;
        calcCanvas.height = h;
        ctx.drawImage(img, 0, 0, w, h);

        analyzeCanvasPixels(ctx, w, h);
        URL.revokeObjectURL(img.src);
        imageFileInput.value = "";
    };
});

function analyzeCanvasPixels(ctx, width, height) {
    const sampleWidth = Math.min(80, width);
    const sampleHeight = Math.min(80, height);
    const sampleX = Math.floor(width / 2) - Math.floor(sampleWidth / 2);
    const sampleY = Math.floor(height / 2) - Math.floor(sampleHeight / 2);

    const imgData = ctx.getImageData(sampleX, sampleY, sampleWidth, sampleHeight);
    const data = imgData.data;

    let rSum = 0, gSum = 0, bSum = 0, totalPixels = 0;
    for (let i = 0; i < data.length; i += 4) {
        rSum += data[i];
        gSum += data[i+1];
        bSum += data[i+2];
        totalPixels++;
    }

    const avgR = rSum / totalPixels;
    const avgG = gSum / totalPixels;
    const avgB = bSum / totalPixels;

    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let computedTone = "spring";

    if (warmValue > 35) {
        computedTone = avgR > 180 ? "spring" : "autumn";
    } else {
        computedTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }

    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        triggerFileBtn.classList.remove('hidden');
        showResult(computedTone);
    }, 1300);
}

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
    triggerFileBtn.classList.remove('hidden');
}
EOF_GPC

cat > images/og-image.png.b64 <<'EOF_GPC'
iVBORw0KGgoAAAANSUhEUgAABLAAAAJ2CAIAAADAIuwLAABmAElEQVR4nO3dd3wUZeLH8dkkm15JISSQAIFAAoQOoXdFQEXk7hQU
excQ9HfnnXe2Oz0bNmyHHcSCglhQmoACIRB6SwiEBEjvfZPd7O7vj8VlTTazhU2yy/N5v/hjM/PMzLNTlv3uM/M8ipqKfAkAAAAA
IB63jq4AAAAAAKBjEAgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEER
CAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAA
EBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQA
AAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAE
QgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAA
BEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEA
AABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSB
EAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAA
QREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAA
AAAQFIEQAAAAAARFIAQAAAAAQXl0dAUA11O3/LGOroKI/Ba+0tFVMO+Fzw51dBVE9Pgtgzu6CuZtWDi7o6sgopnL13d0FcxLnrm4
o6sgotQNb3R0FQBXoqipyO/oOgCugRzoJJwkGZIDnYSTJENyoJNwkmRIDnQSJEPAGgRCwDKioBPqwFhIFHRCHRgLiYJOqANjIVHQ
CRELAXk8QwhYQBp0Th11XEiDzqmjjgtp0Dl11HEhDTonjgsgjxZCoFVEQZfQbk2FREGX0G5NhURBl9BuTYVEDpdAUyFgFi2EgHmk
QVfRPkeKNOgq2udIkQZdRfscKdKgq+BIAWYRCAEAAABAUARCwAyaB11LWx8vmgddS1sfL5oHXUtbHy8anVwLxwtoiUAINEcadEVt
d9RIg66o7Y4aadAVtd1RI124Io4a0AyBEAAAAAAERSAE/oDmQdfVFseO5kHX1RbHjuZB19UWx46GJtfFsQNMEQgBAAAAQFAEQgAA
AAAQFIEQuIT7RV2dY48g94u6OsceQe4XdXWOPYLcc+jqOIKAEYEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAE
RSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAATl0dEVAK4cVarG3Vnn
M4vKSmvrNVqtj1Lp7+UZ7OsdGxrcMyw4plOw0v3iTzCPr9vapNOZXYm7m8Lfy7NrSNDw7lH9oyIslndTKPy8lF2CAgZ1ixwWG+Wm
UJjObW3Bu8cO6RXe6fFvt5pOvHFI4qieXZuVTMvJ/2r/cdMpD00c0SMs2HTKhYrqg+cLzpVVltepVBqN0t3d11Pp56ns5OcTGxoc
GxocHRzg4Sbcz0/1dbUZxw/nXcipqapsatJ4enn7+Pj6+gdEREZ17hIdHtHF3cNDkqTC/Asbv1tjdg23P/Co8fWalf+rr6s1/tk1
tufYydO//PidZot07hJ9zeybzK7tUFrKkf17mk2ceNW1kdHdHLKe7nHxkiStWvG6Vqs1u2Azw0ZN6D9omPwibm5uXl7eIaHhPXr3
7dWnn+KPp7eLUmt1Xx/O1ur0Xh7ucwd1d2/xpgprVJsz8swuu2B4L+Prb47k1KubjH92DfbTaHVFNSrra3JDUmydusm+bY3pEfHV
oexmi0T4e09PaP4ZYnA4r/xofnmziRN6RXYN8lt9IMt0YnL38PjwoGYls0qrd2cXm06ZntA1wt/b7LacVt/e3b/55KWW0599+f01
67cYXru5uf324/vBQQGSJD336odfrN1kLHZ896UPCrVGM2Ti/IM7VnsqlS1XeP+jz6cdPHFg++rWtmI0e8bE/zzxoOmUBQ88ueje
m4YNTrT+fc34y6L1ny0zW5OWXnl71Sef/yBJUmuVlyRJq9VWVtVmZp37aevu7376VdfKf38AHEVRU5Hf0XUAnEXd8sfsXjazqOzT
PUcam5rG9ooZHdctxNdHo9WW1dXvy85PPXtBL0njesdcP7Cv6SJPfr+9Xq0xvF44eWR0UEBuZfW6Q+n5lTWGiUnRneePTHJ3U5gt
3y0ksKxWtSMze2/2xe9z3UOD7xk3xMuj+Q89zRaM7fSHL1t/XbtFp9dLkuSmUNwzbmjviE4t393hC4Wf7T362FWjIwP9TadXNzSu
2X8io7BUkqTIQP+r+sXFhXXy8nCvqFdlFpVtzciuaWiUJOmqxLirEuNs2Z3281v4iqNW9cJnh+xeNj/33PaN32s06oQBg/v2H+Tv
H9ikbaqpqjydcfzUiSOSJCUmDRkxZpKxfGlJ0Y/ffGZ47aFU3nL3IrOr/faLjzuFhU+YNss4RattWrXiDdMys+beEhbeudmCWq32
61UrGlT1xilXXTs3qmusw9dj8MXH7zQ2XEwmM+fMC+/c5Y8raVq14g1jIDS7SFhEZE1V5fHDaZnpxwwTIyKjp82ao1R6SrZ4/JbB
NpWXsWHhbIesJ72oMu18qeH1uJ6de4QGmC1WVte44eQFw2sPN7d5Q3uaLbb+2PlOvp7j4yIlSdqUkefuppgaH2WcaxrkpvWJ6hLo
a3idW1m37XTBDUmxAV5K+7ZloNXpm8W5mYndQv28mi2o1evXHslp0FyK/aaVMVi1/4xeL0mSpFAopsZHdQn0aVmBnPLa37IKr+sf
E+xj22lwqXrL19u3YEvJMxfbt+D9d9z48N1/Mbw+m5N33fwlpnNHDOn30fKnDK9T9x+7e/G/TecOSeq78t1nb7j10dNnLxgn7vrp
Q0OAlCRp/r1PHDlx2nSRozu/dHNzkyRJq9Xet/T51P3HWlbpmqljXn5msXG1n7z1dKNac9/S54wFtq1/LyL84n8N9zzy7z1pF1cy
YczQt1/624y/LDqfW2ixJl6eygPbVxsDodnKH0vPionufMf86268doph4qGjp+5/9Pm6eht+6bBe6oY3LBcCBCDcb/ZAW6hXa1bt
PdrY1NQjLHj2oL4RAX5KdzdfT2W3kKAbhyRc3a+X5VVIkoe7W/fQ4HvGDjUmuqN5RdtONf8N3shNoQgP8P3T0H69I0INU3LKKjee
OGP3u9Dp9Sv3HC6pqbOyfHmd6vWtqYY0GBUcsHDyyKTozn5eSg93t/AAvzG9YpZMTQ70af7VUASNDaodm3/UaNSdu0SPHDs5KLiT
u4eHl5d3WETkqPFTh4wY6/At+vlfChUnjxxoWeDs6XRtk8bTy8LhcNR6Lp9CoQgMDhk98Spj2iwuzDu0b3dbb7cdnC6pNr7ONHnt
uvw8L/0IlV5U2bJAdllNk1bv6W7VVw69Xv/rmYLqBrWjqudstu/cb3zds3t0TNdI07lTxo8wvh4+ODEwwM907qRxw/IKik3ToPXc
3d1fe25p95goy0U7jk6ny7lQ8NQL/zNmzsFJfRbe85eOrRVwxSMQAg5wPK9YpdZIkuRj7gaY8b1jvTzcrVxVgLdnQpcw45/7c8zf
zWVqcMyl7xNHLhRZuSGzVJqmD3cfMjYnytDp9R+nHKpuaDT8ed3APi3fY6C31zX9el9OfVzU+ewz6sYGSZI8vczc0paYNERp3b1V
1uvZO8G4zpysU6Y3lxqcPHogrk8/Dw8L23XUeuS5u3vc/sCjps2DMnr0vtSunn3m1OVs1xkU1zZUqi5FnaIaVZXKYcmnc4BPZ38z
DWst+Sg9YkP8HXUjd4/QS/eE55TX1muamhVIL6yMCwvwsC4QSpKk1up+ySxobLLq3mOXc+rMufzCEuOfk8cNN507efylP93d3ceP
HmI6d9K44aZ50lYB/n7vvPy4sUWuNWmHTx44km7NCktKK7bs2FuvarCmcKNa03/Mn02bB2X8tHWX8fXVU0ZZswgAuxEIAQco//1u
llNFZemFpc3menq4Pzd7SrP7RWUEmbSqVaoaLZYP9L5UvqbRni+X3UICjU9nldbWf5JyWGvpmY0D5/ILqi6mhQBvz7hwMzeaSpI0
qFtn678FXjFqaqoML/LO5+Seb97G66FUzr97ken9opfP08urZ/zFZ350Ol3G8cOmcwtyz1eUlfbtP6jd1uNAvr6X7lI2vVXVRWUW
VwX5eEYFXbpb0oGNhIOiOw2ICrGmZKif14RekT5Ka3+okufp7tYz7GLG0On1p4qqTOcWVKsqVOq+Ec0fCzRbK+PzlDWNmh1nCg13
s195duy+1Pw+ceylX0YS+/To0jnMNIyZNhj2iI3u3q3L9l02B8ITGVk63cU9GdM18vXnH1Mq5bqQePuDNSs+XWfNmk+eOrvkiWWl
ZZW2VsmiktIK4+vQkGCHrx+AKeG+qAFtwd/r4gMtWp3uw10HX9i467sjGcfzi61pamupsv7Sr63BvpZ7Tag2CY3BPvb0stArInTW
gHjjn2dLK745aOHn4UMXCo2vu4YEtdbXh9Ld/YUbprbbA4ROwsfn4td9nU67dcO6dZ9/tG/39vPZZ4zPyLWFhP6XHpY7dfKotulS
K82Jowe6RMcEh4S253rMSt35y5qV/7Npkfq6GuNr0ztaXVFjk/ZcRW2f8KA+Jp2mZJVVa3UuH3tM815myR/eUXpRZWSgT5AVT/11
CfQd2u3S/RFFNarUnBKZ8q7LtJVvSFKfoN+fzZ4yfkR5RdXyFV8a545NHuTlebFBftLYYTW1dfsPW9V2Zyp1//Flb68y/jlsUMKT
/3ePnVW3yxNL79q2/j2bFokIu/QjY2Fx859ZATgWgRBwgJ7hIaaJqLS2fufp85+kHH7q++3LtuzZkn7W+mRY3dCYYdLGOKJ7tMVF
Dl0oML4eHWe+iz+LJsTHjuhxaVtpOXnbW398UZKkcyY/CXeyIrUKpXNUN9M/q6sqTh49uG3jd198/M53a1YeOZDaFskwuFNo5O/b
bWxQZWWevLj1yorcc2cTBljbt4qj1uMoZ89kGF/36TewnbfuWFllNQpJERcW0DXYz/f35+7UTbqc8ua35rqcYB/PyICLd6s2NmnP
ll2M8dUNmtzKuoSIYCvXkxgZ3Cs80PjnmdLq4wUVMuVdVNqhE7V1Fz8E3NzcjPeFTh4/4tfdBw8ezaiourgDfby9Rg1Pujh33LCd
ew5b2YtvM59++eO6H7cZ/7xh5qS7brne/jfQ9mZMG2N8/dW3mzuwJoAICISAA0QFBUyI795yul6SCqpqNp048+KmXdmllfIradLq
csoq39950PjkzMCukRPNrdZAp9eX1NR/feDE6eJySZI83N2mJvSc2KeHvW9CunFwoumdnz8dO308v9hsSY1WZ/p4j6fVT0gKolNo
eGsPyFWUlRzat/vbLz4uKrD8dKitTNPayaMHL744dtDPP7BbdxsaaR21HoMN6z7/5N1lhn/N7kGVodfrqysrUnZsLsg9L0mSu7tH
0tCRAwaPsLigMztdXN0z1F/p7qZQSPEmsSezpEpmKVfRp/OlRsKTv3ctk15U6efp0TXYz/wy5iTHhhuzpSRJB3PLLlRY29OVq2hq
0u7ee9j456SxwyRJ6hbduXfPbtt37dfp9L+lHDTONdw12ikkKKlfvB33ixo9+/L7aYdOGP985P55U8YPlyl/mVaveO747jWGfzff
eLWVS7m5uXXv1uWZx+9LHjZAkqRGtWbFp+s+Wv1929UTgMQ4hICjzEqK7xXRadeZ86eLy1s+gFfXqPl837G/TR/TWi8Oy7ftNbxw
d1ME+nh1Cwka0T2q3+/jEMqUNywyNCZqVlK8r+fldfXhprht1MA3t+0tra2XJEkvSZ/vO/bQxBHRwS3v02t2h1vzO0b/99t+Q0w1
em72FOt71rkCDBs1oUt0zMljBwtyL+h0zX/Rb2hQ7fzlpxtuvtPd3ZH7JKZHLz//gLraGkmSKivK8i/khEVEnjl1YuDQZJtG8HPU
egxMh51I3fnL+WzLHeFuWPe58bWbm1tcfOKw0RO8zPXQ40KKalRVDerxcRdH8ugVHngkv0Kv10uSVFLbUKFSh9g7lIKTiAn29/P0
qFM3SZJUpVLnV9WH+XlnldYkRYXYdNa4KRQTekX+dDK3pvHijRU7zxZNT4ju5HtFdVm8bWfa1ZMv9pUyZuRApdJjyoQRjY3qlLSj
kiRt37n/+msmGOZOHDvUzc1twpghOp1uZ6r9Y+E0NWkf+ceyL95/3tCvqUKheOGpRQseeDI9U+5mELuZDjvxxNK7rAmfq1dcGuii
qUn7w8bfXnl7VVW1y7efA86PQAg4TN/IsL6RYRqtNqesKru04kxxeXZZpf73ThEq6lUn8ksGdm0+sJtBy+EB5S2cPDLE1/vHo5kH
zxdodfp9OXl1avVtowa5Xd7I3b6eyjvHDF6+ba9K0yRJkrpJ+9Hug4snJzcrpnR39/JwNzYSqpuadyp43/hhkiS9/ktqbsWV0Ku+
faJjekTH9Ghq0pQUFhQV5hXknS8uyDOeD7U11RdysgyDuUuS5O52KRnqWr8lTKttcndv9XNboVD0SRx4cN/F3vlOHD0YGdVVr9PH
JwywqeaOWo/dZs6Z5x8QmJby69nT6Tqd7nTG8YYG1eTp17v0wPSZxdXh/t4hv6caX6VHTLDfuYqLX3ZPF1eNiA03Le/mdunNalvv
W0Wr07m7Xe5ucci2FAopPjzoUF6Z4c/0osrOAT56Sd/bpC3USl4e7pPju/x8Mlet1UmS1KTTbTtdMCPRzvvhndNvKYe0Wq3hJyE/
X5+RQ/tPHT8idf+xhoZGSZJ27z2s1mgM47aHBAcOSeozedzwtEMna2svq1+lqurah/764ucr/hPg7ydJko+319sv/e2mu//uiDfk
APPvfSK/sPTRh2+ZddU4Dw/3G2ZNCg4OWPz3VxiYHmhr3DIKOJjS3b13RKerEuMenDj8iWvGJXa59CXP+iH+rBHo7fXnYf1C/S/2
X3Iiv2T3GXsGp2omIsDv1uSBxmBZpWr8KOWQukVEiQ0NNr6uqLeqz3ExeXgou3SNGTRs1DXX/2XuLXd3i7005Hd15aWHo0xH9tPp
dIZRK1pqUKnkxwCMT0wytjrmnc8+cXh/j959vLytGoqgLdbTTPK4KX9ecJ81JX18/cZMujogMNjw54WcrPRj9reNdLjGJu35itqS
2oaVaWeM/4xpUJKks2U1TX/sWsZ01D69Xq9uMv+duLFJ63nZ7cyO2lbviED33z868qrqTxRWdu8UYN+tAUHenhN6RRp/AqhXN20/
XdB0BQWDmtq6A0cuPR8797oppneEqhoa9x44bpw7Y9rY0cOTdlzG/aJG2efylv7zNeODiBHhnd566W/e3m3bOv3cqx9Onn2/NSVL
yiqefP69C3kXx0+aNHbYvLnT27JqACSJQAg4xMmCkse+2VzY4s6WYF/v+SOTjOMuaOzqDECGh5vbdJNR73/JOOuQkbviO4fOHnRp
kIzciuqfj59uVmZwt0uDH+ZWitsMaNaFc2c/eXdZZXlZs+l+/oHjp80yNvE1NWlMZgUoPS99JystMTOeZGV5WVOTJki2k09vHx9j
q6MkSQ0NKtNeQ63nqPVcDnd398EjLnUscfRgqkZjT7e9zuBMaY2vp8eC4b2a/Qv3v3gfrFqryymvMV3Ez9NDaZLTysz97FKpUjfp
9EE+lzuspaO25e3hHtvp0jAhjU1aa0abaE2XQN8RMZc6HS2razyY2/yacmmmDwROnTBSofjDcBSmPZHOvW6Kl5fn5TxAaGpP2tH/
vv6J8c/EPj0fuW+eQ9bsEGqNZvn7l/pZve+2Ob529Z4NwHoEQsBhjuWZ6YLFy8Pd+GhfRKB/ywKXaVC3yG4hF+/Iqm1U7zpz3iGr
HR3XbUzcpa4yaxqaD284NDYq8ve3U61qzGmDcahc3bns5ilakiSlUunlffHLTbNo1yU61vjabGtY+rGDkiR1ie7WcpapvibJLbxz
VGi4+buULXLUei5Hz959w37fboNKZdgDruh0SVX3TmYu/9iQSxMzi5v/sNIl8FKTbEaRmY5nDBMjA3xbzrKVo7bV16RrmXB/71C/
y3rwr09EUB+TSNmguaKGqt/2W5rpn8fTs0wH9Nuxa7/xDnM3N7fMPw5nf5m+XLfpi7WbjH+G2vLAQjv4eWvKiYwsw+uQ4MD5f7qm
Y+sDXPEIhIDD/JqZU9riAY/S2nrDOIEB3l79o8LNLXdZFJI0K6mP8c8dmTkNmuZP9Nnn+kF94zu32hjlplDcOWZwgPfFb3s/HM1s
djeXRqu1bxjGK8aJw/urqyqbTayuqqivq5UkycfXL6bHH3rs7DdwqPEGuQs5Wb9u+bG0pEjb1KTTaSvLy1J/23rq5NGYHr0CgyyM
PB7euUtYxMX224QBg+yuv6PWY9b6rz75betP1pQcNnqi8fXxw/vV6sbWyzqpwmpVdYMm1mwgNJlYWtdQXv+Hd5cYeWk8mwuVdb9l
FZbVNWp1ep1eX6lS7z1XkllS1S3YL9D7clsIHbitMD/vsN9D4OU0DxqNiAmPCnJA4nVCeQXFZ7Iv3effrAGwuLTCtLsXRzUPGv33
9Y9T9h1x7DotWv/ZsheeWmixmF6vf/mtSwMn3jHvOn//K/McAJwEncoADtOgaXrjl9RJfXr0iwrv5OfT2KQ9V1b147FMSZL8vTxv
Hz3Iy6NNrri48JB+UeEn8kskSVKpNb9m5lxtch+p3dwUigXJA5dv31tUbf7Rx05+PkumJn+VdvxUUdm5ssp3dqRN79crplOQu5si
u7Ryw7HT5XUqSZJ6hoVMTegpVBejBmp1449rPxsweES37nH+AYFNmqaSovz9e36TJMnbx3fy9OuVyj88t9O5S/SIsZPSdu8w9KCQ
feZU9plTpgXCIiJHT7jKmk3PunG+Q96Co9ZzOSKjunbrHnchJ0uSJHVjw4nD+03vI3UJmSVVgd5Ks51k+nl6hPl5ldZdzIGZxdXJ
3S/9bBTh7z08NjztfKmhpSinvLbZiIVhfl6jerTaF7FNHLitGYkWGrFtolBI4+Mif07PrVI1v0/hCrB91/5ePboZXzefu3N/Yp+e
rc29TDqdbum/Xvv8f8/1tGK02/a3/9DJ7bv2GwbkCAzwu/2ma9/64KuOrhRwxVLUVOR3dB0AZ1G3/DH7FtTr9flVtdmlFdmlFaW1
9XVqTV2jWqeXfD09Ogf49+0SNrJHVx/lpTT4+LqtZntHiAoKWDptVMvprZW/e+yQvpFhkiSV1NS9vDlFZ9I94I1DEkb17CazYK/w
To9/u9V04pi4bjcMTmhWsqy2/o1tew1tfY9dNTrS3F2vFyqqDp4vzCmtrKhXqTQadzc3P0/PyCD/7qHBA7t2DmvfX3b9Fr7iqFW9
8JmdvZjo9fqKspKigtyigrzqqsrGBlVDg0qv03t5eQV1Cu0a0zM+YUBrfcNUVZSfOnm0qCC3prqqSaN2c3P39vHpFBYR2zO+R68+
bibDljQ0qL78+B3TZZOGjhwyYqzZ1X7x8TuNDaqW0ydedW1kdDeHrMfwzOGqFa9bOXB2z94J46fOkFlk2swbo2O6S5JUVVn+3Vef
mvY0OGr8VCsHqX/8Foc9+rhh4WxbF6lUqb8/fuku7vjwINO8V17f+OMJMx1BTerVpVvIpYH7qlTqzJLq4lpVTaNGo9W7KyQvD/dO
fl6xIf7dO/mb7VhYr9ev2p9ltkrJseHxrTfcWb+txibtV4f+MFzBgKiQwdHm7yn46lC22cebJ/SK7Brkt/rAH6raJyJoZGzzmylq
GjU/ncw1rOS6/jHB9g7RMXP5evsWbCl55uLLX0lSYu/P339OkqS8guKr5z7cbG6fXrFrP31ZkqTi0oops+/Xt+gA9uCO1YaeSJu5
/9Hn0w6eOLB9tenEL9Zueu7VD5uV7Bbd+Yv3nw8OCpAk6YZbHz199g8npLu7+5HfvjBb82dffn/N+i0Wa9LSj5t3Pv7McvnK70o9
LElS95io7z5bZjo2T7ONXr7UDW84cG2A6yIQApfYHQjhPJwhEMJ5dGwghLNxtkCIjkUgBAx4hhAAAAAABEUgBAAAAABBEQgBAAAA
QFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAA
AAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEER
CAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAA
EBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQA
AAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAE
QgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAA
BEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEA
AABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSB
EAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAA
QREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAA
AAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUg
BAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABA
UARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAA
AAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREI
AQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQ
FIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCIFL/Ba+0tFVwGVx7BF8/JbBDlwb2p9jj+DM
5esduDa0P8cewdQNbzhwbWh/HEHAiEAIAAAAAIIiEAIAAACAoAiEwB9w16jraotjx12jrqstjh13jbqutjh23HPoujh2gCkCIQAA
AAAIikAINEcjoStqu6NGI6ErarujRiOhK2q7o0ZDkyviqAHNEAgBM8iErqWtjxeZ0LW09fEiE7qWtj5epAvXwvECWiIQAgAAAICg
CISAeTQSuor2OVI0ErqK9jlSNBK6ivY5UjQ6uQqOFGCWoqYiv6PrADi1uuWPdXQVYF6HhPYXPjvU/huFNToktG9YOLv9NwprdEho
T565uP03CmsQBQEZtBACFtBU6Jw66rjQVOicOuq40FTonDrquJA6nBPHBZBHCyFgLZoKnYSTRHSaCp2Ek0R0mgqdhJNEdJoKnQRR
ELAGgRCwGcmwQzhJDmyJZNghnCQHtkQy7BBOkgNbIhl2CHIgYBMCIQAAAAAIimcIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAA
AEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIA
AAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARF
IAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAA
QFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAA
AAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEER
CAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAATl0dEVABxMpVJ9sfrLrVu25ubmeXl7
JSUNuHXBrYMGD+zoejnYurXfvvTCy9aUDAoK2rT157auDwAIRavVjkkeZ2Xh1998NXlUcpvWRyjsfMCxCIS4opSWlC56ePHZs9mG
P9Vq9e5dKSm79yx6ZOHN827q2LoBANAhmpqa0tMzMk6mZ2aeLigoKCosrq6ubmxsVKvVvr6+AQEBAQH+IZ1C4nrFxcfH947v3b17
rLu7e0fXGkA7IRDCMVL3pD6yaGl7bvGvj//fnBtvMJ2i1+v//rd/GNOg6fQ3X1/eo0eP5FEj27GCV6b33l3xyUef2Lds0sCkFR+8
19rcrKyz82+6RX4N/v7+W7dvtm/rcAgHXuk+Pj6Gr6GRXSIT+yX265c4cOBAH18fh6wcgCRJOp1u52+7Nm/anLpnb11dndkytbW1
tbW1BQWSJEl7U/cZJvr4+AwZOnjkyJHjJ46PjOzcbhUG0CEIhLhypOzec+zYcbOz9Hr9ivdWXEmBcM6NNxjzcHFx8XUzZ3dodQCb
qVQqlUpVXFyclXV2964USZJ8fX2nX3P1nBtv6NW7V0fXDrDA3d09NS3F+OfCBxelpe3vwPo0o1Frvvlm7eeffVFSUmLH4iqVaveu
lN27Ul5d9lpiYsI1M6ZPu3pacHCwo6tpJyff+YDLIRDiyrFv7z6ZuenpGTU1tQEB/u1WHwA2qa+vX7f222/Xrb9hzuyHFz3k6+vb
0TUCXNKunbtfeemVwsIis3Pd3NxGjxk9fvzYvgl9u0RF+fr6qFSqqqrq7LPZBw4c3LZ1W1HRHxY8eTL95Mn0N994a9LkiXP/dGPS
wKR2eRMA2g+BEI6RPCrZ9Oc6SZJmXzensKBQZpENG38IDQ21aSsrP1n1ztvvtja3oqJCZlm9Xl9ZWUEgvEz3P3Dv/Q/ca3j9zFPP
/vzTRvnyz/7nmauunmbNmuPiehpPoUOHDj9w74OG1z6+Pl+vXRMWZtupgjZix5X+2+4dnp6ekiRp1Jqy8vL0k+lbt/yy7Zdter3e
bHm9Xr9u7bcpu1P++9J/ExL6OrDywBVPo9a8/NIr33/3Q2sFxk8Y98jSxVFRUaYT/f39/f39o6Ojxo4b89DDD/z808blb7xVXV39
hzVrNJs3bdm8acuWbZv5nxS4wjDsBK4cQZbuZgkOslAANnno4QctPvH11ptvNzQ02LRanU732iuvGf+8/Y7bSINXBqWnMjKy86TJ
E5/7778//Ph9+QeTCguLHrz/oRPHT7Rb9QBXV1lZ+eADD7eWBhUKxeIli1565cVmabAZDw+Pa6+btXL1p335OQYQBoEQV44RI4bJ
zO2b0DcgMKDdKiOCsPCw2++4Tb5McXHxp5+stGm1363/PjPztOF1dHTUvHk321k/OLHEfonvvf9eRESETBlVverRpf9XVlbWbrUC
XFdNdc1DDyw8dvRYawUWLnrY+t62IyM7v7H8tZiYGAfVDoBTIxDiyjFm7BiZG8zuve+e9qyMIObNuzk6Wu7HZkmSVq/6vMDQgZ0V
amtr//feCuOfix5ZpPRU2l8/OLHIyM7/fPIfCoVCpkxlReWyl19ttyoBLkqj1ix5ZGnWmazWCowbP27eLbb9uBYUFPTKay/xCQyI
gECIK4ebm9sLL/+35S+aCoXi4UUPjR4zqkNqdWVTeioXPrJQvoxarX7jteVWrvCDFR9WVlQaXg8fMXzCxPGXUz04uREjR4xMHiFf
Ztsv28+cPtM+9QFc1OuvvXH8WKv3Vys9lUsfe8SO1cbExMy/Zb791QLgIgiEuKJ07tz5k1Uf3X3PXd17dFd6KgMC/EePGfXOe2/d
civ/pbWViRMnDB8ud7OuJEk7tu84sP+gxVWdO3f+m6/XGl67u7svefSRy68enNwNc26wWObHHza0Q00AF7U3dd/ab9bJFJgx45ou
XbrYt/Lbbr/Vz8/PvmUBuAp6GYUrWXD7rQtuv1W+jK+v79333nX3vXe1T5UgSdKSx5bccvOtOp1Opsyry15btfpTNze5H6Fef/WN
pqYmw+s5c+f07NnDkbWEUxoydIhCoWitx1GD1NS97VYfwLU0NTW9uuw1+TI3zp1j9/p9fHymX3O1fOAE4OpoIQRwuXr27DHnRgvt
PFlnstat/VamwO5dKXtS9hheBwUF3Xvv3Q6rH5xYQIB/lKXHUM+fO69Ra9qnPoBr2fjzpnM552QKdO3WNb5P/OVsYtZ1sy5ncQDO
jxZCwH4nT6bv2L7j2NHjFy5cqKmu0el0QcFBoaGhAwcljR49amTySPkOM+Sp1epdO3en7Us7lXEqv6Cgrq5Op9X5+vl2iYzs07fP
mHFjxo4d4+HhLJfwvfffs3nTlmbjVjWz4r33r7p6WmBgYMtZTU1Nb77+pvHP++6/x/ouYRsbGw/sP3j0yNHMzMzCgsLS0rKGhoam
piZPT09fX9/wiPCuXbv26RM/ZOiQxH4J8k2UV4CioqLNG7ccOHDgbFZ2VVVVU1NTQGBARERE167R3Xt0v3nezU44gFhwcHBebp5M
AZ1OV1pWavGet5zsnNTUveknM86fO1dUVFxfX69Wq5VKpZ+fX+fOEd17dO/Xv9+YsaPtvnfOenYfhezs7H1703Kyc3Kyc4qKilUN
KlW9Sq1We3t7+/j4BAUFRnaJ7NKlS/fusX369ukd39vHx8K4L61xtqumjT5LS0pKjh87kZGekZ+fX1BQUFpSqlI1NDQ0qNVqD6WH
t5dXYFBQeHhYdHTX+D69ByQNSEjoezkf2h3ii9VfyBdITh55mZvo0yc+MDBQ/uNdhrOdbFZyqmq74gc7XIuzfJsE7KPVasckj7Oy
8Otvvpo8Ktkhazh7NvulF146fOhIswKlJaWlJaWnMk6t+fLrvgl9lz76SNLAJCtXbtTQ0PDZqtVffbmmprqm2aya6pqa6prMzNM/
fP9jZJfIpY8uGT/B2sq3qcDAwHvvv+eVl5bJlKmurl7x3vuP/fXRlrPWfPn1uXPnDa/jesXNnjPbmo1mpGes+errX7Zua2xsbDm3
oaGhoaGhvLz8VMapX7b+IklSp06dZl47489/+VN4eLj8mv/+t39s37bDmjpMnTb1P88/22zi7QvuzEjPsLhsp06dftr0Y8vp237Z
/o/Hn7Bm65LJOdnQ0PDO2++u++Zb4223BpUVlZUVlZmnMiVJuvrqq5zwe4OvFalG3ahubZZGo/nhux+++Xrt2bPZLec2NjY2NjaW
l5enp2f8/NPGV15aNnDQwFtunTduvIULpz2Pglqt/nrNN999+/358+fNrr++vr6+vr6srMz0Pbq5ufXo2WPosCHDhg0bPGSwlUe2
7a4aJ/ks1el0hw4e3rHj152/7SwsKGytmEat0ag1NTW1ebl5hw8d2fCjJElSaGjoNTOm/+kvczt3lhsk03mkp2dkZZ2VLzN4yKDL
3Iqbm9uQoUN2bN9h64Jtd7K1qTaqtmgf7HAtBEI4qayss/NvusXweszY0ctee6Vj62Pql63bnnnqWbW61W+oBhnpGQ89sPDpZ5+a
MnWy9StPT8944vF/5ufnWyxZWFD418f+du9998y6bqb16287c2684dt162X6PZckad3ab2+YMzuuV5zpxMqKyo8+/Nj459JHl1j8
tbW0tOzVV17d9st2m2pYXl6+6tPPvvpizc3zbrr7nruupO7Uy8rKFi9c4qK9cdbV1Vks4+XtbXZ66p69L73wsjXXi9GRw0eOHD4y
fPiwfz39T/mBEG1l31E4dPDQM089W1hYZOvmdDpd1pmsrDNZa778OnnUyNfftPAgmRNeNW3xWZqye89jS//PvvqUlZV9tmr1mq++
XnDbrXfcdbu7u7t962k3237ZZrFM7/jel7+hF1563qbyTniyWcPZqu3SH+xwLQRCwDa//brzX088Kd+BipFGo/nXE09GdI4YMKC/
NeX3pu7762N/M/urZGtW/O99N3enuMfGzc1tydJHHn5QbhQKnU736rLX3n73LdOJ77zzXm1treH1pMkThw4bIr+h1D17//XPJ1s2
n0qS1Kt3r9tuXzBo8MCgoKCS4pLffv3t009XGcexMFCr1Z9+snLXzl0vLXvJ4iCKLkGlUj3iyl8ayisq5Au4ubmFhYU2m6jX6//3
7opPP1nZskMaT0/Pe+67e9pV00JCgvPz89d98+3Xa75pViYtbf+t82579fVX+vXvd5n1N7DvKOzauevvjz9h9gnJxMSEWdfNSkoa
ENkl0tfXt7Gxsaqq+mzW2T0pezb+vLGmptamDTnhVdOmn6WmAgIDbpgze/To0d27x/oH+Gs0msrKylMZp7Zu2bZ923atVtusvFqt
/uD9D8+cPvPcC/9x8ky4N3WffAGlUtm1a9f2qYyRE55s1nC2arv6BztcC4EQrs3d3T01LcX458IHF6Wl7W+7NVw4f+Gdt9+z8huM
gU6n+8+zz332+Uql0sKvhmfPZsunwZHJI+bNn9enb7y3t3deXv7mjZs/X/2FRqN5/38fWF+fNjVs+NCJEyfs2PGrTJkD+w9u37Zj
0uSJhj8zT2X++P3F2yY9PT0XWRrVcNPGzc889azZQzB8xPCXl73o/XtTUnTX6Jvn3zx+4oT77r6vtLSsWeGsrLN33XH3O++9bbYv
0/++eOnn8I0/b3r6yWfka9XMJys/MrzIvZA7d86fbVpWkqTJUybZdFYvf+Ot0y77paGyslLmvj6DHj17tHxc9uUXX2mtm6KXl71k
HN6wR48ej/7f0rDwsHfffq9ZsaqqqoUPLX7/oxVxcT1brqQdjkJpSelT/3rGbBq86+4777nvD/0q+fj4+Pj4REZ2Hj1m1F333Pn8
f/772687rdxQ+1w1zvNZamrAgP4vv/pScHCwcYqHh4ePj0+XLl0mTpp44viJvz72eFlZ83cqSdKOHb8++/S/n/n309Zvq501NDTI
35EhSVJERHg7P5XXPiebw7VDtYX6YIfLcYqGBcBVvPPOeyqVSqFQXHvdrBUfvLfll02/7d6x+svP/nzTn2S6IjiXc+5X2YwkSVJT
U9PTTz4jkwbnzJ3z+puvjUweERwc7O3tHRfX84GH7n/rnTeVSmXLX7g70KIlCz09PeXLvPn6cuNNYq8ue834f/D8W+fJd/ixN3Xf
s0//2+z/2T6+Pk8+/U/vFjcWRkdHtTaeYWVF5aKHFpWWlMrX1sllnjr97br1htfDhw978eUXfvjpu50pv67/ft3iJYucfwCxA/sP
WCwzqsWjv6tWftZaGpwydXLLwe5vXXBL125m2knq6+v/9Y9/2dQmb5Z9R+Gdt981e7tsr969mqXBZoKDg//74vMjRjZ/m2Y551XT
dp+lpkJDQ5ulwWb69e/33xefa22LmzZu3r0rxewsZ3A266zFD3/H3hRtkXOebBY5YbVd/YMdLodACNhAVa9SKBT/ef7ZJ/71j6SB
SQGBAZ6ennFxPZc+uuS22xfILPjd+h/k1/zpJysNT4ebFR0d9ciSRS2/tQwcNPCOO2+3uvrtISoqat78m+XLFBQUrF71uSRJW7ds
NXYmERERseA2uUEmy8rKnvrX0619AZo+/erWHuifPGVyZKT5LiJKS8v+9c+n5AfBc3KrP/vcUP+Fix9e/s6bEyaODw8PVyqVkV0i
b55301vvLrepOaX9ffO1hfHNDJnBdErmqcz/vbuitfLXzLim5UQ3N7dpV001W/7s2ew3XnvT7Czr2XEU1Gr19lZ66ehvxV2s7u7u
f/3bYxa7xHTaq6btPktNLbj9Vpk0aJA0MGnM2DGtzX3rzbdtasZsT9Y8OhsYZKZX5zbitCebPOestqt/sMPlEAjRYWZOvzZ5+OjW
/hl7lHE2c/9045SpU1pOv/W2W2Q+oA8dPKTRtDqQmlqtXvPl1zIbnX3D7Naa3eb++UaLLXLt7LY7FoSFh8mX+fSTlRcuXHjrzbeN
Ux5a+KB8H/pvvfl2ZWVla3NlvtIpFIqWvcsaHTp46KcNP8vX1plVVVVJknTrglvm3zKv5dyEhL4zZ81o90pZa9fOXYcOHpIvc/X0
q2K7x5pOeW3Z68063DNSKBSDBg80O2vw4EGtbWL9t98VFBRYqKssO47CkcNHVPUqs2ursPRQpUHXbl0HJA2QL+PMV01bfJaacnNz
u3r6VdaUnDhpQmuzsrOzT7X+U13HKioqtljG39/a8XsunzOfbDKcs9ou/cEOV0QgBGygUChuWTDf7Cw/P7+ExITWFmxqapJ52GPL
5i2GT//WjBzV6kBSgYGBAweZ/wbcUXx8fB5e+JB8mYaGhnvuvM/Ys2LSwCT5r24XLlzYtHGzTAH5RpXEfokycz/64COnbQSwRlRU
1H0P3Nva3ImTJrZfVWyRl5v3/H9ekC8TFhb6yNLFplOOHjl66NDh1spHRkb6+5vvfr1371b7WtTpdF99sUa+JhbZehRkuhU9sP9g
SUmJNRvtm9BHZq4zXzVt9FkqSdLYcWNS01JS01JS9u6y2DxoID9u+949qdaspP1Z1T2vVzv9XOjMJ5sMZ662i36ww0URCAEb9I7v
LTM+Vbdu3WSWNTtImoH874hKpdJspxdGA20f6rCtXT39KoudARp/lHVzc1vaysMYRuu++Vbmf9agoKDgkGCZxbv/sYmpmby8/NQ9
e+Ur4Mxuu2NByz5XjHrGtUeXDLY6euTofffcX15eLlPG39//1deXNftOL3/HYGt3cEmSFNIpRKYt/fvvfmitvc5Kth6FivJWmwFr
a2sffeSxUxmnLG506aNLDOHH7JgTznzVtNFnqX2CZO+rPHz4qGM35yiNDZaffXVv/Zx0LGc+2WQ4c7Vd8YMdroteRtFhNmz8ITS0
eVfyRqbjEDoP+ZDTKTREZm5tK93E63S6kyfSZRaMiuoi3/V5t5j27lXcIoVCseSxJXfdfrc1D1HMunZm34S+8mXkB4bq3HoMMIiw
NMz0tl+2jR4zSr6Mc3J3d588eZJMgYiICNOu7TqQRq0pKy8/eeLkls1bdmz/Vf7ciIqKevGVF3r37mU6UafT7d61W2apTq1/pEiS
FBISUlRkvl2uvr7+yJEjMjeAybPjKMh81ZMkKTPz9G233jFgQP9x48cljxrZO763xccFW3Lmq6YtPkvt5uXlJTO33FwfpGjGmU82
2dU6abVd6IMdVwYCIWCDrl2jZebKf6swDrXXzJnTZ1QquaaJ8AjzT7Qbde4cKV+gQyQmJsyYOWPDjxvki/n5+T3w4P3yZXIv5Lb2
Pd5A5peFiwU6dZIvcGD/QfkCTqv/gP4Bge33mJAdxo+ZaFN5hUIx989zH3zo/pbPlGZn58g87SNJkp+fr8zcwMAAmRPp8CH7A6Ed
RyE0zMI5KUnSsWPHjx07/s7b7wYHBw8fMWzEyBGjRo9qOSSjWU5+1bTFZ2kbqayUu5+/A3l5y+0lA20rT9s6lpOfbK1x5mo7/wc7
rjAEQsAG8u0P7m5y7XgNjQ1mp2dYujEsKChIvkBAgPmHpjrcgw/fv33b9vr6epky48aPDekk1xogSVJGRoZ8AYt7QOmp9PLykhld
oKCgoKqqyuKudkK9esV1dBUcxs/Pb/o1V8+ZO6e1e6RPZ56WX4OHbM978v3yyTyaaJEdR6H/AAv9wZiqrKzcsnnrls1bFQpFn759
xo8fN2PWDJn7YyWnv2ra4rPUrMqKyj17UrPOZJ09ezYvL7+urk5Vr1KpVNY/3NXO+dN6vr5yP38YGAf4aVNOfrK1xpmrfSV9sMMl
EAgBG7QcjMh6rd0gV1lRKb+gxf/15X9N70ChoaG3Lrjlf++1OkKAJEnyd8Ma5OVZ6F3dW7Z70otlvL3lh5vLzy9wxUAo/xCLM/P2
9vYP8A/wD+gSFdmvf79+/foNHJQk39NsQb6FvkCVsvdhKmX74z1zGWNA23EUoqOjEhL6pqdb+ErajF6vz0jPyEjP+OD9D0cmj7z7
njv7tdLphZNfNW3xWdrMjh2/fv3V14cOHr7M/kicdlgamYcwjRx+e61ZTn6ytcaZq+26H+xwUQRCwAZt0WNbTW2NpY1ayHue7dWP
nB3MjgZuqzJLz/B4WTHwhtLTwqhNZaUu+aRQe44zZp/fdu9w1Mgo5ZbGY/jqyzVffWlnf6F1dXWNjY32/bxi31G45757lj7yqB0L
SpKk0+n2pOzZk7Jn2lVT//b3v7bsW9XJr5o27f0yLzfv38/+xzjG6ZUqKqqLxTJV1dXtUBMnP9laXaETV9v5P9hxhSEQwknFxfUU
5IFpi7/gurmL3htwg6XO9NzcLO8iD0tNkQ0Nl9XJZEfx8bF829gVQ/6X+MtXXl7epYvlL9kt2XcURo8Zdettt6z69DM7ljXasnnr
qYzMt99b3mz4bGGvmjOnzyxeuKS17/oBgQE33fyXcePHde0abbz5orKycvo01xvVrWdcTzc3N/n2z+Jiy2MVXj4XPdmcudpCfbDD
GYj+RRPAFUAvWb6ny+JtX3b04ugMPC39Pn1FaeOb98pK5YbBkGH3UXjo4QcfXvSQfI+jFp0/f/7vf/uHVqu1aakr8qqpr69f+shj
raXBrt26rvrs07vuvjM+vrc1D+A5OR8fH4tPmhUXFzvDIKsuerJ1YLXF+mCHE6CFEOhgFnsS02k7/r/zjuVj6XEja3aRVmfh67K3
t+XHRWxlzfcJWM/i/Zx/+sufHn1sSftUxlFuuXX+uPHj3n3r3d9+22n3d/fjx05s2rh5xsxrjFNc96q5HCvee1+mTew/zz0b2cUZ
+2S228jkkZmyPS1p1Jq8vDz5cR0vn4uebC5abaAt0EIIdLAAfwuB0OJtcurG9uhHrgNZ7PtbrdFYXInFvWRlb/42sWbkaFhPfpBo
qe3vKW0jsbExL7z833Xrv7n3vnsSEvra16Swbu060z9d96qxm0aj+eH7H1ubO3TYEIvjnbqcSVPkhqozOJ1pf29JVnLRk81Fqw20
BQIh0MEsDrogP2yD5LJfgq0X3TVKvkCD7ECOF8s0WOiqPirK/Fbkv5zr9XI/IV/xh6adRUZaaN5ptHSUnVlkl8g7777j45Ufbdj4
w9PPPnXNjOk2fZVMP5lh+lnRsVdNh0jbt7+urq61uUOGDmnPyrSPxMSEnj17yJc5fPhwW1fDRU82F6020Ba4ZRToYH369pEvID8S
tyRJNe3SsXgH6puQIF+gutpCT60atUZ+PK7ortGt3bvr6Sl3m6J85CspLZWvGGzSu3cv+QJVVU46hrhNOnXqNP2aq6dfc7UkSWdO
n9mTkrpl8xb5OwMlSdJqtfl5+b1+30Ude9V0iKwzWTJzIyIi2q0m7enm+Tc/9+/nZQrs3bP3Mjfx0gsvr1v7rfFPpVL508YfTQ+9
i55sLlptoC3QQgh0sLi4nj6+cs8YFBeVyK+hqKjQoTVyOtHRUfJP/pSXW+gLxGL34kOHDW1tlr+/n8yCdbWttkhIkpSfa2GcK9ik
Z1xP+b5A8q64Hd6rd69bb7tl5epPl7/zpsUeUKuqLo0x0LFXTYeQf0dKZau9dDQ12dYfj1O5Zsb02NgYmQLnzp2/nDE2dTrdju2/
mk4ZNTq5Wchx0ZPNRasNtAUCIdDB3Nzc+vfvL1OgoKCgqalJpsCFC7mOrpTTmTJlsszcwgILkbioqMju9QcEyP2+K/+N4ejRY/Lb
hU08PDySR42UKVBYWCh/sZhK2b0nefho478NP/7kiDpaK3VPqmG7Y5LHadSWH1UaPnzYO/97S75bHW/vP8ztwKumQ8jfXV9T02pr
T7mlr/XOzMPDY+ljS+XLrFu33u717961u9mn3NXTr25ZzEVPNhetNuBwBEKg4826Vm4IrKamJvnfd48cPuroGjmdOXPnyAwJVV1d
XVlRKbN4Ts45mbkxMTEjRg5vbW5s91iZTecXFLTWM2RDQ8P+tP0y24UdZsyUu1g0Gs3xYyesXNWhQ4eMr93d3ceNH3tZNbOXVqvN
zMy0pmSXLl0mTpogU6BZJxkdeNV0CH9/f5m52dk5rc1y9SHsRyaPuHHuHJkCG37YYPeAhJ98vNL0z9jYGLMnoYuebC5abcDhCIRA
x5s8ZbJ81zKpe1Jbm1VTXXP0yJUfCKOjo0y71G/p+HG5GHDixEmZuffcd7dMv44+Pj4xrd+RpVFrMjJOmZ21/tvvamuv8Mc729/o
MaO69+guU0DmYjGl0+k2/bzZ+GfyqJGBgYGXWTe7bd3yi5UlZU5FPz+/sPAw0ykdeNV0CPlOI1N27Tb7241Go1n7zdo2q1Q7eWTJ
4n79+7U2t7Gx8bVlr9ux2h9/2HDijyfJAw8/4G5uKHYXPdlctNqAwxEIgY6nVCpvvvkmmQLr13/fWldma79ZK0hXlg89/KBMbN61
c1drs3Q63Z7de1qbOzJ5xLSrpspvOjlZ7jbFL1Z/0XLi8WMn3n37PfnVwg5ubm6LFi+UKbB+/XcW+/2TJOm79d+btpncdfedDqic
vb5b/31piVX9D9W2/szq2HFjWw5w34FXTfvrP6DVRCRJUmFh0VdffNVsok6ne/nFV86dO9+W9WoPSk/la28si2t9nPrt23as+fJr
m9Z5Ludcsxg5esyoiRNbbaN20ZPNRasNOBaBEHAK82+dl5jYao9nhQWFry57veXP28eOHvvww4/buGrOIqRTyLP/ecbsj9OSJG3a
tLmkxHzvO1s2b21tVufOnZ9+5imLm772ulkyc7ds3vrkP59KT89oaGhQ1atOnz7z9lvvPHDfg42NjfLdBcE+o8eMun72da3Nrayo
fP9/H8ivISvr7NvL3zH+OXXa1MR+iQ6rn+3q6+ufeepZi08SarXa3Tt3tzb3uuuvbTmxA6+a9peQmCDfzLv8zbffeO3NnOwcjUZT
U1O7J2XPQ/c//P13P7RbDdtUYGDg2+8uH5A0oLUCr736+tdfWZsJc7JzHnrgYdNhPLp16/bMv5+RWcRFTzYXrTbgWARCwCm4u7s/
9cyTPj6t5ofv13+/+OFH9qbuq6qqamxszM7Ofu/dFQ/e/7BGrWntf7Irz/Dhw57591Nm36+qXvXs0/9p2TR04cKFN1570+zaQkND
33z7DYvjQEqSFNcrbuy4MTIFNm/acseCOyeOmzxpwpRb5y1Y9elnGo1GoVAsfmSRxZXDDo/99dHhI1p9OGf1Z5+v+vQzvV5vdu7+
tAMLH1xkvJs3Njbm70/8rU1qaYu0tP2LHl4s04mFVqt98YWXz58335Y1c9bMocPMj7PXUVdN+1MqlTf+Se5ROp1O98XnX97053nj
Rk+YNvmqJYsfPXTosCRJU6ZOaacqtrHg4OC3313e2g9Yer1+2SuvPf5/f8/Pl+uMV6PRfP3V17cvuLO09FJfO5FdIpe9/nJAgNxT
mpLLnmwuWm3AgRQ1FVdaJ93oEKl7Uh9ZZKGjM4sGDxn87v/etmkRrVY7JnmcHdu6Yc7sv/39r3avQemp3Ln7V0mSci/kzp3zZ1sX
j42N+eqbL1tO35924LGl/2fNDW+m7n/g3vfeXWFl4Y9XfpSQ0Nem9VtPrVaPHzPxMlfy4ssvTJg4XqZA2r60J/7+r+rq6pazevfu
ddsdCwYNGhQUFFRcUvLr9l8//WSl2bHp4vvEv/TKi5GRna2sVUlJyby/zLdpyMeFix+eMGG89afHytWfxsf3li7jrJbsuohs4pAr
Pbpr9Npvbbt7rSW1Wv3Uv57evm1HawX69e93/fXXDhk6JDQs1M3Nrby8/PixEz//9POelFRjVoztHvvq68uio82MHN3WR8HsnvT0
9JwydfL4CeP7JvQJDg728vKqq6vPy809dPDQt+u+ay0NDh8x/MWX/ys/IEc7XDXO8FlaW1t726135OXmWb+GaVdNXfLoIzOulrsL
wNQ7771lGOP+8v/3aTu7du56+cVlrfWB6ebmNnrM6PHjx/ZN6NslKsrPz7exsbG6uvrM6axDBw/9/NPGZqMpDEga8NLLL1ifcJz2
ZJNkd35bV9uZP9gBBqYHnMiw4UNXfPDeP/7+z1yrR5K49757ZsyaYX0gvAIMHzH8izWrX33ltV+2bms26/TpM//8x5Pyi3t7e8+/
Zd7td94mMy5ZS+Hh4a+/+dqSxY+a/brQjEKhuP/B++bfMs/64whbeXp6/vfF59et/fbdt981G9RPHD9xQrZDiClTJ//9icflu6Zs
Z2q1+uefNv7800Yry3t4eMyZe8OixQtbPj3YTIdcNe3P39//pZdfWPjQYosjyEmSpFAoblkw/4EH77fmonYtY8eNHTFyxNqv165e
/UXLx1N1Ot2unbtkno4zCgoKuvPuO26cO8fiCWbKRU82F6024BAEQsC5xPeJX/3FqtWrPv/iiy9rqlsdOEuSpMjIzkseXTJh4ni7
+xN3XaGhoc/99z+3LshY89XX237ZbmWbalhY6MxZM//0lz+Fhcn1Rtiafv37vf/RiteWvS7fj2VsbIz8DY1woDk33jB12pQ1X339
/fofrLwQlJ7K5OTkO+68rWOfGxwxcsQnKz/av//Agf0Hjx09ZmuHtMEhwRMmjF9w+wKzzZtmdchV0/7iesV9+tnHz//nhT0prXb4
IUlSQkLfxUsWDxo8sN0q1s48PT1vnn/zn2/6886duzb9vGnf3jTTBwIt6pvQd+q0KbNvuN6+X0xc9GRz0WoDl49bRgEnpVard+9K
2Zu691TGqYKCwrq6Op1O5+vrExkZ2advnzFjx4wbb6ZTQQE1NjYe2H/wyOEjp0+fLsgvLCsrUzWotE1apVJp6Ii/W7euffr0GTps
SEJigsyQU9Y7fuzEb7/9dmD/weKi4qqqKr1e7+fvFxUVlZDQd9z4sSNGjnDIVmATnU6XfjJ9//4DpzJOXTh/oaS0tL6uvqmpydPT
09fX19/fv1tM1549e/ZN6DtqdLL83ZXtT6/X5+flZ2ScysrKysvNLywsLC4qrq+vV6lUTU1NXt5ePt4+Pj7e4RHhMbGxsbExSUkD
+vXvdzmnWftfNe3vVMaprVt/OXzwcEFBQXV1jV6vDwgI6BbTLSlpwISJE+S7JL3yNDU1nTxxMj09I/PU6YKCguLi4qqqqsaGxqam
Ji8vLz8/X19fv86RnXv1iuvVO27QoEHRXaMdtWkXPdlctNqAfQiEAAAAACAoftIAAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAA
BEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEA
AABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSB
EAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABEUgBAAAAABBEQgBAAAAQFAEQgAAAAAQFIEQAAAAAARFIAQAAAAA
QREIAQAAAEBQBEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUB4dXQEA4vr5++927djeLTb2/sVLOrougMtwngvHeWrSRq74
NwgAEoEQwGXauX3bxh++N52iVCq9vX18/f26REV3jYkZMGiwf0BAR1UPAAAAMgiEABxMo9FoNJqamuqigoLDB/b//P13SYOHzLh+
tq+fX0dXDQDa23dfr9m3JyW2R497Fy62dS4AtAMCIQDH+OuTTwcFB0uSpNVqG1SqivLyc9ln01L3lBQVHdqfdibz1N0PLQwLDzdd
5Jrrrr/muus7proAAACgUxkADufu7u7n7981JmbMhImL//r41bOuVSgUNdXVK9//n7qxsaNrBwAAgEsIhADakEKhGD95yoQpUyVJ
Kist3bNrZ0fXCAAAAJdwyyiANjdx2lX79qTU19Wl7tppCIcGrfXgdybzVNqelAvnztXW1HgolYGBQWHh4QMGDU4YMMDT07PZyhsb
GvbtSTl18mRxUWGDSuXn798pNDRxQNKgocP8/P1NS5YUFe3+7dezpzOrq6oUCkVQSEiv+D5jJkwM6dTJWKZBpfrvU082NWlmzr5h
9PgJLd9LfV3dC08/qdVqr7tx7sgxY00X3JuyO+PE8ZLiYnVjo6+fX0z37sljxvXs3bvZGtasXnXkwIE+iYkL7r63uKhw57ZtZ8+c
rq6qSug/YN7td5jdgY0NDS8885S6sfGa664fO3FSywJ1tbUvPvOUVqud/ee/DE8eZeu7Nnjn1WV5uRfGTpzU8j7eC+dy3nvjdUmS
Hvvnk8YF7XgjRjYdYuv3rVarzcnKSj9x/MK5nOrKqrq6Wk8vr/CIzgn9+48cPcbL2/tyamL9njTdM2WlpTu2bD6Teaq+ri4wKChx
QNLEadN8fHwvs9p2cOyVYpF9u8umE8l0wYK8vB1bN5/LzlbVq4I7hfRPGjh+8pSWu86Bu9qa0zLj5IlVH7xveH0uO/uJpY8YZyWP
Hdu7b4LM3GvnzLVpWwBgNwIhgDanVCr7JQ1M25NSXVVVVlIS+scnCZvZ8tOGHVu3GP/UarUlDQ0lxUXpJ45PnDpt2oyZpoXPnjn9
5cpP62prjVOqq6qqq6pyzp7Nzsq65c67jNP37t7147frdDqdcUpJUVFJUVHanj1z580bMGiwYaK3j09i0oCjBw8e3LfPbCA8cvCA
Vqv18PBIGjLEODE768wXn35iWo2a6uoTR4+eOHp01Ljxs26YY/adZmVmfvbRB2q12vCnXq9vbZ94eXsPGjpsX8rufXtSxkyYqFAo
mhXYvzdVq9V6e3sPHDLUdLqV7/oyWf9GDGw6xDbt20Npad+u+dJ0iqq+/nxO9vmc7LQ9KXc+8GBIp1D7amLfnrxwLufTFStUqnrD
n+VlZbt2bM9MT79v8SPeJtnD1mrbweFXijz7VmLriWR0OiNj9ccfajQaw5+lxcU7tm45cvDAXQ8+1GzXOWpX23fJ26c9twVATARC
AO2hW0xs2p4USZLy83JlAmFBfp7hC/qAQYPHTpwUFh7u7uFRXVVVWlx87PChZr/f5+VeWPn+Co1G4x8QMGnaVX0S+wUGBdXV1VaU
lZ04etT4tVKSpPQTx79f+40kSV2ioq++9trYHj31Ol3W6cyfv/+uvKxszWergoKDY7r3MBQeOmLk0YMHC/Lz8vNyo6K7NqvhgX17
JUlK6D/A2MhTmJ//6fsrNGp1p9CwqdOviYuP9/H1rSwvT929K+W3X/fs/K1TaGjLbKmqV61ZvapXn74Tp03rHBnp4aGU34Gjxo7b
l7K7rKTk7JnTcb3jTWfp9fq0PXskSRoyYqRpo5ZN79putr4Rmw6xrfvW3cO9b2K//oMGdYmKDgwKUnp6VldVZZw4/tu2X8rLyr5a
tdK0Ldr6mti3JxtUqi8+/SQuPn7C1KkRnSMbVKq0PSm/bNpYXFS4bdPGGdfPtq/admijK6U19q3E1hPJdMGvP/8sPiFx0lVXhUd0
rq+vO3LgwNaff64oL1/90UcPLFnq7u5uLOyQXW39adk3sd9zr74u04+o/FybtgUAdiMQAmgPAYGBhhf19fUyxbLPnJEkKSg4+C+3
LjC2g4WGhYWGhfVJTGxW+PtvvtZoNAEBgQ8sWWro4FSSpMDAoMDAoNgePY3F9Hr9T+vXS5IUFhFxz8MLjV/0EwckdYvtvvyVl+pq
a3/6br3xi2Bc7/jgkJDKioqD+/ZF3fCHQFiQn1eQlydJ0tCRIy9VY+03GrU6MDDo/sWPGG+9Cw0Pnzn7Bh8fn182bfxl08ZhI5M9
vbxMV3U+J7tf0sCbb7u9ZXOfWRGRkT3iemVnndmXktIsEJ7OyKgoL1MoFKa3sNr6ru1m6xux7RDbuG8HDxs+eNhw0zWEhoWNmTAx
PiHhzZdevHDu3IVzOd1iu9tUE7v35Lns7MHDhs+dN9/wp39AwKSrrq6srNifmnpof9o1111v3KhN1bZDG10pZtm9EltPJNMF+w8c
eNOCiwsGBgaNmzQ5NCxs9ccfFeTnHdqfNmxksrGwQ3a1fZe8fdpzWwCERacyANqDl/fF7yuNDQ0yxTyUF5sFTG82Mys/Lzf3/HlJ
kqbNmGn8jmvW+Zyc8rJSSZKmXTOjWQNUQGDgxKnTJEm6cO5cWUmJYaJCoRg8fIT0+92hpuUP7N0rSVJQcHCv+D6GKcWFheeyz0qS
NP2665o9iCVJ0vgpU7y8vBpUqjOZp1pWzND/qvzbNJU8dpwkSenHj9XW1JhO35eyW5KkXvF9TEf1sPVdXw6b3oj1h/hy9m0z4RGd
I6OiJEk6l51ta03s3pNubm7Tr72u2cRBQ4dJklRfV1dRXm5ftW3VdleKw1di6xVhoFAorp51XbMFEwckGRohjxw4YM1KrN/VDjwt
LWrPbQEQGS2EANpDY8PFASfku23o0TPOzc2tqrLyo/feGT1uQlzv3t4+PmZLnjt7VpIkhULRLylJftO5588ZSsb3TWg5t09ivw3r
v5Uk6cL5c8Z7WYeOGLFjy+b6urqME8f7JQ00TNRqtUcOHpAkacjwEcZvn9lnswwrN0ZEUx4eysioqHPZ2fm5uYkD/lDPTqFhoWFh
8jVvJnHAgMCgoOqqqv17Uw1frCVJqqqsPJV+UpKkkWPHmha2413bx9Y3Yv0htm/f1tXW7tuTcuZURklxcYNK1SzS11RX21oTu/dk
ZJco/4CAZuWNZWprqjuFXnpczfpq26pNrxQHrsSOK8IgNCzMdE8axfftez4n21AfU5e5q+2+5O3QntsCIDICIYD2UF1dZXjh5+cn
Uyy8c+fp11738/ff5WRl5WRlKRSK0PDwmNjuffv169uvv+mzQIbvbT6+vq3FCSNDZww+vr5m76oy9nlo2mdDSKfQ7nFx2WfOHNi3
1xgIM04cr6+rUygUQ0aMuPS+KislSdLr9S88/aRhimlPGMbX9XV1zbYb3ClEvtotubm5jRg1euvGn/en7pkwZaohlO5P3aPT6YJD
Qvok/OF+SzvetX1sfSPWH2I79m3O2bOrPny/QaVqbetNTRpba2L3nmyZBiVJ8lRefMjT2AOKrdW2VZteKQ5ciR1XhEFQiPkFDdPV
arVarTY+W3v5u9ruS94O7bktACIjEAJoD7nnLv5OH9W1eTctzRie5zmwd2/W6czC/PzS4uLS4uKDafs6hYbedNvt0V272bpp6/sq
NDV0xMjsM2dOZ2TU1FQHBARKv3cn071nXKfQS+0YxrsN5W87bNYKIUmSUmltnxmmho8avX3L5ory8tMZGfEJCTqdbv/eVEmSRowe
4+b2h0cA7HnXrd+sp9O1ujY73oiVh9jWfavRaL5c+UmDShUc0mnC1Knde/YMCgpWenoa9sx7b7x+4VyOHTWx7/yRJEnhJnv34+9r
taPabcTud+qQldh3RVjDeBgcsqvtvuTt0J7bAiAyAiGANqfRaE4cOypJUlBwsGmaak14RGfDw1cajSY/98KpkydTd+8qLyv77MMP
Hvvnk4amG0MvNar6+gaVSr7pw9BQo6qvVzc2tmy1MD7K1ewRnf5JA39Yt7axoeHw/v3jJk2uqak+nZEhSZJp86CxGp5eXk8+/4Id
jz/Zyj8goN/AgUcPHtyXsjs+ISHjxPHqqioPDw/TbjOMJSUb37WhX0fTliuj2hr7b1k0y/pDbP2+PXv6dE11tUKhuOP+B8Ja3NPY
2q2AFmti3/ljPfuqbb22vlLaYiU2qaqokJnu6emp/L150CG7uj0v+Xb+eAEgLDqVAdDmDM/jSZI0atx4mxZUKpWxPXpeNXPW3Jvn
S5JUXVWVn3vBMKt7zzhJkvR6/YmjR+VX0jUm1lDy9KmMlnMz008aXnSLif3Dpj09BwwaJP3eMHgoLU2n03l5efUfOMi0WPe4OEmS
1I2Nhie12kHymHGSJJ1KP1lVWbkvJUWSpAGDBrf8em3Huw4IDJAkyWxvH2dOtVWvFXKH2MZ9W1lZIUmSj69vy+/6xUWFlRUWOnFp
rSb2nT/Wu8xqW9TWV0pbrMQmZaWl5WVlZraVkWGsj4FDdrUdl7zCzU2SpNaaTmXmtv/HCwAxEQgBtCG9Xv/btl9+/WWrJElh4eGm
4yLYxM/fz7hCw4su0dFdY2IkSdry04aqykqZZWO6dzc0S27d+LPpkGuSJNXW1BhGousWG9uyn4yhI5IlSSopKso9f/5g2j5JkgYM
Gmw60J8kSVHRXQ2d1P+4fp18B6qOEtujR5foaJ1Ot3nDj4beBc3uVTvedXS3GEmScs5mVVdVmZYvzM8/mJbWBm/lD1oeYlv3rWGo
9/q6umbxQKvV/rBurd01sfv8sZKjqt2adrhSHL4Sm+j1+k0/ft/sVtWTx46dz8mWJGng0KHGiQ7Z1XZc8r9v1/yzlzJz2//jBYCY
CIQAHEyn09XX1eWeP7/71x1vvvTiph9/0Ov1gYFBC+65r1maamnjD99//slHB/btzc/Lramp1mq1dbW1J44eXfvF55Ik+fn7R5k8
Q3j93D8rlcqamup3XluWumtXZUW5Vqutqa4+l3325++/W//1GkMxhUIx4/rrJUkqLiz84K3lWaczNWp1Y2Nj+vFjK5a/UVtT4+bm
ds11s1tWJqZ79/CIzpIk/bDum5KiIkmShowY2bLY7D/92cvLqyAvb/krL6ftSSkvK9NqtY2NjWUlJVmnMzf9+MMbL73Q4NAvc4ZG
wsMH9uv1+qiuXbvFmmlsseNdDxwy1MPDo6mpadUH7184d86w8/enpn747tuJAwY4qvI2HWKb9m1c73gPDw9JklZ9+P6ZzFONDQ3q
xsaszMwP3l5eVVERFd384VUra2L3+WMlW6tth7a+Uky19e5qKaZ79+ysrC9XflKYn294X7t2bP9q1UpJkjp36WI66qCjdrWtl3yX
6GhJkkpLSg7tT2vZn4383Pb/eAEgIJ4hBOAYLz37tNnp7u7uSYOHzJx9g4+vr8WVNDY0nDh61Oy9bd7e3jcvuN3wfc4gqmvXBXff
+8XKT2pran5Y980P6/5QPqH/ANPX186Zu2H9urzcCx+9+45pMQ8Pj7nz5sf26GG2PkNGjNj04w+GYdzCwsPNFouMirrj/ge/XPlJ
RXmZ8bt1c47orsNo4NChG3/4XqWql34fnNAsW991UHDw9Guv+/Hbdfl5ue+98Zrp5pLHjDt66KBDKm/TIbZp3/oHBFw969oN678t
Liz8+L13jfP9/P1vv/f+H79t3gRkfU3sPn+sYWu17dAOV0qzFbbd7mrJx9d37rz5qz/66PiRI6bTg0NCbrnzLtN+ax21q2295Psm
9gsOCamsqPjm89XGicljx147Z67Fue3/8QJAQARCAA7m4aH08vbyDwiIjIrqFhObNHiI9R1ITL/u+t59+2amp+flXqiuqqqvq/P0
9AwND+/dp2/yuHGG3j5N9ezde+k/nti7e/epkydKiorV6saAwMCQTqGJAwYMHDLUtGTy2LE9e/dK+fXXrNOna6qrJIUiODikV58+
YyZMNHaF39LgYcO3/LTB0MWf2eZBg26xsY88/o9DafvSjx8vyMurr69TKpX+gYEhIZ3i4uP7JCZa7PHfJkqlMmnw4L0pu318fZMG
D5Epaeu7HjVufEho6O4dO/JzL2h1uvDwiBGjRw9LHtVyMDe72XqIbdq3o8dPCIuI2L1jR+75c01NTYFBQfEJieMnTzE7ILtNNbHv
/LGSTdW2T1tfKc206e5qKb5vwn2LFu/YuvlcdnaDShUcEtIvaeD4yVNaXneO2tU2nZZKT897Hl60ffOms2dOV1dVNTU1ma5Kfq6t
2wIAOyhqKvI7ug4AANu88+qyvNwL4yZNNvSQCQhozepVRw4c6JOYuODuezu6LgDgwniGEABczOlTGXm5FxQKxYjRYzq6LgAAwLVx
yygAuAydTpefm/vd12skSeo/cFCn0NCOrhEAAHBtBEIAcA3//sfjxu4Evb29p197bcfWBwAAXAEIhADgSnz9/GJiu181c1ZwiOM7
5wAAAKKhUxkAAAAAEBSdygAAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAA
giIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAA
AAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpA
CAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACA
oAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAA
AAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQ
AgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAg
KAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAA
AACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiE
AAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAI
ikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAA
AICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIh
AAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACC
IhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAA
ACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICgCIQAAAAAICgCIQAAAAAIikAI
AAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACIpACAAAAACCIhACAAAAgKAIhAAAAAAgKAIhAAAAAAiKQAgAAAAAgiIQAgAAAICg
CIQAAAAAICgCIQAAAAAIikAIAAAAAIIiEAIAAACAoAiEAAAAACAoAiEAAAAACOr/ATdSqX8E32qeAAAAAElFTkSuQmCC
EOF_GPC
base64 -d images/og-image.png.b64 > images/og-image.png
rm images/og-image.png.b64

echo "Files written. Staging and committing..."
git add -A
git commit -m "Redesign: colorist swatch-deck system across all 5 languages, real contact email, refreshed OG image"
git push

echo "Done. Vercel should redeploy automatically via the GitHub integration."
