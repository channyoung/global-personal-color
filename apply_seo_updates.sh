#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- SEO patch + structural bugfix
# for ALL 5 languages (ko/en/ja/es/zh)
# es/ was rebuilt from the REAL deployed content (which was
# missing question-view/result-view/AI-camera markup, causing
# a JS crash on page load) -- now fixed + SEO tags added.
# Run this from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Applying SEO + structural fixes for ko/en/ja/es/zh..."
mkdir -p ko en ja es zh images

cat > index.html <<'EOF_GPC'
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Your Personal Color</title>

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
      "description": "4가지 간단한 질문과 AI 사진 분석으로 봄웜, 여름쿨, 가을웜, 겨울쿨 중 나에게 어울리는 퍼스널 컬러를 무료로 진단해보세요. 어울리는 컬러 팔레트와 스타일링 가이드까지 확인할 수 있습니다.",
      "applicationCategory": "LifestyleApplication",
      "inLanguage": "ko",
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
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <div class="container">
        <div class="lang-switcher">
            <a href="/ko/" id="lang-ko" class="lang-link active">🇰🇷 KO</a>
            <a href="/en/" id="lang-en" class="lang-link">🇺🇸 EN</a>
            <a href="/ja/" id="lang-ja" class="lang-link">🇯🇵 JA</a>
            <a href="/zh/" id="lang-zh" class="lang-link">🇨🇳 ZH</a>
            <a href="/es/" id="lang-es" class="lang-link">🇪🇸 ES</a>
        </div>
        <header><h1>Find Your Personal Color</h1></header>
        <div class="main-layout-grid">
            <div class="left-column">
                <section class="card intro-card">
                    <h3>✨ 퍼스널 컬러(Personal Color) 가이드</h3>
                    <p>퍼스널 컬러는 개인이 가진 고유의 신체 색상과 가장 조화를 이루는 핵심 컬러 컬렉션입니다. 맞는 톤을 찾으면 안색이 맑아 보이지만, 맞지 않는 톤은 피부가 칙칙해 보일 수 있습니다.</p>
                </section>
                <section class="card celeb-card">
                    <h3>👑 대표 셀럽 리스트</h3>
                    <ul><li><span style="color:#ff7675;font-weight:bold;">봄 웜톤:</span> 아이유, 수지</li><li><span style="color:#74b9ff;font-weight:bold;">여름 쿨톤:</span> 손예진, 태연</li><li><span style="color:#b2bec3;font-weight:bold;">가을 웜톤:</span> 제니, 효리</li><li><span style="color:#6c5ce7;font-weight:bold;">겨울 쿨톤:</span> 카리나, 선미</li></ul>
                </section>
                <section class="card seo-text-section">
                    <h2>퍼스널 컬러로 나만의 매력 더하기</h2>
                    <p>사람은 저마다 타고난 고유의 피부 언더톤과 눈동자 색을 가지고 있습니다. 퍼스널 컬러 진단은 이러한 특징을 봄, 여름, 가을, 겨울의 네 가지 계절 타입으로 분류합니다. 자신에게 맞는 컬러 팔레트를 알면 쇼핑 실패를 줄이고 메이크업과 스타일링 선택의 정확도를 크게 높일 수 있습니다.</p>
                </section>
            </div>
            <div class="right-column">
                <section id="quiz-container" class="card quiz-card">
                    <div id="start-view">
                        <h3 style="text-align: center; margin-bottom: 15px;">🎨 나만의 퍼스널 컬러 진단</h3>
                        <p style="text-align: center; margin-bottom: 20px;">간단한 시각적 질문을 통해 사계절 퍼스널 컬러를 즉시 찾아보세요.</p>
                        <button id="start-btn" class="btn">퍼스널 컬러 테스트 시작하기</button>
                    </div>
                    <div id="question-view" class="hidden">
                        <div class="progress-container"><div id="progress"></div></div>
                        <h3 id="question-text">Question Loading...</h3>
                        <div id="answer-buttons"></div>
                    </div>
                    <div id="result-view" class="hidden">
                        <h3 style="margin-bottom: 5px;">🎉 당신의 퍼스널 컬러 진단 결과</h3>
                        <div id="result-tags"></div>
                        <p id="result-description" style="margin-bottom: 25px;"></p>
                        <h4 id="best-color-title" style="font-weight: 700; margin-bottom: 12px; color:#2d3436;"></h4>
                        <div id="color-palette-display"></div>
                        <h4 id="match-guide-title" style="font-weight: 700; margin-top: 25px; margin-bottom: 12px; color:#2d3436;"></h4>
                        <button id="restart-btn" class="btn" style="background: #2d3436;">다시 테스트하기</button>
                    </div>
                </section>
                <section id="analysis-card-zone" class="card upload-card">
                    <h3>📸 AI 스마트 분석 및 진단 (Beta)</h3>
                    <p style="margin-bottom: 15px;">정확한 분석을 위해 얼굴이 정면으로 잘 나온 밝은 사진을 사용해 주세요. 데이터는 외부 서버에 절대 저장되지 않습니다.</p>
                    <div class="upload-btn-group">
                        <button id="init-cam-btn" class="btn action-btn" style="background: linear-gradient(135deg, #74b9ff, #0984e3);">실시간 카메라 작동하기</button>
                        <button id="trigger-file-btn" class="btn action-btn" style="background: linear-gradient(135deg, #a29bfe, #6c5ce7);">📁 기존 사진 업로드하기</button>
                    </div>
                    <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">
                    <div id="camera-zone" class="hidden">
                        <div class="camera-wrapper">
                            <video id="webcam" autoplay playsinline muted></video>
                            <div class="face-overlay"></div>
                        </div>
                        <button id="capture-btn" class="btn" style="background: linear-gradient(135deg, #00cec9, #00b894);">📸 사진 촬영 및 AI 분석하기</button>
                    </div>
                    <div id="camera-loading" class="hidden" style="text-align:center; padding: 20px 0; font-weight: bold; color: #6c5ce7;">⏳ AI가 실시간 피부 톤 분석 중...</div>
                    <canvas id="calc-canvas" class="hidden"></canvas>
                </section>
                <section class="card faq-section">
                    <h2>자주 묻는 질문 (FAQ)</h2>
                    <div class="faq-item">
                        <h3>퍼스널 컬러 진단이란 무엇인가요?</h3>
                        <p>타고난 피부 톤과 가장 조화를 이루는 최적의 색상을 찾는 과정입니다.</p>
                    </div>
                    <div class="faq-item">
                        <h3>AI 카메라 분석은 어떻게 작동하나요?</h3>
                        <p>얼굴 픽셀의 RGB 평균값을 계산하여 즉시 어울리는 계절 팔레트를 제안합니다.</p>
                    </div>
                </section>
            </div>
        </div>
        <footer style="margin-top:40px; text-align:center; padding:20px; font-size:0.85rem;">
            <p>
                <a href="/ko/about.html">서비스 소개</a> |
                <a href="/ko/privacy.html">개인정보처리방침</a> |
                <a href="/ko/terms.html">이용약관</a> |
                <a href="/ko/contact.html">문의하기</a>
            </p>
            <p style="margin-top:8px;">© 2026 Find Your Personal Color. All rights reserved.</p>
        </footer>
    </div>
    <script>document.getElementById('lang-ko').classList.add('active'); const camErrorMsg = "카메라를 시작할 수 없습니다. 권한을 확인해 주시거나, 대신 [기존 사진 업로드] 기능을 사용해 주세요!";</script>
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
    <meta property="og:description" content="Find Your Personal Color는 사용자가 자신의 퍼스널 컬러를 진단하고 스타일링에 대한 통찰을 얻을 수 있도록 돕는 서비스입니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/about.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="서비스 소개 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color는 사용자가 자신의 퍼스널 컬러를 진단하고 스타일링에 대한 통찰을 얻을 수 있도록 돕는 서비스입니다.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ko/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>서비스 소개</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color는 사용자가 자신의 퍼스널 컬러를 진단하고 스타일링에 대한 통찰을 얻을 수 있도록 돕기 위해 제작되었습니다. 데이터 기반 분석을 통해 일상에 작은 즐거움을 선사하는 것이 목표입니다.</p>
        <a href="/ko/" class="btn" style="margin-top:20px; display:inline-block;">홈으로 돌아가기</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ko/about.html">서비스 소개</a> |
            <a href="/ko/privacy.html">개인정보처리방침</a> |
            <a href="/ko/terms.html">이용약관</a> |
            <a href="/ko/contact.html">문의하기</a>
        </p>
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
    <meta property="og:description" content="Find Your Personal Color 서비스 이용 중 궁금한 점이나 제안 사항이 있다면 이메일로 문의해 주세요.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/contact.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="문의하기 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color 서비스 이용 중 궁금한 점이나 제안 사항이 있다면 이메일로 문의해 주세요.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ko/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>문의하기</h2>
        <p style="line-height:1.8; color:#333;">본 서비스에 대한 문의 사항은 아래 이메일로 연락해 주시기 바랍니다. 신속하게 답변드릴 수 있도록 노력하겠습니다. 문의: contact@global-personal-color.vercel.app</p>
        <a href="/ko/" class="btn" style="margin-top:20px; display:inline-block;">홈으로 돌아가기</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ko/about.html">서비스 소개</a> |
            <a href="/ko/privacy.html">개인정보처리방침</a> |
            <a href="/ko/terms.html">이용약관</a> |
            <a href="/ko/contact.html">문의하기</a>
        </p>
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
    <meta property="og:description" content="Find Your Personal Color의 개인정보처리방침입니다. 서비스는 개인 식별 정보를 저장하지 않습니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/privacy.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="개인정보처리방침 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color의 개인정보처리방침입니다. 서비스는 개인 식별 정보를 저장하지 않습니다.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ko/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>개인정보처리방침</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color는 사용자의 개인정보를 존중합니다. 본 서비스는 어떠한 개인 식별 정보도 저장하지 않습니다. 맞춤형 광고를 제공하기 위해 쿠키를 사용할 수 있는 구글 애드센스를 이용하고 있습니다.</p>
        <a href="/ko/" class="btn" style="margin-top:20px; display:inline-block;">홈으로 돌아가기</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ko/about.html">서비스 소개</a> |
            <a href="/ko/privacy.html">개인정보처리방침</a> |
            <a href="/ko/terms.html">이용약관</a> |
            <a href="/ko/contact.html">문의하기</a>
        </p>
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
    <meta property="og:description" content="Find Your Personal Color의 이용약관입니다. 제공되는 모든 진단 결과는 참고용입니다.">
    <meta property="og:url" content="https://global-personal-color.vercel.app/ko/terms.html">
    <meta property="og:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="이용약관 | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Color의 이용약관입니다. 제공되는 모든 진단 결과는 참고용입니다.">
    <meta name="twitter:image" content="https://global-personal-color.vercel.app/images/og-image.png">
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ko/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>이용약관</h2>
        <p style="line-height:1.8; color:#333;">제공되는 모든 결과는 참고용일 뿐이며 전문적인 조언을 대신할 수 없습니다. 사용자는 본 서비스를 이용하는 동안 타인의 권리를 존중해야 합니다.</p>
        <a href="/ko/" class="btn" style="margin-top:20px; display:inline-block;">홈으로 돌아가기</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ko/about.html">서비스 소개</a> |
            <a href="/ko/privacy.html">개인정보처리방침</a> |
            <a href="/ko/terms.html">이용약관</a> |
            <a href="/ko/contact.html">문의하기</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <div class="container">
        <div class="lang-switcher">
            <a href="/ko/" id="lang-ko" class="lang-link">🇰🇷 KO</a>
            <a href="/en/" id="lang-en" class="lang-link active">🇺🇸 EN</a>
            <a href="/ja/" id="lang-ja" class="lang-link">🇯🇵 JA</a>
            <a href="/zh/" id="lang-zh" class="lang-link">🇨🇳 ZH</a>
            <a href="/es/" id="lang-es" class="lang-link">🇪🇸 ES</a>
        </div>
        <header><h1>Find Your Personal Color</h1></header>
        <div class="main-layout-grid">
            <div class="left-column">
                <section class="card intro-card">
                    <h3>✨ Guide to Personal Color</h3>
                    <p>Personal color is the curated palette that best complements your natural skin undertones, eyes, and hair. Discovering your tone enhances your radiance.</p>
                </section>
                <section class="card celeb-card">
                    <h3>👑 Representative Celebrities</h3>
                    <ul><li><span style="color:#ff7675;font-weight:bold;">Spring Warm:</span> Taylor Swift, Blake Lively</li><li><span style="color:#74b9ff;font-weight:bold;">Summer Cool:</span> Margot Robbie, Elle Fanning</li><li><span style="color:#b2bec3;font-weight:bold;">Autumn Warm:</span> Zendaya, Jennifer Lopez</li><li><span style="color:#6c5ce7;font-weight:bold;">Winter Cool:</span> Anne Hathaway, Dua Lipa</li></ul>
                </section>
                <section class="card seo-text-section">
                    <h2>Enhance Your Beauty with Personal Color</h2>
                    <p>Every individual is born with unique skin undertones and eye colors. Personal color analysis classifies these traits into four distinct seasons: Spring, Summer, Autumn, and Winter. Understanding your specific palette helps reduce shopping failures and dramatically improves your makeup and styling choices.</p>
                </section>
            </div>
            <div class="right-column">
                <section id="quiz-container" class="card quiz-card">
                    <div id="start-view">
                        <h3 style="text-align: center; margin-bottom: 15px;">🎨 Personal Color Analysis Test</h3>
                        <p style="text-align: center; margin-bottom: 20px;">Find your perfect seasonal palette through a few simple visual questions.</p>
                        <button id="start-btn" class="btn">Start Analysis Quiz</button>
                    </div>
                    <div id="question-view" class="hidden">
                        <div class="progress-container"><div id="progress"></div></div>
                        <h3 id="question-text">Question Loading...</h3>
                        <div id="answer-buttons"></div>
                    </div>
                    <div id="result-view" class="hidden">
                        <h3 style="margin-bottom: 5px;">🎉 Your Personal Color Result</h3>
                        <div id="result-tags"></div>
                        <p id="result-description" style="margin-bottom: 25px;"></p>
                        <h4 id="best-color-title" style="font-weight: 700; margin-bottom: 12px; color:#2d3436;"></h4>
                        <div id="color-palette-display"></div>
                        <h4 id="match-guide-title" style="font-weight: 700; margin-top: 25px; margin-bottom: 12px; color:#2d3436;"></h4>
                        <button id="restart-btn" class="btn" style="background: #2d3436;">Restart Quiz</button>
                    </div>
                </section>
                <section id="analysis-card-zone" class="card upload-card">
                    <h3>📸 AI Smart Analysis (Beta)</h3>
                    <p style="margin-bottom: 15px;">Please use a well-lit front-facing photo for accurate analysis. No data leaves your device.</p>
                    <div class="upload-btn-group">
                        <button id="init-cam-btn" class="btn action-btn" style="background: linear-gradient(135deg, #74b9ff, #0984e3);">Activate Live Camera</button>
                        <button id="trigger-file-btn" class="btn action-btn" style="background: linear-gradient(135deg, #a29bfe, #6c5ce7);">📁 Upload Local Photo</button>
                    </div>
                    <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">
                    <div id="camera-zone" class="hidden">
                        <div class="camera-wrapper">
                            <video id="webcam" autoplay playsinline muted></video>
                            <div class="face-overlay"></div>
                        </div>
                        <button id="capture-btn" class="btn" style="background: linear-gradient(135deg, #00cec9, #00b894);">📸 Take Photo & Analyze</button>
                    </div>
                    <div id="camera-loading" class="hidden" style="text-align:center; padding: 20px 0; font-weight: bold; color: #6c5ce7;">⏳ AI Analyzing Skin Tone...</div>
                    <canvas id="calc-canvas" class="hidden"></canvas>
                </section>
                <section class="card faq-section">
                    <h2>Frequently Asked Questions (FAQ)</h2>
                    <div class="faq-item">
                        <h3>What is a personal color analysis?</h3>
                        <p>It's the process of finding the optimal colors that harmonize with your natural skin tone.</p>
                    </div>
                    <div class="faq-item">
                        <h3>How does the AI camera work?</h3>
                        <p>It calculates the RGB values of your facial pixels to suggest a matching seasonal palette instantly.</p>
                    </div>
                </section>
            </div>
        </div>
        <footer style="margin-top:40px; text-align:center; padding:20px; font-size:0.85rem;">
            <p>
                <a href="/en/about.html">About</a> |
                <a href="/en/privacy.html">Privacy Policy</a> |
                <a href="/en/terms.html">Terms of Service</a> |
                <a href="/en/contact.html">Contact</a>
            </p>
            <p style="margin-top:8px;">© 2026 Find Your Personal Color. All rights reserved.</p>
        </footer>
    </div>
    <script>document.getElementById('lang-en').classList.add('active'); const camErrorMsg = "Camera access error. Please check your permissions, or use the [Upload Local Photo] option instead.";</script>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/en/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>About Find Your Personal Color</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color was created to help users diagnose their own colors and gain insights into styling. Our goal is to bring a little joy to everyday life through data-driven analysis.</p>
        <a href="/en/" class="btn" style="margin-top:20px; display:inline-block;">Go Back Home</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/en/about.html">About</a> |
            <a href="/en/privacy.html">Privacy Policy</a> |
            <a href="/en/terms.html">Terms of Service</a> |
            <a href="/en/contact.html">Contact</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/en/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Contact Us</h2>
        <p style="line-height:1.8; color:#333;">For any inquiries regarding this service, please contact us at the email below. We strive to respond to all inquiries promptly. Contact: contact@global-personal-color.vercel.app</p>
        <a href="/en/" class="btn" style="margin-top:20px; display:inline-block;">Go Back Home</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/en/about.html">About</a> |
            <a href="/en/privacy.html">Privacy Policy</a> |
            <a href="/en/terms.html">Terms of Service</a> |
            <a href="/en/contact.html">Contact</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/en/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Privacy Policy</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color respects your privacy. We do not store any personal identification information. We use Google AdSense, which may use cookies to serve personalized advertisements.</p>
        <a href="/en/" class="btn" style="margin-top:20px; display:inline-block;">Go Back Home</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/en/about.html">About</a> |
            <a href="/en/privacy.html">Privacy Policy</a> |
            <a href="/en/terms.html">Terms of Service</a> |
            <a href="/en/contact.html">Contact</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/en/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Terms of Service</h2>
        <p style="line-height:1.8; color:#333;">All results provided are for reference purposes only and do not constitute professional advice. Users are expected to respect the rights of others while using this service.</p>
        <a href="/en/" class="btn" style="margin-top:20px; display:inline-block;">Go Back Home</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/en/about.html">About</a> |
            <a href="/en/privacy.html">Privacy Policy</a> |
            <a href="/en/terms.html">Terms of Service</a> |
            <a href="/en/contact.html">Contact</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <div class="container">
        <div class="lang-switcher">
            <a href="/ko/" id="lang-ko" class="lang-link">🇰🇷 KO</a>
            <a href="/en/" id="lang-en" class="lang-link">🇺🇸 EN</a>
            <a href="/ja/" id="lang-ja" class="lang-link active">🇯🇵 JA</a>
            <a href="/zh/" id="lang-zh" class="lang-link">🇨🇳 ZH</a>
            <a href="/es/" id="lang-es" class="lang-link">🇪🇸 ES</a>
        </div>
        <header><h1>Find Your Personal Color</h1></header>
        <div class="main-layout-grid">
            <div class="left-column">
                <section class="card intro-card">
                    <h3>✨ パーソナルカラー(Personal Color)ガイド</h3>
                    <p>パーソナルカラーとは、生まれ持った肌・瞳・髪の色と最も調和する色のコレクションです。自分に合うトーンを見つけると顔色が明るく見えますが、合わないトーンだと肌がくすんで見えることがあります。</p>
                </section>
                <section class="card celeb-card">
                    <h3>👑 代表的な芸能人リスト</h3>
                    <ul><li><span style="color:#ff7675;font-weight:bold;">スプリングウォーム:</span> 新垣結衣, 広瀬すず</li><li><span style="color:#74b9ff;font-weight:bold;">サマークール:</span> 石原さとみ, 綾瀬はるか</li><li><span style="color:#b2bec3;font-weight:bold;">オータムウォーム:</span> 米倉涼子, 深田恭子</li><li><span style="color:#6c5ce7;font-weight:bold;">ウィンタークール:</span> 宇多田ヒカル, 中島美嘉</li></ul>
                </section>
                <section class="card seo-text-section">
                    <h2>パーソナルカラーで魅力を引き出す</h2>
                    <p>誰もが生まれ持った独自の肌のアンダートーンと瞳の色を持っています。パーソナルカラー診断では、これらの特徴をスプリング・サマー・オータム・ウィンターの4つのシーズンに分類します。自分に合うパレットを知ることで、買い物の失敗を減らし、メイクやスタイリングの精度を大きく高めることができます。</p>
                </section>
            </div>
            <div class="right-column">
                <section id="quiz-container" class="card quiz-card">
                    <div id="start-view">
                        <h3 style="text-align: center; margin-bottom: 15px;">🎨 パーソナルカラー診断テスト</h3>
                        <p style="text-align: center; margin-bottom: 20px;">簡単なビジュアル質問に答えるだけで、あなたの季節タイプをすぐに見つけられます。</p>
                        <button id="start-btn" class="btn">診断テストを始める</button>
                    </div>
                    <div id="question-view" class="hidden">
                        <div class="progress-container"><div id="progress"></div></div>
                        <h3 id="question-text">Question Loading...</h3>
                        <div id="answer-buttons"></div>
                    </div>
                    <div id="result-view" class="hidden">
                        <h3 style="margin-bottom: 5px;">🎉 あなたのパーソナルカラー診断結果</h3>
                        <div id="result-tags"></div>
                        <p id="result-description" style="margin-bottom: 25px;"></p>
                        <h4 id="best-color-title" style="font-weight: 700; margin-bottom: 12px; color:#2d3436;"></h4>
                        <div id="color-palette-display"></div>
                        <h4 id="match-guide-title" style="font-weight: 700; margin-top: 25px; margin-bottom: 12px; color:#2d3436;"></h4>
                        <button id="restart-btn" class="btn" style="background: #2d3436;">もう一度テストする</button>
                    </div>
                </section>
                <section id="analysis-card-zone" class="card upload-card">
                    <h3>📸 AIスマート分析 (Beta)</h3>
                    <p style="margin-bottom: 15px;">正確な分析のため、正面から明るく撮影された写真をご使用ください。データが外部サーバーに保存されることは一切ありません。</p>
                    <div class="upload-btn-group">
                        <button id="init-cam-btn" class="btn action-btn" style="background: linear-gradient(135deg, #74b9ff, #0984e3);">リアルタイムカメラを起動する</button>
                        <button id="trigger-file-btn" class="btn action-btn" style="background: linear-gradient(135deg, #a29bfe, #6c5ce7);">📁 写真をアップロードする</button>
                    </div>
                    <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">
                    <div id="camera-zone" class="hidden">
                        <div class="camera-wrapper">
                            <video id="webcam" autoplay playsinline muted></video>
                            <div class="face-overlay"></div>
                        </div>
                        <button id="capture-btn" class="btn" style="background: linear-gradient(135deg, #00cec9, #00b894);">📸 撮影してAI分析する</button>
                    </div>
                    <div id="camera-loading" class="hidden" style="text-align:center; padding: 20px 0; font-weight: bold; color: #6c5ce7;">⏳ AIが肌トーンをリアルタイム分析中...</div>
                    <canvas id="calc-canvas" class="hidden"></canvas>
                </section>
                <section class="card faq-section">
                    <h2>よくある質問 (FAQ)</h2>
                    <div class="faq-item">
                        <h3>パーソナルカラー診断とは何ですか？</h3>
                        <p>生まれ持った肌のトーンと調和する最適な色を見つけるプロセスです。</p>
                    </div>
                    <div class="faq-item">
                        <h3>AIカメラ分析はどのように機能しますか？</h3>
                        <p>顔部分のピクセルのRGB値を計算し、瞬時に似合う季節パレットを提案します。</p>
                    </div>
                </section>
            </div>
        </div>
        <footer style="margin-top:40px; text-align:center; padding:20px; font-size:0.85rem;">
            <p>
                <a href="/ja/about.html">サービス紹介</a> |
                <a href="/ja/privacy.html">プライバシーポリシー</a> |
                <a href="/ja/terms.html">利用規約</a> |
                <a href="/ja/contact.html">お問い合わせ</a>
            </p>
            <p style="margin-top:8px;">© 2026 Find Your Personal Color. All rights reserved.</p>
        </footer>
    </div>
    <script>document.getElementById('lang-ja').classList.add('active'); const camErrorMsg = "カメラを起動できませんでした。権限をご確認いただくか、代わりに写真アップロード機能をご利用ください。";</script>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ja/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>サービス紹介</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Colorは、ユーザーが自分自身のパーソナルカラーを診断し、スタイリングのヒントを得られるようにするために作られました。データに基づいた分析を通じて、日常に小さな楽しみをお届けすることが目標です。</p>
        <a href="/ja/" class="btn" style="margin-top:20px; display:inline-block;">ホームに戻る</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ja/about.html">サービス紹介</a> |
            <a href="/ja/privacy.html">プライバシーポリシー</a> |
            <a href="/ja/terms.html">利用規約</a> |
            <a href="/ja/contact.html">お問い合わせ</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ja/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>お問い合わせ</h2>
        <p style="line-height:1.8; color:#333;">本サービスに関するお問い合わせは、下記のメールアドレスまでご連絡ください。できるだけ早くご返信できるよう努めます。お問い合わせ先: contact@global-personal-color.vercel.app</p>
        <a href="/ja/" class="btn" style="margin-top:20px; display:inline-block;">ホームに戻る</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ja/about.html">サービス紹介</a> |
            <a href="/ja/privacy.html">プライバシーポリシー</a> |
            <a href="/ja/terms.html">利用規約</a> |
            <a href="/ja/contact.html">お問い合わせ</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ja/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>プライバシーポリシー</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Colorは、ユーザーのプライバシーを尊重します。本サービスは、いかなる個人識別情報も保存しません。パーソナライズされた広告を提供するために、Cookieを使用する場合があるGoogle AdSenseを利用しています。</p>
        <a href="/ja/" class="btn" style="margin-top:20px; display:inline-block;">ホームに戻る</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ja/about.html">サービス紹介</a> |
            <a href="/ja/privacy.html">プライバシーポリシー</a> |
            <a href="/ja/terms.html">利用規約</a> |
            <a href="/ja/contact.html">お問い合わせ</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/ja/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>利用規約</h2>
        <p style="line-height:1.8; color:#333;">提供されるすべての結果は参考情報であり、専門的な助言に代わるものではありません。ユーザーは本サービスの利用中、他者の権利を尊重するものとします。</p>
        <a href="/ja/" class="btn" style="margin-top:20px; display:inline-block;">ホームに戻る</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/ja/about.html">サービス紹介</a> |
            <a href="/ja/privacy.html">プライバシーポリシー</a> |
            <a href="/ja/terms.html">利用規約</a> |
            <a href="/ja/contact.html">お問い合わせ</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <div class="container">
        <div class="lang-switcher">
            <a href="/ko/" id="lang-ko" class="lang-link">🇰🇷 KO</a>
            <a href="/en/" id="lang-en" class="lang-link">🇺🇸 EN</a>
            <a href="/ja/" id="lang-ja" class="lang-link">🇯🇵 JA</a>
            <a href="/zh/" id="lang-zh" class="lang-link">🇨🇳 ZH</a>
            <a href="/es/" id="lang-es" class="lang-link active">🇪🇸 ES</a>
        </div>
        <header><h1>Find Your Personal Color</h1></header>
        <div class="main-layout-grid">
            <div class="left-column">
                <section class="card intro-card">
                    <h3>✨ Guía de Color Personal</h3>
                    <p>El color personal es la paleta seleccionada que mejor complementa los tonos naturales de tu piel, ojos y cabello.</p>
                </section>
                <section class="card celeb-card">
                    <h3>👑 Celebridades Representativas</h3>
                    <ul><li><span style="color:#ff7675;font-weight:bold;">Primavera Cálida:</span> Blake Lively, Emma Stone</li><li><span style="color:#74b9ff;font-weight:bold;">Verano Frío:</span> Margot Robbie, Elle Fanning</li><li><span style="color:#b2bec3;font-weight:bold;">Otoño Cálido:</span> Jennifer Lopez, Zendaya</li><li><span style="color:#6c5ce7;font-weight:bold;">Invierno Frío:</span> Anne Hathaway, Dua Lipa</li></ul>
                </section>
                <section class="card seo-text-section">
                    <h2>Resalta tu Belleza con el Color Personal</h2>
                    <p>Cada persona nace con un tono de piel y de ojos único. El análisis de color personal clasifica estos rasgos en cuatro estaciones: primavera, verano, otoño e invierno. Conocer tu paleta específica reduce los errores al comprar ropa y mejora notablemente tus elecciones de maquillaje y estilismo.</p>
                </section>
            </div>
            <div class="right-column">
                <section id="quiz-container" class="card quiz-card">
                    <div id="start-view">
                        <h3 style="text-align: center; margin-bottom: 15px;">🎨 Test de Color Personal</h3>
                        <p style="text-align: center; margin-bottom: 20px;">Descubre tu paleta de estación perfecta respondiendo unas sencillas preguntas visuales.</p>
                        <button id="start-btn" class="btn">Iniciar Test</button>
                    </div>
                    <div id="question-view" class="hidden">
                        <div class="progress-container"><div id="progress"></div></div>
                        <h3 id="question-text">Question Loading...</h3>
                        <div id="answer-buttons"></div>
                    </div>
                    <div id="result-view" class="hidden">
                        <h3 style="margin-bottom: 5px;">🎉 Tu Resultado de Color Personal</h3>
                        <div id="result-tags"></div>
                        <p id="result-description" style="margin-bottom: 25px;"></p>
                        <h4 id="best-color-title" style="font-weight: 700; margin-bottom: 12px; color:#2d3436;"></h4>
                        <div id="color-palette-display"></div>
                        <h4 id="match-guide-title" style="font-weight: 700; margin-top: 25px; margin-bottom: 12px; color:#2d3436;"></h4>
                        <button id="restart-btn" class="btn" style="background: #2d3436;">Reiniciar Test</button>
                    </div>
                </section>
                <section id="analysis-card-zone" class="card upload-card">
                    <h3>📸 Análisis Inteligente con IA (Beta)</h3>
                    <p style="margin-bottom: 15px;">Para un análisis preciso, usa una foto de frente bien iluminada. Ningún dato sale de tu dispositivo.</p>
                    <div class="upload-btn-group">
                        <button id="init-cam-btn" class="btn action-btn" style="background: linear-gradient(135deg, #74b9ff, #0984e3);">Activar Cámara en Vivo</button>
                        <button id="trigger-file-btn" class="btn action-btn" style="background: linear-gradient(135deg, #a29bfe, #6c5ce7);">📁 Subir una Foto</button>
                    </div>
                    <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">
                    <div id="camera-zone" class="hidden">
                        <div class="camera-wrapper">
                            <video id="webcam" autoplay playsinline muted></video>
                            <div class="face-overlay"></div>
                        </div>
                        <button id="capture-btn" class="btn" style="background: linear-gradient(135deg, #00cec9, #00b894);">📸 Tomar Foto y Analizar</button>
                    </div>
                    <div id="camera-loading" class="hidden" style="text-align:center; padding: 20px 0; font-weight: bold; color: #6c5ce7;">⏳ La IA está analizando tu tono de piel...</div>
                    <canvas id="calc-canvas" class="hidden"></canvas>
                </section>
                <section class="card faq-section">
                    <h2>Preguntas Frecuentes (FAQ)</h2>
                    <div class="faq-item">
                        <h3>¿Qué es un análisis de color personal?</h3>
                        <p>Es el proceso de encontrar los colores óptimos que armonizan con tu tono de piel natural.</p>
                    </div>
                    <div class="faq-item">
                        <h3>¿Cómo funciona el análisis con cámara de IA?</h3>
                        <p>Calcula los valores RGB de los píxeles de tu rostro para sugerir al instante una paleta estacional acorde.</p>
                    </div>
                </section>
            </div>
        </div>
        <footer style="margin-top:40px; text-align:center; padding:20px; font-size:0.85rem;">
            <p>
                <a href="/es/about.html">Sobre Nosotros</a> |
                <a href="/es/privacy.html">Política de Privacidad</a> |
                <a href="/es/terms.html">Términos de Servicio</a> |
                <a href="/es/contact.html">Contacto</a>
            </p>
            <p style="margin-top:8px;">© 2026 Find Your Personal Color. All rights reserved.</p>
        </footer>
    </div>
    <script>document.getElementById('lang-es').classList.add('active'); const camErrorMsg = "No se pudo acceder a la cámara. Revisa los permisos o usa la opción de subir una foto.";</script>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/es/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Sobre Nosotros</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color fue creado para ayudar a los usuarios a diagnosticar sus propios colores y obtener ideas sobre estilismo. Nuestro objetivo es aportar un poco de alegría a la vida cotidiana a través del análisis basado en datos.</p>
        <a href="/es/" class="btn" style="margin-top:20px; display:inline-block;">Volver al Inicio</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/es/about.html">Sobre Nosotros</a> |
            <a href="/es/privacy.html">Política de Privacidad</a> |
            <a href="/es/terms.html">Términos de Servicio</a> |
            <a href="/es/contact.html">Contacto</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/es/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Contacto</h2>
        <p style="line-height:1.8; color:#333;">Para cualquier consulta respecto a este servicio, por favor contáctenos al correo electrónico de abajo. Nos esforzamos por responder a todas las consultas a la brevedad. Contacto: contact@global-personal-color.vercel.app</p>
        <a href="/es/" class="btn" style="margin-top:20px; display:inline-block;">Volver al Inicio</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/es/about.html">Sobre Nosotros</a> |
            <a href="/es/privacy.html">Política de Privacidad</a> |
            <a href="/es/terms.html">Términos de Servicio</a> |
            <a href="/es/contact.html">Contacto</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/es/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Política de Privacidad</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color respeta su privacidad. No almacenamos ninguna información de identificación personal. Utilizamos Google AdSense, que puede usar cookies para mostrar anuncios personalizados.</p>
        <a href="/es/" class="btn" style="margin-top:20px; display:inline-block;">Volver al Inicio</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/es/about.html">Sobre Nosotros</a> |
            <a href="/es/privacy.html">Política de Privacidad</a> |
            <a href="/es/terms.html">Términos de Servicio</a> |
            <a href="/es/contact.html">Contacto</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/es/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>Términos de Servicio</h2>
        <p style="line-height:1.8; color:#333;">Todos los resultados proporcionados son solo para fines de referencia y no constituyen un consejo profesional. Se espera que los usuarios respeten los derechos de los demás al utilizar este servicio.</p>
        <a href="/es/" class="btn" style="margin-top:20px; display:inline-block;">Volver al Inicio</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/es/about.html">Sobre Nosotros</a> |
            <a href="/es/privacy.html">Política de Privacidad</a> |
            <a href="/es/terms.html">Términos de Servicio</a> |
            <a href="/es/contact.html">Contacto</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <div class="container">
        <div class="lang-switcher">
            <a href="/ko/" id="lang-ko" class="lang-link">🇰🇷 KO</a>
            <a href="/en/" id="lang-en" class="lang-link">🇺🇸 EN</a>
            <a href="/ja/" id="lang-ja" class="lang-link">🇯🇵 JA</a>
            <a href="/zh/" id="lang-zh" class="lang-link active">🇨🇳 ZH</a>
            <a href="/es/" id="lang-es" class="lang-link">🇪🇸 ES</a>
        </div>
        <header><h1>Find Your Personal Color</h1></header>
        <div class="main-layout-grid">
            <div class="left-column">
                <section class="card intro-card">
                    <h3>✨ 个人色彩(Personal Color)指南</h3>
                    <p>个人色彩是与你天生的肤色、瞳色和发色最协调的核心色彩组合。找到适合自己的色调会让气色更加明亮，而不合适的色调则可能让皮肤看起来暗沉。</p>
                </section>
                <section class="card celeb-card">
                    <h3>👑 代表明星列表</h3>
                    <ul><li><span style="color:#ff7675;font-weight:bold;">春季暖色:</span> 迪丽热巴, 杨紫</li><li><span style="color:#74b9ff;font-weight:bold;">夏季冷色:</span> 刘亦菲, 倪妮</li><li><span style="color:#b2bec3;font-weight:bold;">秋季暖色:</span> 巩俐, 周迅</li><li><span style="color:#6c5ce7;font-weight:bold;">冬季冷色:</span> 章子怡, 范冰冰</li></ul>
                </section>
                <section class="card seo-text-section">
                    <h2>用个人色彩提升你的魅力</h2>
                    <p>每个人天生都拥有独特的肤色底调和瞳色。个人色彩分析将这些特征划分为春、夏、秋、冬四种季节类型。了解自己专属的色彩范围，能有效减少购物踩雷，并大幅提升妆容与穿搭的精准度。</p>
                </section>
            </div>
            <div class="right-column">
                <section id="quiz-container" class="card quiz-card">
                    <div id="start-view">
                        <h3 style="text-align: center; margin-bottom: 15px;">🎨 个人色彩诊断测试</h3>
                        <p style="text-align: center; margin-bottom: 20px;">只需回答几个简单的视觉问题，即可立即找到你的专属季节色彩类型。</p>
                        <button id="start-btn" class="btn">开始诊断测试</button>
                    </div>
                    <div id="question-view" class="hidden">
                        <div class="progress-container"><div id="progress"></div></div>
                        <h3 id="question-text">Question Loading...</h3>
                        <div id="answer-buttons"></div>
                    </div>
                    <div id="result-view" class="hidden">
                        <h3 style="margin-bottom: 5px;">🎉 你的个人色彩诊断结果</h3>
                        <div id="result-tags"></div>
                        <p id="result-description" style="margin-bottom: 25px;"></p>
                        <h4 id="best-color-title" style="font-weight: 700; margin-bottom: 12px; color:#2d3436;"></h4>
                        <div id="color-palette-display"></div>
                        <h4 id="match-guide-title" style="font-weight: 700; margin-top: 25px; margin-bottom: 12px; color:#2d3436;"></h4>
                        <button id="restart-btn" class="btn" style="background: #2d3436;">重新测试</button>
                    </div>
                </section>
                <section id="analysis-card-zone" class="card upload-card">
                    <h3>📸 AI智能分析诊断 (Beta)</h3>
                    <p style="margin-bottom: 15px;">为了保证分析准确，请使用光线充足、正面清晰的照片。数据绝不会保存在外部服务器上。</p>
                    <div class="upload-btn-group">
                        <button id="init-cam-btn" class="btn action-btn" style="background: linear-gradient(135deg, #74b9ff, #0984e3);">开启实时摄像头</button>
                        <button id="trigger-file-btn" class="btn action-btn" style="background: linear-gradient(135deg, #a29bfe, #6c5ce7);">📁 上传已有照片</button>
                    </div>
                    <input type="file" id="image-file-input" accept="image/*" style="display: none !important;">
                    <div id="camera-zone" class="hidden">
                        <div class="camera-wrapper">
                            <video id="webcam" autoplay playsinline muted></video>
                            <div class="face-overlay"></div>
                        </div>
                        <button id="capture-btn" class="btn" style="background: linear-gradient(135deg, #00cec9, #00b894);">📸 拍照并进行AI分析</button>
                    </div>
                    <div id="camera-loading" class="hidden" style="text-align:center; padding: 20px 0; font-weight: bold; color: #6c5ce7;">⏳ AI正在实时分析肤色中...</div>
                    <canvas id="calc-canvas" class="hidden"></canvas>
                </section>
                <section class="card faq-section">
                    <h2>常见问题 (FAQ)</h2>
                    <div class="faq-item">
                        <h3>什么是个人色彩诊断？</h3>
                        <p>这是一种寻找与你天生肤色最协调的最佳色彩的方法。</p>
                    </div>
                    <div class="faq-item">
                        <h3>AI摄像头分析是如何工作的？</h3>
                        <p>系统会计算你面部像素的RGB平均值，从而即时匹配相应的季节色彩类型。</p>
                    </div>
                </section>
            </div>
        </div>
        <footer style="margin-top:40px; text-align:center; padding:20px; font-size:0.85rem;">
            <p>
                <a href="/zh/about.html">关于我们</a> |
                <a href="/zh/privacy.html">隐私政策</a> |
                <a href="/zh/terms.html">使用条款</a> |
                <a href="/zh/contact.html">联系我们</a>
            </p>
            <p style="margin-top:8px;">© 2026 Find Your Personal Color. All rights reserved.</p>
        </footer>
    </div>
    <script>document.getElementById('lang-zh').classList.add('active'); const camErrorMsg = "无法启动摄像头，请检查权限设置，或改用[上传照片]功能。";</script>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/zh/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>关于我们</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color 旨在帮助用户诊断专属的个人色彩，并获得穿搭造型方面的灵感。我们希望通过数据驱动的分析，为日常生活带来一点小小的乐趣。</p>
        <a href="/zh/" class="btn" style="margin-top:20px; display:inline-block;">返回首页</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/zh/about.html">关于我们</a> |
            <a href="/zh/privacy.html">隐私政策</a> |
            <a href="/zh/terms.html">使用条款</a> |
            <a href="/zh/contact.html">联系我们</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/zh/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>联系我们</h2>
        <p style="line-height:1.8; color:#333;">如对本服务有任何疑问，请通过以下邮箱与我们联系，我们将尽快回复。联系邮箱：contact@global-personal-color.vercel.app</p>
        <a href="/zh/" class="btn" style="margin-top:20px; display:inline-block;">返回首页</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/zh/about.html">关于我们</a> |
            <a href="/zh/privacy.html">隐私政策</a> |
            <a href="/zh/terms.html">使用条款</a> |
            <a href="/zh/contact.html">联系我们</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/zh/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>隐私政策</h2>
        <p style="line-height:1.8; color:#333;">Find Your Personal Color 尊重用户的隐私。本服务不会存储任何个人身份信息。我们使用可能通过Cookie提供个性化广告的 Google AdSense。</p>
        <a href="/zh/" class="btn" style="margin-top:20px; display:inline-block;">返回首页</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/zh/about.html">关于我们</a> |
            <a href="/zh/privacy.html">隐私政策</a> |
            <a href="/zh/terms.html">使用条款</a> |
            <a href="/zh/contact.html">联系我们</a>
        </p>
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
    <link rel="stylesheet" href="../style.css">
    <style>
    * { box-sizing: border-box; }
    .container { max-width: 1200px !important; width: 92% !important; margin: 0 auto !important; padding: 0 15px !important; }
    .main-layout-grid { display: grid !important; grid-template-columns: 1.1fr 0.9fr !important; gap: 40px !important; margin: 30px auto !important; align-items: start !important; }
    @media (max-width: 950px) { .main-layout-grid { grid-template-columns: 1fr !important; gap: 25px !important; } }
    .card { width: 100% !important; margin-bottom: 20px !important; padding: 30px !important; border-radius: 14px !important; box-shadow: 0 4px 20px rgba(0,0,0,0.05) !important; background: #ffffff !important; }
    </style>
</head>
<body>
    <header>
        <div class="container"><h1><a href="/zh/">Find Your Personal Color</a></h1></div>
    </header>
    <main class="container card" style="margin-top:20px; padding:40px;">
        <h2>使用条款</h2>
        <p style="line-height:1.8; color:#333;">本服务提供的所有结果仅供参考，不能替代专业建议。用户在使用本服务期间应尊重他人的合法权益。</p>
        <a href="/zh/" class="btn" style="margin-top:20px; display:inline-block;">返回首页</a>
    </main>
    <footer style="margin-top:40px; text-align:center; padding:20px;">
        <p>
            <a href="/zh/about.html">关于我们</a> |
            <a href="/zh/privacy.html">隐私政策</a> |
            <a href="/zh/terms.html">使用条款</a> |
            <a href="/zh/contact.html">联系我们</a>
        </p>
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
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
wsI2r/vT2VXAcVq1bDHnoZnz33jLdLP0jMyPFn7W2CWm+w8eXLn6d7PP1bd37xuvn2RFkdCKBk8ger2+uKQkJycn4VjimnXrZI5P
WFJSum79XzfdcL0dygQgS/Kp0x/LGCfMQKfTXXPVVTPunhbRpk2dP4UEBxsmGerapcvV46+UJKmwsHDT1q2//LaKQaQgAI3FKy4Z
BUR00/XX9+nVy2yzxuaTqKioeHH+a2Zno/L29n7hmad1Oo2dFmE7nU4X4O/fNjr66qvGL/xgweeffBQSEiLngZu3MYIF4ExvvPuu
zH68pk3DF3+28OXnn62fBhsUGBg4ccKEJZ8v+mH50tEjRvDWAKgHl4zCZZ1IStq8ddvh+Piz5/65lJ9fU1MTGhISGhravl3s0MsG
XzZwYGCg+fE2zSoqLt60ecvOPXuST53KyMwqKSnx9vYOCQ6Ojors0a3byOHDO3XsYPuzKE6n07347NPX33p7eXm5iWY1NTUvvvLq
t9987e7uXvv3n3351T/nz5t9lpn33RsZIeuDgvHpEo4lHo6PP5F0MiU1NSs7u6ioqKy8XK/X+3h7BwQENG/erE3r1h07dOjZvVv3
rl3d3IT7Skuv18cnJGzasvVYYuLZf/4pLCyqrKwMDAho1qzpE4/O7du7t7MLbNiAfv0+/eD9ydPuNvtB80h8vF6vt+KTYlJy8qHD
RxKPHz+fmpqZmVVQWFheXl5dXe3r4xMUFNSiRfOY6LZdu3QaNGBgq5aOu4DZxv11MvnUoSOHTyQlp6SlZmVl5+fnl5aWVlZVSZLk
6eHh6enp7e0dEBAQ4O8fGBgYFhYaFhoaFhbWLDy8RYsWLVs0b96smZeXl3WVq/xgtNPpvaCgMCc3JzsnNzsnOycnNzsnJycn92L+
peKi4qLi4uKSksqKiqqqqqrqar1e7+np6e3tFRIc3CSsSUREm5jo6B7du3Xt0sXb2m2uBjt37d67b7+cllGRkV8t/LRp03ArnqVj
XNx7b72RkJj4zfIVVjxcUv3rUyY1r4VG32tgNQIh7O6ZF19a9fsaEw1uv+XmeXMfUXAJO3fv+WTRovijCXWaZWVnZ2Vnn0hKWr3m
Dx8fn2l3TJk2ZbKPj4+MlWhAQUHhoq+++unXX+vcjFdaWlpaWpqRmblrz96FX3zZrWuXB++9V844Lg4WGRHx4H33vrvgA9PNTpw8
uXTFt1OnTDb+5vSZM4u/WWp2+V27dJly260yizmZfOqHX35Zv2HjpUuXGmxQXFJSXFKSlZ0dfzThj7XrJEkKDgoaO3rUTTdc3zEu
TuazGHXvZ2Z3fLnw0359zL/hmV3OD8uXmijP0hf29h07P/j4k6Tk5DrNLuXnX8rPz829YLZgJ+rSqdM1V403O8VlUXFxbu4F+Z8y
U9PSfvzl1z/WrsvKzm6wgeGVk5GZeejwkZ9XrpQkqVPHDjddP2nClVd6e3tbsgaO218X8vJWfP/D6jV/ZGZlNdamvKKivKKiqLjY
xH28gwcNXPjBAhMFN8jBB6N6Tu8nTp686fYp8tuXl5eXl5cXFBSeT0k9dOTfayB9fHyGDxly/XUTB/bvL39R6vHNClkJLTAw8LOP
PrQuDRp17dz5zfmvWPooB78+7UTlR5mm32tgHQ+tXeMKmFJUXPzS/NfW/vWX2ZZlZWWfLvp81e9rFn38oczLXWrbtWfvU889L2dI
laMJx+57aNZV48Y999QTJgZocYo7brt1/V8bzA4l98miz8eMGtmmdWtJkmpqal545dWqqirTD/H09Hz5uWfkfJ157p9/3v/o401b
tsov2yC/oOCnX1f+9OvKEcOGznloZtvoaEuXoCGVlZXz33zrl5W/mWhj9gpepxs1YrjZQChJUlZOtpwPmtk5OR99unDVmj9qamos
KuP4iaQX57+28PMvZ898YMKVV1r0WJms3l96vf6rJd8s/OJL0133dqLyg9Fhp3dblJWVrduwYd2GDV07d35q3mNdO3d25LPb6HxK
ys7de+S0fPbJeY7saTdQ+etTJpWvhWu816iC1uKVGvvQAeukpKbeMuUOOR8XjNLS06fOuPfsuXMWPdFPv668f9ZsOWnQaM3atZPv
utuihziAm5vbS8894+npabpZWVnZK6+/Yfj5h59/OXL0qNklz7hrWmxMjNlm3yxfceNtk614a6xty7btN94+xepLj9SvvLz8obmP
mn6HlrTwJm34TsGskuISs21W//HntTfdsnL175amQaOs7Oynnnvh4cceLygotG4JjbF6f1VXVz/13AsLPv7EKWlQ5Qejw07vSklI
TJw87e6vly5zyrNbZ/3GTXKajRk1ctzYsfYupg6Vvz5lUvlauMx7DaxAIISLOHP23J3TZ5xPSbX0gTk5uY8++ZTZLi+jVb+veenV
16z4GJp86vTd993f2PUhztIuNvaeu6aZbbZz957f//wzOyfng48/Mdu4Q/v2d0+903SbysrKJ599/u33F5RXVMittXEVFRVvv7/g
yWefr6ystH1pkiSparCDZ154Sc4onXpJ7W/Scj9GmNz6NTU1b733/tPPv1BUVGR7SZu2bL1j+vT0jEzbF2Vk9f56/pX5a9auVbAS
mVR+MEoOPL0rq6am5t0PPvz4s0VOeXYrbNq8RU6zaVMsuLDWdup/fcqhibVwmfcaWIFACFeQnZNz30Ozci9YeV178qnTXy35Rk7L
I0ePPv/KfOueRZKkM2fPPTLvSWd9OmnM9Kl3xrVvZ7bZm+++/9xLLxcVF5tu5u7u/tJzz3p4mLo/uaam5vGnnlH8s++atWvnPfOs
1V1Gtaln+Ltvlq9Yt2GDs6tQRmpaupxmfn6mrqx++bU3lq74VqGKJEmSzpw9N/3+B6w+e9Rh9f7avXev6Zt87ET9B6PDTu928tkX
X27YvNmJBchUWlqaeOKE2Wbdunbp1rWLA+oxUP/rUw5NrIUrvdfACgRCuIK/Nm4yMfqCHIu/WVpaamai9tLS0nlPP2vjvLr7Dx48
ffasLUtQnIeHx0vPPmv2fr9Lly7Jub1k6pTJZgdWfeu99zdu2SK/Qvk2bNr83ocf2WPJTnE+JeXDTxfKbKz+y3g2yut/aN6sWWN/
+uyLLw0DwygrNS1t1tzHbP+mxpb99f5HH9v47NZR/8HomNO7Xb382hvFJeYvhHauY8ePy4kWDr5YVP2vTznUvxYu9l4DKzDKKKQL
eXlmB0tszNpVK1u1bKlsPU5RXFKyfuPGiRMmmGiz6KvF6RkZDivJkTp36jh1ymTbv0ePjoq6/57pptts+3vH8u++t/GJTPhm+YpB
/fsPHjTQloXo1HE/+PYdO+U3Vvl7dEJi4uo//jDbLMDfP7xJkwb/dODQoU8//8LsEvr27n3dNVf36N69aXgTNze3rOycPfv2Lfv2
O9P3kiUcO/bJZ4tmPfiA2eWbYPX+Ss/ITDxuqnMmOCho0rUTBw8cEBUZGRoS4unpWVRUXFRclJ9fcObc2eRTp0+dPn3oSHxhoWX3
Q2riYLSdnNN7fW5ubl06d+rUsWNcbGy72NgmTcL8/PwC/P29vb1LSksLCgrPp5xPOJa4cfOWBidrre3ixYvLVnx77/S7bVgJuzuZ
fEpOs57du9u7EiPXeH1qYi1c6b0G1iEQAv9a/cefJj4xXLx4cdm338lZTtfOnW+YdF3/vn2aNm1aVlaWlpa+edu27374Mb+gQLli
lXf/jHs2bt4iZ3bBxri5ub347NOm5z2rqKh47a235SwtNibmhuuuHTxwQLNmzXSSLjsne9eevT/+8uup06dNP1Cv17/61tsrf/jO
9GWrpqnnklELqPhdes++fY899Yyc/oeePXo0uPGrq6tfef1N00sIDAx8+blnR40YXvuXkRFtIiPaXH/txHcWfGD6WtMly1dMvHpC
VGSk2SKVUWt//b3T1Kex6KioxYsWNgkLq/3LoKDAoKDAVi1bGjvka2pqjh47tnPX7s3btp9ISjL7/Fo5GBVh+vReR/9+fceNHTty
+LA629wowN8/wN+/VcsWA/v3nz5t6t87dz79wksXL140scyffl15z13T1DkbnkFauvkrur29vBw2s65rvD5dYy3qP6WDnggOxLQT
cDXNmja95cYbhg8d2rJFczc397P/nPt11eqffvnV7IfRhGPHampqGnvD/u7Hn+QM/TfzvnunT5tqXIi3l1dwUFDnTh1vufGGR594
6sChQ5aujsN4e3m99OwzU2fca/XVILfedGOvHj1Mt/l55W9yPnbcdecdM++7t/bbW3RUVHRU1I2Trvvw04VmZ0E8n5Ly2++/X3/t
tTKqbpjOTY1nxo4dOlx5+diB/fs3a9Y0OCiooKAw72Jedk7u8RMndu/d5+7u7uwC/59ery8pLc3Ozk5IPP7H2nU7du2S+cARw4Y2
+PvVf/x5+swZEw/09vb+dMH73bt1bfCvbm5uj815uLikxMQAepWVlYu+Wjz/hedllmqW/P1l+tKDB2bc01gyqc3Nza1Ht249unW7
f8Y9yadOr1qz5tKlfBPttXIw1man07uBu5v7mJEjp0+b2rlTR4uqGjJ48FcLP7l5yp0VjY8XkpWdfST+aK+eZs6QTpSRaX5opYiI
CIelDi2+PuvT6Fpo6L1GvdT4IcIUegjhUsaMHPnSc88EBAQYf9OlU6cunTqNGjbswTmPmL79r6Sk9J/z5xuc20ev169aY/5qt6lT
Js+4+64G/9QkLOzD996Zctd00x9qnatXzx633nTjiu9/sOKxrVu1mvXA/abb6PV6OVfOTL71lodnPtjgnzw8POY8NLOsrOzbH340
vZBl335vUyBUWQ+hn5/v0/PmTbhyXO3CwsJCw8JC28XGDh44wOywrvZjyzXndfj5+TZ2h9JSc/Nl3zf97sbSoNFjcx7euGmzib76
P9etnztrVlhYqNlSTbN0f124YGpCmtatWllaQPt2sXNnzzLRQEMHo5GdTu9G7dvFvvvm69bVFhsTc/21E01vip179qg5EBbIuN44
KCjQAZVI2nx91qfFtVDzew3sSr1XLwCWGjxo4JuvvlL740LtP9115x1ml3DyVMM3UZxIOmn2S75WLVvMvO9eEw0C/P2ffOxRszU4
1+wHH7DuptAXnnnK19fU4JCSJB1LTDyfkmK6TauWLWc38tZoNOehmSbGHTE4feaMzFtiGuSmU9G5McDf//OPP756/JVqi6mKu+3m
mxv8xJmUnJx8ytR1UwEBAZNvvcXs8v39/CaMNzUTfVVV1aatNk0RJlm1v0rLTA15cjg+3saS6tPQwWhgv9O7UoYPGWK6wbFEM7ca
Old5mflLYIICHRQINff6bJDm1kKc9xrUp6IPPYAtfH19X3zmaRNXs8i5gaSxSQJ3791r9rFTbrvN9O1zkiT179vHbCeGc/n6+r7w
zFOWPmrStRMH9OtnttnmbdvNtrnrzju8zW1GHx+fqVMmm13Ulm3bzLZpjKouGX3i0bmOHOfdWSLatJnRyJSYZudxHjNyhLe3t5xn
6d2zp+kGpm/nk8OK/RUcFGTirx9+uvDXVattHN+4Dg0djJKdT+9KadGihekGar48RJKkikrz8+P5+/k7oBJJa6/PxmhuLQR5r0GD
CIRwETdOus70V2iREW0a/Ha5tsKihifZS0hMNP1AnU43dvQo020MLh89Wk4zJxrYv/+kidfIb9+sadNHTV6cZnT4yBHTDdzd3S+X
uRnHjDY7PMORo0flLKpB6ukh7Nm9+zUTrnJ2FXbn7+f33ptv+Pj4NPjXQ4fNvHJ6mrt51ahp03DTDeKPJshcVMOVWLW/wkzeIlhW
Vvb8y6+MuHzcI/Oe+Pyrxes3bEw+ddrE7WpyaOhglOx8eleKj4+ZrySyc3IcNvGdFTw9Pc22KSl10OQZ2np9NkZbayHIew0awz2E
cBGmrwQzaN6sWVFRkYkGjf311Gkz3+xGtGnTrGlTswVIktS3d285zZzr0Ydnb9+5MycnV07jZ598wuxHMYPjSSdNN2jfrl1ISIic
RTUND4+Oijxz9pyppzthfqDFxqjngpmbbpjk7BLsLiAg4KN334lr366xBoknzFxr98Ir8194Zb4ixeReuJBfUGC6y84E6/ZXty7m
v5XPLyjYsGnzhk3/TnHu5ubWonnz6KjI9u3adYhr37N79zatW8t/Rg0djJKdT+8mFBYWHjoSfzI5+ey5c+kZmbkXLhQWFZaUlFZW
VlrRYVtdXZ2fnx8aausdqnbS2NcxtRUUWDavidW09fpsdLGaWgsR3mtgAoEQriAwMLBjXJz5ZuZyS2PjiJodfq1dbIzZZzeIaRut
0+lUPq9rQEDAs088MWuu+Tsex4+7YvhQM3fOGBQUFJr9QNa+Xays+iRJkqR2sbGm3x1zL1wor6gwezVOg1RyyahOpxsxbJizq7Cv
uPbt3np1vonRPgoLCx32MdQgIyPDukBo9f7q07uXh4dHVVWV/IfU1NSkZ2SkZ2Ts3L3H8JvmzZoNGTz4irGj+/fta7ozQVsHo71P
7/UVl5Ss+n3Nn+vWxyckKNunV1pWrtI4KElBAebvD3TM5Enaen02RltrIcJ7DUxj2glITcLCNq/709lV2KRjXHs5zeR8A1pfcUlJ
WVmZ6TYtzd09UruGkJAQ0zNWqcGIYUMjI9qcT0k13eyO226TucCc3ByzbVpbMp6NnMFvcnJyLOo2UZu20VEB/g66acfxgoICp0+d
evstN5u+Vi07x/wrR1lWf+q1en/5+/lNnDDh55UrrXteg6zs7J9Xrvx55co2rVvfdecdkyZe01gs1NbBaNfTex3V1dVLV3y76KvF
VnQnylEp4z49Z2nZ0vy7WEpqalVVlb1nntDW67PRBWpqLVz7vcY5tBav1HKfDGCLpvIu17Tubay01NQAgAZ+fn7yF+hvSWMncnMz
P9eQm7vcc0hJiYzNaMkbkpzNKOdJ1Sw6KsrZJShPp9P16tHjmXmP//X76qlTJpu9c8nxO7FMxnCLDbJlf907/S6lzgypaWkvvfra
ndNn5F640GADbR2Mdj2913bx4sW77r3/3Q8+tFMalCRJzfcQyskb5eXlJ5LscnVlbdp6fdqyQPWshUu+18AiXDIKVyDzmy132eml
tsrKSrNtfOSNcPhvYyW+ydYcOUPYKb4Z5Txpw2Rc02vjqB5yBMq4iEvN3N3dPT09AwMDmoQ1adWyRUx0dOfOnfr07GnRbVTW70Rr
WT2epy37q0Xz5u+++caDD8+x6MJRE44cPfrA7DmLFy2s/zlSWwejXU/vRsUlJdMfeND07CauLa69rJ7Yw/FHu8q45dUW2np92rJA
9ayF1t9rYDsCIVyBnOHRJEkyO0iX1Qsvk313iiRJZi9AdUlenuZvbFB8M8p50gZVyYgERXYetFCSJH9/DXQm2/uac6t3ouPZuL8G
Dej/0XvvPv38CxfyTM1TL9+JpKR33l/w3FNP1vm9tg5Gu57ejV5/6x2R06AkSV06dXJzczPbh7n2r7/kzPlpC229Pm1ZoHrWQhPv
NbArLhkFzDA737okSSUlFgzGXWxJY5fh5ydjMxZbELHkbEY5T9qgygrz3cKNXY+nIPUMdupEVu9Ex7N9fw0eOGD1zz/ec9e0oCBl
vrBfufr31LS0Or/U1sHoAEnJyavWrHF2FU7m5+fbqUMHs83ijyYkHDtm70rMtlH/61Nba8F7DeghBMzw9/Pz8fEx/eWc2WFIjcrK
yvLz85WoS2Oahpu/ESgtI0P+AtNlNJZ591F9cm4cTTppZkhxKELOhC5LvljUS/ZUhCoXEBDw0P333Xv3XVu3/71567bde/fa8tVD
VVXVur823D31ztq/1NbB6AA//vKrnJGfO3fqOOHKK3t06xbRprWfn5/X/w7nmJ6RMe6aa+1VokOMHjni2HEzU7xIkrR46bJ3Xn/N
fmW4xuvTNdYC4mCUUcC8li1anD13zkQDsxMVGp05e07N4wrYT1BQYEBAgOnRGiy6ZOvUaTONw5s0aWwAbk9PT9O3hsoZZ3L/wYNm
28B2gYGBgYGBhYWmZp44e+4flwmEBl5eXmNHjxo7epQkSalpacdPJJ06ffqflJTzKampaWmXLl2Sv6i9+/fXCYSqOhjVYPvfO0w3
cHNze+qxR2+64XoTbeTcba5yY0eP+uCTT802+2vjpr82bhorb0Z1K7jG69M11gLW01q84pJRwLzYmLamG6Skpsqcxl3kFNGpg5nJ
xJJPnZL5STcnN/fcP+fNPF3HRi9/8jc3TEX9q+zqKC8v/2vjJtNtoBQTu9Ig/uhRx1TiFG1atx47etT9M+55/eWXVnz91ba/1u3Y
tGHpV1/Mm/tIvz69zT68wQ+d6jkYne5Sfr7ZSzxuvelG02lQkqS8PLVPJmRWVGTkoAH95bR88dVXM7Oy7FeJa7w+XWMtIAg3SdJp
8B/gUN3MDaqm1+vXb9woZ1Eym7mknub6cKqrq9fLS1nrN2w029Hao1u3xv5kdg7rxOMnTDdYsmx5kSW3f8AWZnv/Nm/bLlTHe2Bg
YI9u3W6/5eYvF3664O23TI+ncqmha9TVczA6XaaMC/6vv3ai2TYJiYlKlONkd9wua2rZgoLC+x6aZeN91MeOH5/3zLMN/sk1Xp+u
sRawltOzkmX/6CEEzBvY3/yXpktXrDA7D8He/QfijyYoVJT2jBw21Gybr5Z8Y3YzlpeXf710mdlFjRg2rLE/hYQEm37s9p07TXzW
OZGU9Pnir80WAKWMbHxXGly8ePH3P+w40qmajRw+bMjgQSYaVFVV1b8nVj0Ho9OVlpofvLFFC/OTtq/f4Apf9l02aJCcbmdJks6c
PXfrHVMPx8db8SxJycmPzHvitjunHWnk4a7x+nSNtYAgCISAeR07xLVu1cp0m/SMzI8WfmaiQVFx8Wtvva1oXRrTpXPnyIgI023S
MzLe/+hj023e/eDDrOxs021iY2Li2rdr7K9x7czMuFVRUfHYk083OLTMoSNHZsycVW7JcOGwUedOHWPaRptu89HCz+Tc+dmY8vLy
5d99//b7C6xeghM1b9bMdAOvencWqedgdDo/GQPumx0JbOv2v4+4ynXLTzz6qLu7u5yWWdnZU++594X5r5q9xt6gqLh49R9/3nXv
/TfeNnnDps0mBvJxjdena6wFBEEgBMzT6XTXXDXebLOvly5b9OVXDV7XcSEv76E5c0+fkTv2jEvS6XS333Kz2WbLvv1uwcefNDg9
d1VV1fsfffztDz+aXYjpJ+rcqaPZJRw4dOjG26f89vvv2Tk5lZWVObm5O3bteuq5F6bec69FQ3pAEVNuu9V0g8ysrIcffdyKST5T
09Le/+jjsVdd/cY772Zn51hboE3+OX9++v0PrFm7ttxcX0GDTF/hHBISUv/zvXoORqdrEhZmts2GTZtN/DUtPf3Zl15WriIna98u
9sF7Z8hsXFNT88vK3yZMuuHu++7/eumy/QcPZmVnl5eX19TU5BcUpKSmJiQm/rF23RvvvHv7tLuGj73i6edfkHMjvWu8Pl1jLSAI
pp0AZLn5hhu+WvKN2Y9rHy38bMu27TdeP6l/3z7h4eHlZeVp6embt2797sefGryTRzSTrp24ZNlys8Nnf/n1ki3btt846brBAwc0
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
2kZH9enVa/jQIa1btXJ2mU6Wl3fx6LFjiSdOnD17LjMrKys7u7ikuLysvLKqys/PLzAgICDAv0lYk7j27Tq0b98hLq5dbIxSrxPX
eH26xlqgQXM+LnF2CZYhEAIAAACAMjQXCPmyAQAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUgRAAAAAABOUhMbsyAAAAAChC
a/GKHkIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUARCAAAAABAUo4wCAAAAgEK0Fq88dJorGQAAAABUSXPxiktGAQAAAEBQ
BEIAAAAAEBSBEAAAAAAERSAEAAAAAEERCAEAAABAUEw7AQAAAAAK0Vq8oocQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSB
EAAAAAAERSAEAAAAAEEx7QQAAAAAKERr8YoeQgAAAAAQFIEQAAAAAARFIAQAAAAAQREIAQAAAEBQBEIAAAAAEBSBEAAAAAAExbQT
AAAAAKAQrcUrD2cXAAAKS8vIfP71tyRJuuryMddddaWzyzFDW9XK5JIrZQ9sKLgSXs+ARhEIoUYlpaWznnjGbDMtvuU0uGo6nc7b
yys4KDAqIqJvrx49u3Zxc+NybicrLCo6cDj++Mnk1IyMoqLi0rIyP1/fkOCgqIiIbp079uzaxcPDNc+fDb5EPTw8fH18fH18wpuE
RbZpHRMV1b1LJ1fdAjCY9+IrF/IuSpL01kvPhQYH129QU1Mz+6lnS0vLJEm6bEC/abfd0uBy1m3a8uNvqyVJGjti2M3XTbRnyc5U
Ulq6efuOwwnHMrOyK6uqgoMCQ0NCOsTG9OzWNToyQqdTpr/Alc5L+QWFc599wYoHTr7p+hGXDVa6HEBomjlxAC5Mr9eXlZeX5ZRn
5eTuPXiobVTkfVPvaBIW6uy6BFVRWbl67fpN2/4ur6io/fui4uKi4uLU9Iwde/b6+/ldOWbUmOFDNfTxyxZVVVWFRUWFRUXZubmJ
SSclSfL387tsQP9rrrzcx9vb2dXBLjrExu7M2y9J0slTpwf06V2/QUpauiENSpKUdOp0Y8sx/qlDu1g7lKkKaRmZ7y9cdPFSvvE3
F/IuXsi7eOrM2TV/bXxm7sPRkRE2PgXnJQD2wykDUJ2z/5x/99PPnnvsEW8vL2fXIpyL+fkff7H43PkU082KS0p+WvV70yZN+vTs
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
EOF_GPC
base64 -d images/og-image.png.b64 > images/og-image.png
rm images/og-image.png.b64

echo "Files written. Staging and committing..."
git add -A
git commit -m "SEO + bugfix: unify ko/en/ja/es/zh structure, fix es crash (missing quiz/result/camera markup), fix ko/es script.js and about.html header, add meta/hreflang/OG/Twitter/JSON-LD, add sitemap hreflang, add OG image"
git push

echo "Done. Vercel should redeploy automatically via the GitHub integration."
