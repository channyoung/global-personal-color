#!/usr/bin/env bash
set -e

# ==============================================================
# Find Your Personal Color -- contact email upgrade
# Replaces seanstudio.contact@gmail.com with the real domain
# email contact@findyourpersonalcolor.com (forwarded to Gmail
# via Porkbun Email Forwarding) across all 5 language contact pages.
# Run from the ROOT of your cloned repo (global-personal-color/)
# ==============================================================

echo "Updating contact email across all languages..."
mkdir -p en ja ko es zh

cat > en/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Find Your Personal Color</title>
    <meta name="description" content="Have questions about Find Your Personal Color? Reach out to us via email.">
    <link rel="canonical" href="https://findyourpersonalcolor.com/en/contact.html">
    <link rel="alternate" hreflang="ko" href="https://findyourpersonalcolor.com/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://findyourpersonalcolor.com/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://findyourpersonalcolor.com/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://findyourpersonalcolor.com/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://findyourpersonalcolor.com/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://findyourpersonalcolor.com/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Contact Us | Find Your Personal Color">
    <meta property="og:description" content="Have questions about Find Your Personal Color? Reach out to us via email.">
    <meta property="og:url" content="https://findyourpersonalcolor.com/en/contact.html">
    <meta property="og:image" content="https://findyourpersonalcolor.com/images/og-image.png">
    <meta property="og:locale" content="en_US">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Contact Us | Find Your Personal Color">
    <meta name="twitter:description" content="Have questions about Find Your Personal Color? Reach out to us via email.">
    <meta name="twitter:image" content="https://findyourpersonalcolor.com/images/og-image.png">
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
        <p>For any inquiries regarding this service, please contact us at the email below. We strive to respond to all inquiries promptly. Contact: contact@findyourpersonalcolor.com</p>
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

cat > ja/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>お問い合わせ | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Colorのご利用に関するご質問やご意見は、メールにてお問い合わせください。">
    <link rel="canonical" href="https://findyourpersonalcolor.com/ja/contact.html">
    <link rel="alternate" hreflang="ko" href="https://findyourpersonalcolor.com/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://findyourpersonalcolor.com/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://findyourpersonalcolor.com/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://findyourpersonalcolor.com/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://findyourpersonalcolor.com/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://findyourpersonalcolor.com/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="お問い合わせ | Find Your Personal Color">
    <meta property="og:description" content="Find Your Personal Colorのご利用に関するご質問やご意見は、メールにてお問い合わせください。">
    <meta property="og:url" content="https://findyourpersonalcolor.com/ja/contact.html">
    <meta property="og:image" content="https://findyourpersonalcolor.com/images/og-image.png">
    <meta property="og:locale" content="ja_JP">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="es_ES">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="お問い合わせ | Find Your Personal Color">
    <meta name="twitter:description" content="Find Your Personal Colorのご利用に関するご質問やご意見は、メールにてお問い合わせください。">
    <meta name="twitter:image" content="https://findyourpersonalcolor.com/images/og-image.png">
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
        <p>本サービスに関するお問い合わせは、下記のメールアドレスまでご連絡ください。できるだけ早くご返信できるよう努めます。お問い合わせ先: contact@findyourpersonalcolor.com</p>
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

cat > ko/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의하기 | Find Your Personal Color</title>
    <meta name="description" content="Find Your Personal Color 서비스 이용 중 궁금한 점이나 제안 사항이 있다면 이메일로 문의해 주세요.">
    <link rel="canonical" href="https://findyourpersonalcolor.com/ko/contact.html">
    <link rel="alternate" hreflang="ko" href="https://findyourpersonalcolor.com/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://findyourpersonalcolor.com/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://findyourpersonalcolor.com/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://findyourpersonalcolor.com/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://findyourpersonalcolor.com/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://findyourpersonalcolor.com/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="문의하기 | Find Your Personal Color">
    <meta property="og:url" content="https://findyourpersonalcolor.com/ko/contact.html">
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
        <p>본 서비스에 대한 문의 사항은 아래 이메일로 연락해 주시기 바랍니다. 신속하게 답변드릴 수 있도록 노력하겠습니다.<br>문의: contact@findyourpersonalcolor.com</p>

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

