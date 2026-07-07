import os
import shutil

# 1. 5개 국어 통합 번역 마스터 데이터
lang_master = {
    'ko': {
        'TITLE': '퍼스널 컬러 셀프 진단 테스트 - 3초 만에 찾는 나의 톤',
        'DESCRIPTION': '집에서 간편하게 확인하는 퍼스널 컬러 셀프 진단 도구입니다. 봄 웜, 여름 쿨, 가을 웜, 겨울 쿨 중 당신에게 가장 어울리는 스타일링 가이드를 확인해보세요.',
        'START_TITLE': '나만의 퍼스널 컬러 찾기',
        'START_DESC': '간단한 몇 가지 질문을 통해 당신의 피부 톤에 가장 잘 어울리는 인생 컬러와 스타일링 매칭 가이드를 확인해보세요.',
        'START_BTN': '진단 시작하기',
        'LOADING_TEXT': '질문 로딩 중...',
        'RESULT_TITLE': '당신의 퍼스널 컬러 결과',
        'RESTART_BTN': '다시 테스트하기',
        'SEO_TITLE': '퍼스널 컬러(Personal Color)란 무엇인가요?',
        'SEO_DESC': '퍼스널 컬러는 개인이 가진 고유의 신체 색상과 가장 조화를 이루어 생기 있게 만드는 핵심 컬러입니다.',
        'FAQ_TITLE': '자주 묻는 질문 (FAQ)',
        'FAQ_Q': 'Q. 퍼스널 컬러 셀프 진단은 정확한가요?',
        'FAQ_A': 'A. 본 테스트는 데이터에 기반한 가이드를 제공합니다.',
        'js': {}
    },
    'en': {
        'TITLE': 'Personal Color Self-Test - Find Your Tone in 3 Seconds',
        'DESCRIPTION': 'An easy home personal color self-test tool. Find the best styling guide for you among Spring Warm, Summer Cool, Autumn Warm, and Winter Cool.',
        'START_TITLE': 'Find Your Personal Color',
        'START_DESC': 'Find your perfect life color and styling match guide for your skin tone through a few simple questions.',
        'START_BTN': 'Start Analysis',
        'LOADING_TEXT': 'Loading questions...',
        'RESULT_TITLE': 'Your Personal Color Result',
        'RESTART_BTN': 'Test Again',
        'SEO_TITLE': 'What is Personal Color?',
        'SEO_DESC': 'Personal color is the key color that harmonizes best with an individual\'s unique natural body color to make them look vibrant.',
        'FAQ_TITLE': 'Frequently Asked Questions (FAQ)',
        'FAQ_Q': 'Q. Is the personal color self-test accurate?',
        'FAQ_A': 'A. This test provides a guide based on data.',
        'js': {
            '1. 내 피부색은 어떤 톤에 더 가까운가요?': '1. Which tone is closer to your skin color?',
            '노란기가 도는 따뜻한 톤': 'Warm tone with a yellowish tint',
            '붉은기가 도는 차가운 톤': 'Cool tone with a reddish tint'
        }
    },
    'ja': {
        'TITLE': 'パーソナルカラーセルフ診断テスト - 3秒で見つかる私のトーン',
        'DESCRIPTION': '自宅で簡単に確認できるパーソナルカラーセルフ診断ツールです。スプリングウォーム、サマークール、オータムウォーム、ウィンタークールの中から、あなたに最も似合うスタイリングガイドを確認してみてください。',
        'START_TITLE': '自分だけのパーソナルカラー診断',
        'START_DESC': '簡単なステップの質問を通じて、あなたの肌のトーンに最もよく似合う人生のカラーとスタイリングマッチングガイドを確認してみてください。',
        'START_BTN': '診断を始める',
        'LOADING_TEXT': '質問を読み込み中...',
        'RESULT_TITLE': 'あなたに似合うパーソナルカラー診断結果',
        'RESTART_BTN': 'もう一度テストする',
        'SEO_TITLE': 'パーソナルカラー（Personal Color）とは何ですか？',
        'SEO_DESC': 'パーソナルカラーとは、個人が持つ固有のボディーカラーと最も調和し、生き生きと見せるキーカラーです。',
        'FAQ_TITLE': 'よくある質問 (FAQ)',
        'FAQ_Q': 'Q. パーソナルカラーのセルフ診断は正確ですか？',
        'FAQ_A': 'A. 本テストはデータに基づいたガイドを提供します。',
        'js': {
            '1. 내 피부색은 어떤 톤에 더 가까운가요?': '1. 肌の色はどちらのトーンに近いですか？',
            '노란기가 도는 따뜻한 톤': '黄みのあるイエベ（ウォームトーン）',
            '붉은기가 도는 차가운 톤': '赤みのあるブルベ（クールトーン）'
        }
    },
    'es': {
        'TITLE': 'Test de Color Personal - Encuentra tu tono en 3 segundos',
        'DESCRIPTION': 'Una herramienta de auto-diagnóstico de color personal fácil de usar en casa. Descubre la mejor guía de estilo para ti entre Cálido de Primavera, Frío de Verano, Cálido de Otoño y Frío de Invierno.',
        'START_TITLE': 'Encuentra tu Color Personal',
        'START_DESC': 'Descubre el color ideal y la guía de estilo perfecta para tu tono de piel a través de unas sencillas preguntas.',
        'START_BTN': 'Iniciar Diagnóstico',
        'LOADING_TEXT': 'Cargando preguntas...',
        'RESULT_TITLE': 'Resultado de tu Color Personal',
        'RESTART_BTN': 'Hacer el test de nuevo',
        'SEO_TITLE': '¿Qué es el Color Personal?',
        'SEO_DESC': 'El color personal is el color clave que mejor armoniza con el color natural único del cuerpo de una persona para hacerla lucir radiente.',
        'FAQ_TITLE': 'Preguntas Frecuentes (FAQ)',
        'FAQ_Q': 'P. ¿Es preciso el auto-diagnóstico de color personal?',
        'FAQ_A': 'R. Este test proporciona una guía basada en datos.',
        'js': {
            '1. 내 피부색은 어떤 톤에 더 가까운가요?': '1. ¿Qué tono se acerca más al color de tu piel?',
            '노란기가 도는 따뜻한 톤': 'Tono cálido con un toque amarillento',
            '붉은기가 도는 차가운 톤': 'Tono frío con un toque rojizo'
        }
    },
    'zh': {
        'TITLE': '个人色彩自测 - 3秒钟找到属于你的色调',
        'DESCRIPTION': '在家即可轻松完成的个人色彩自测工具。快来确认在春季暖色、夏季冷色、秋季暖色、冬季冷色中，最适合您的穿搭指南吧。',
        'START_TITLE': '寻找专属于你的个人色彩',
        'START_DESC': '通过几个简单的提问，确认最适合您肤色的本命颜色与穿搭推荐指南。',
        'START_BTN': '开始诊断',
        'LOADING_TEXT': '问题加载中...',
        'RESULT_TITLE': '您的个人色彩诊断结果',
        'RESTART_BTN': '重新测试',
        'SEO_TITLE': '什么是个人色彩（Personal Color）？',
        'SEO_DESC': '个人色彩是指与个人固有的身体肤色最协调、能让人看起来气色生动的核心色彩。',
        'FAQ_TITLE': '常见问题 (FAQ)',
        'FAQ_Q': 'Q. 个人色彩自测准确吗？',
        'FAQ_A': 'A. 本测试提供基于数据的参考指南。',
        'js': {
            '1. 내 피부색은 어떤 톤에 더 가까운가요?': '1. 您的肤色更接近哪种色调？',
            '노란기가 도는 따뜻한 톤': '带有黄调的暖色调',
            '붉은기가 도는 차가운 톤': '带有红调的冷色调'
        }
    }
}