cat > es/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto | Find Your Personal Color</title>
    <meta name="description" content="¿Tienes preguntas sobre Find Your Personal Color? Contáctanos por correo electrónico.">
    <link rel="canonical" href="https://findyourpersonalcolor.com/es/contact.html">
    <link rel="alternate" hreflang="ko" href="https://findyourpersonalcolor.com/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://findyourpersonalcolor.com/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://findyourpersonalcolor.com/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://findyourpersonalcolor.com/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://findyourpersonalcolor.com/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://findyourpersonalcolor.com/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="Contacto | Find Your Personal Color">
    <meta property="og:description" content="¿Tienes preguntas sobre Find Your Personal Color? Contáctanos por correo electrónico.">
    <meta property="og:url" content="https://findyourpersonalcolor.com/es/contact.html">
    <meta property="og:image" content="https://findyourpersonalcolor.com/images/og-image.png">
    <meta property="og:locale" content="es_ES">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="zh_CN">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Contacto | Find Your Personal Color">
    <meta name="twitter:description" content="¿Tienes preguntas sobre Find Your Personal Color? Contáctanos por correo electrónico.">
    <meta name="twitter:image" content="https://findyourpersonalcolor.com/images/og-image.png">
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
        <p>Para cualquier consulta respecto a este servicio, por favor contáctenos al correo electrónico de abajo. Nos esforzamos por responder a todas las consultas a la brevedad. Contacto: contact@findyourpersonalcolor.com</p>
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

cat > zh/contact.html <<'EOF_GPC'
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>联系我们 | Find Your Personal Color</title>
    <meta name="description" content="对 Find Your Personal Color 服务有任何疑问？欢迎通过邮箱与我们联系。">
    <link rel="canonical" href="https://findyourpersonalcolor.com/zh/contact.html">
    <link rel="alternate" hreflang="ko" href="https://findyourpersonalcolor.com/ko/contact.html">
    <link rel="alternate" hreflang="en" href="https://findyourpersonalcolor.com/en/contact.html">
    <link rel="alternate" hreflang="ja" href="https://findyourpersonalcolor.com/ja/contact.html">
    <link rel="alternate" hreflang="es" href="https://findyourpersonalcolor.com/es/contact.html">
    <link rel="alternate" hreflang="zh" href="https://findyourpersonalcolor.com/zh/contact.html">
    <link rel="alternate" hreflang="x-default" href="https://findyourpersonalcolor.com/en/contact.html">
    <meta name="robots" content="index, follow">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Find Your Personal Color">
    <meta property="og:title" content="联系我们 | Find Your Personal Color">
    <meta property="og:description" content="对 Find Your Personal Color 服务有任何疑问？欢迎通过邮箱与我们联系。">
    <meta property="og:url" content="https://findyourpersonalcolor.com/zh/contact.html">
    <meta property="og:image" content="https://findyourpersonalcolor.com/images/og-image.png">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:locale:alternate" content="ko_KR">
    <meta property="og:locale:alternate" content="en_US">
    <meta property="og:locale:alternate" content="ja_JP">
    <meta property="og:locale:alternate" content="es_ES">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="联系我们 | Find Your Personal Color">
    <meta name="twitter:description" content="对 Find Your Personal Color 服务有任何疑问？欢迎通过邮箱与我们联系。">
    <meta name="twitter:image" content="https://findyourpersonalcolor.com/images/og-image.png">
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
        <p>如对本服务有任何疑问，请通过以下邮箱与我们联系，我们将尽快回复。联系邮箱：contact@findyourpersonalcolor.com</p>
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

echo "Files written. Staging and committing..."
git add -A
git commit -m "Upgrade contact email to contact@findyourpersonalcolor.com across all languages"
git push

echo "Done."