HTML_TEMPLATE = """<!DOCTYPE html>
<html lang="{LANG}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{TITLE}</title>
    <meta name="description" content="{DESCRIPTION}">
    
    <link rel="alternate" hreflang="x-default" href="https://yourdomain.com/en/" />
    <link rel="alternate" hreflang="en" href="https://yourdomain.com/en/" />
    <link rel="alternate" hreflang="ko" href="https://yourdomain.com/ko/" />
    <link rel="alternate" hreflang="ja" href="https://yourdomain.com/ja/" />
    <link rel="alternate" hreflang="es" href="https://yourdomain.com/es/" />
    <link rel="alternate" hreflang="zh" href="https://yourdomain.com/zh/" />

    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1><a href="/{LANG}/">PaletteTone</a></h1>
            <nav>
                <select onchange="location = this.value;">
                    <option value="/en/" {en_sel}>English</option>
                    <option value="/ko/" {ko_sel}>한국어</option>
                    <option value="/ja/" {ja_sel}>日本語</option>
                    <option value="/es/" {es_sel}>Español</option>
                    <option value="/zh/" {zh_sel}>简体中文</option>
                </select>
            </nav>
        </div>
    </header>

    <main class="container">
        <div class="ad-wrapper ad-top"><p class="ad-placeholder">ADSENSE_TOP</p></div>

        <section id="quiz-container" class="card">
            <div id="start-view">
                <h2>{START_TITLE}</h2>
                <p style="color:#636e72; margin: 10px 0 25px 0;">{START_DESC}</p>
                <button id="start-btn" class="btn">{START_BTN}</button>
            </div>

            <div id="question-view" class="hidden">
                <div class="progress-bar"><div id="progress"></div></div>
                <h3 id="question-text" style="margin-bottom:20px;">{LOADING_TEXT}</h3>
                <div id="answer-buttons" class="btn-group"></div>
            </div>

            <div id="result-view" class="hidden">
                <h2>{RESULT_TITLE}</h2>
                <div id="result-tags"></div>
                <p id="result-description" style="color:#2d3436; margin-bottom:25px;"></p>
                <button id="restart-btn" class="btn btn-secondary">{RESTART_BTN}</button>
            </div>
        </section>

        <div class="ad-wrapper ad-middle"><p class="ad-placeholder">ADSENSE_MIDDLE</p></div>

        <section class="seo-text-section card">
            <h2>{SEO_TITLE}</h2>
            <p>{SEO_DESC}</p>
        </section>

        <section class="faq-section card">
            <h2>{FAQ_TITLE}</h2>
            <div class="faq-item">
                <h3>{FAQ_Q}</h3>
                <p>{FAQ_A}</p>
            </div>
        </section>

        <div class="ad-wrapper ad-bottom"><p class="ad-placeholder">ADSENSE_BOTTOM</p></div>
    </main>

    <footer>
        <div class="container"><p>&copy; 2026 PaletteTone. All rights reserved.</p></div>
    </footer>
    <script src="script.js"></script>
</body>
</html>"""

# 기준이 되는 한국어 자바스크립트 위치 파악 (ko 폴더 내부 혹은 루트 폴더)
base_js = "ko/script.js" if os.path.exists("ko/script.js") else "script.js"

for lang, data in lang_master.items():
    os.makedirs(lang, exist_ok=True)
    
    # [1] HTML 정적 파일 완전 가공 및 생성
    html_content = HTML_TEMPLATE.format(
        LANG=lang, TITLE=data['TITLE'], DESCRIPTION=data['DESCRIPTION'],
        START_TITLE=data['START_TITLE'], START_DESC=data['START_DESC'], START_BTN=data['START_BTN'],
        LOADING_TEXT=data['LOADING_TEXT'], RESULT_TITLE=data['RESULT_TITLE'], RESTART_BTN=data['RESTART_BTN'],
        SEO_TITLE=data['SEO_TITLE'], SEO_DESC=data['SEO_DESC'], FAQ_TITLE=data['FAQ_TITLE'],
        FAQ_Q=data['FAQ_Q'], FAQ_A=data['FAQ_A'],
        en_sel='selected' if lang == 'en' else '', ko_sel='selected' if lang == 'ko' else '',
        ja_sel='selected' if lang == 'ja' else '', es_sel='selected' if lang == 'es' else '',
        zh_sel='selected' if lang == 'zh' else ''
    )
    with open(f"{lang}/index.html", "w", encoding="utf-8") as f:
        f.write(html_content)
        
    # [2] script.js도 각 폴더에 복사한 뒤 내부 질문 문구 치환
    if os.path.exists(base_js):
        with open(base_js, "r", encoding="utf-8") as f:
            js_content = f.read()
        for kr_txt, target_txt in data['js'].items():
            js_content = js_content.replace(kr_txt, target_txt)
        with open(f"{lang}/script.js", "w", encoding="utf-8") as f:
            f.write(js_content)

print("🎉 [서버 배포용 100% 정적 다국어 빌드가 완벽히 성공했습니다!]")
