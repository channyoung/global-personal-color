import os

lang_config = {
    'ko': {
        'lang_attr': 'ko', 'title': 'Find Your Personal Color', 'header_title': 'Find Your Personal Color',
        'intro_title': '✨ 퍼스널 컬러(Personal Color) 가이드',
        'intro_desc': '퍼스널 컬러는 개인이 가진 고유의 신체 색상과 가장 조화를 이루는 핵심 컬러 컬렉션입니다. 맞는 톤을 찾으면 안색이 맑아 보이지만, 맞지 않는 톤은 피부가 칙칙해 보일 수 있습니다.',
        'celeb_title': '👑 대표 셀럽 리스트',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">봄 웜톤:</span> 아이유, 수지</li><li><span style="color:#74b9ff;font-weight:bold;">여름 쿨톤:</span> 손예진, 태연</li><li><span style="color:#b2bec3;font-weight:bold;">가을 웜톤:</span> 제니, 한소희</li><li><span style="color:#6c5ce7;font-weight:bold;">겨울 쿨톤:</span> 카리나, 선미</li>',
        'quiz_main_title': '🎨 나만의 퍼스널 컬러 진단', 'quiz_main_desc': '간단한 시각적 질문을 통해 사계절 퍼스널 컬러를 즉시 찾아보세요.',
        'start_btn_txt': '퍼스널 컬러 테스트 시작하기', 'restart_btn_txt': '다시 테스트하기', 'result_main_title': '🎉 당신의 퍼스널 컬러 진단 결과',
        'upload_title': '📸 AI 카메라 분석 및 진단 (Beta)', 'upload_desc': '정확한 분석을 위해 조명이 밝은 곳에서 정면을 응시해 주세요. 데이터는 서버에 저장되지 않습니다.', 'upload_btn': '실시간 카메라 작동하기',
        'js_best_title': '당신을 위한 최적의 컬러 파레트', 'js_guide_title': '추천 스타일링 & 매칭 가이드',
        'q1': '1. 골드와 실버 주얼리 중 어떤 것이 피부를 더 살려주나요?', 'a1_1': '골드를 착용했을 때 피부가 화사해 보인다.', 'a1_2': '실버를 착용했을 때 피부가 투명해 보인다.',
        'q2': '2. 자외선에 장시간 노출되었을 때 피부 반응은 어떤가요?', 'a2_1': '붉어지기보다는 쉽게 그을리고 어두워진다.', 'a2_2': '쉽게 빨갛게 익거나 화상을 입는다.',
        'q3': '3. 주변 사람들에게 자주 듣는 나의 첫인상 분위기는?', 'a3_1': '차분하고 부드러우며 따뜻한 이미지.', 'a3_2': '선명하고 깨끗하며 시크한 이미지.',
        'q4': '4. 본연의 머리카락 색상이나 눈동자 색은 어느 쪽에 가깝나요?', 'a4_1': '부드러운 브라운 또는 밝은 갈색 계열.', 'a4_2': '선명한 블랙 또는 아주 어두운 흑갈색 계열.',
        'res_spring': '당신은 생기발랄하고 따뜻한 에너지를 가진 봄 웜톤입니다! 피치, 코랄, 허니 카멜 컬러가 가장 베스트입니다.',
        'res_summer': '당신은 맑고 청량하며 우아한 아우라를 지닌 여름 쿨톤입니다! 라벤더와 스카이 블루가 찰떡입니다.',
        'res_autumn': '당신은 깊고 풍부하며 고급스러운 분위기를 풍기는 가을 웜톤입니다! 카키, 버건디 계열이 매력을 극대화합니다.',
        'res_winter': '당신은 모던하고 선명하며 카리스마 있는 분위기를 가진 겨울 쿨톤입니다! 퓨어 블랙, 화이트, 네이비가 이목구비를 살려줍니다.'
    },
    'en': {
        'lang_attr': 'en', 'title': 'Find Your Personal Color', 'header_title': 'Find Your Personal Color',
        'intro_title': '✨ Guide to Personal Color',
        'intro_desc': 'Personal color is the curated palette that best complements your natural skin undertones, eyes, and hair. Discovering your tone enhances your radiance.',
        'celeb_title': '👑 Representative Celebrities',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">Spring Warm:</span> Taylor Swift, Blake Lively</li><li><span style="color:#74b9ff;font-weight:bold;">Summer Cool:</span> Margot Robbie, Elle Fanning</li><li><span style="color:#b2bec3;font-weight:bold;">Autumn Warm:</span> Zendaya, Jennifer Lopez</li><li><span style="color:#6c5ce7;font-weight:bold;">Winter Cool:</span> Anne Hathaway, Dua Lipa</li>',
        'quiz_main_title': '🎨 Personal Color Analysis Test', 'quiz_main_desc': 'Find your perfect seasonal palette through a few simple visual questions.',
        'start_btn_txt': 'Start Analysis Quiz', 'restart_btn_txt': 'Restart Quiz', 'result_main_title': '🎉 Your Personal Color Result',
        'upload_title': '📸 AI Camera Analysis (Beta)', 'upload_desc': 'Please face the camera in a brightly lit environment. No video data leaves your local device.', 'upload_btn': 'Activate Live Camera',
        'js_best_title': 'Best Color Palette for You', 'js_guide_title': 'Styling & Matching Guide',
        'q1': '1. Which looks better on you, gold or silver accessories?', 'a1_1': 'Gold items make my skin look bright and warm.', 'a1_2': 'Silver items look sophisticated and clear.',
        'q2': '2. How does your skin react to prolonged sun exposure?', 'a2_1': 'It tans easily and turns darker.', 'a2_2': 'It gets red or sunburned easily.',
        'q3': '3. What kind of first impression vibe do you usually get?', 'a3_1': 'Calm, soft, warm, or friendly image.', 'a3_2': 'Clear, clean, sophisticated, or chic image.',
        'q4': '4. What is your natural hair or eye color closer to?', 'a4_1': 'Soft brown or light warm brown tone.', 'a4_2': 'Sharp black or very dark charcoal tone.',
        'res_spring': 'You possess a vibrant and warm energy! Peach, coral, and honey camel are your absolute best colors.',
        'res_summer': 'You have a clear, refreshing, and elegant aura! Lavender and sky blue suit you perfectly.',
        'res_autumn': 'You project a deep, rich, and luxurious atmosphere! Earthy natural colors like khaki and deep burgundy maximize your charm.',
        'res_winter': 'You carry a modern, sharp, and charismatic vibe! Pure black, crisp white, and vivid tones like deep navy make your features striking.'
    },
    'ja': {
        'lang_attr': 'ja', 'title': 'パーソナルカラー診断', 'header_title': 'パーソナルカラー診断',
        'intro_title': '✨ パーソナルカラーガイド',
        'intro_desc': 'パーソナルカラーは、あなたの肌、髪、瞳の色に最も調和する色のグループです。自分に合うトーンを見つけることで、顔色が明るくなります。',
        'celeb_title': '👑 代表的なセレブ',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">イエベ春:</span> 本田翼, 石原さとみ</li><li><span style="color:#74b9ff;font-weight:bold;">ブルベ夏:</span> 新垣結衣, 綾瀬はるか</li><li><span style="color:#b2bec3;font-weight:bold;">イエベ秋:</span> 北川景子, 安室奈美恵</li><li><span style="color:#6c5ce7;font-weight:bold;">ブルベ冬:</span> 小松菜奈, 水原希子</li>',
        'quiz_main_title': '🎨 あなたのパーソナルカラー診断', 'quiz_main_desc': '簡単な視覚的な質問に答えて、あなたに最適な季節のカラーパレットを見つけましょう。',
        'start_btn_txt': '診断を始める', 'restart_btn_txt': 'もう一度診断する', 'result_main_title': '🎉 診断結果',
        'upload_title': '📸 AIカメラ分析 (Beta)', 'upload_desc': '正確な分析のため、明るい場所でカメラをまっすぐ見てください。データは保存されません。', 'upload_btn': 'カメラを起動する',
        'js_best_title': 'あなたに最適なカラー', 'js_guide_title': 'スタイリングガイド',
        'q1': '1. ゴールドとシルバーのアクセサリー、どちらが肌に馴染みますか？', 'a1_1': 'ゴールドをつけると肌が明るく見える。', 'a1_2': 'シルバーをつけると透明感が出る。',
        'q2': '2. 日焼けした後の肌はどうなりますか？', 'a2_1': '赤くならずに、すぐに黒くなる。', 'a2_2': 'すぐに赤くなったり、ヒリヒリする。',
        'q3': '3. 周りからよく言われる第一印象は？', 'a3_1': '落ち着いていて温かみのある印象。', 'a3_2': 'すっきりとしていてクールな印象。',
        'q4': '4. 地毛や瞳の色はどちらに近いですか？', 'a4_1': '柔らかいブラウンや明るい茶色系。', 'a4_2': 'はっきりとした黒やダークブラウン。',
        'res_spring': 'あなたは明るく温かいエネルギーを持つ「イエベ春」です！ピーチやコーラルがベストです。',
        'res_summer': 'あなたは透明感がありエレガントな「ブルベ夏」です！ラベンダーがぴったりです。',
        'res_autumn': 'あなたは深くリッチで大人っぽい「イエベ秋」です！カーキやディープバーガンディなどのアースカラーが魅力を引き出します。',
        'res_winter': 'あなたはモダンでシャープな「ブルベ冬」です！ピュアブラックや純白、マゼンタなどの鮮やかなトーンが顔立ちを際立たせます。'
    },
    'es': {
        'lang_attr': 'es', 'title': 'Descubre tu Color Personal', 'header_title': 'Descubre tu Color Personal',
        'intro_title': '✨ Guía de Color Personal',
        'intro_desc': 'El color personal es la paleta que mejor complementa tu tono de piel, ojos y cabello. Descubrir tu tono realza tu luminosidad.',
        'celeb_title': '👑 Celebridades Representativas',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">Primavera:</span> Taylor Swift</li><li><span style="color:#74b9ff;font-weight:bold;">Verano:</span> Margot Robbie</li><li><span style="color:#b2bec3;font-weight:bold;">Otoño:</span> Zendaya</li><li><span style="color:#6c5ce7;font-weight:bold;">Invierno:</span> Anne Hathaway</li>',
        'quiz_main_title': '🎨 Test de Análisis de Color', 'quiz_main_desc': 'Encuentra tu paleta estacional perfecta a través de unas sencillas preguntas.',
        'start_btn_txt': 'Comenzar Test', 'restart_btn_txt': 'Reiniciar Test', 'result_main_title': '🎉 Tu Resultado',
        'upload_title': '📸 Análisis de Cámara AI (Beta)', 'upload_desc': 'Mira a la cámara en un ambiente bien iluminado. Ningún dato sale de tu dispositivo.', 'upload_btn': 'Activar Cámara',
        'js_best_title': 'Tu Mejor Paleta de Colores', 'js_guide_title': 'Guía de Estilo',
        'q1': '1. ¿Qué te queda mejor, accesorios de oro o plata?', 'a1_1': 'El oro hace que mi piel luzca brillante.', 'a1_2': 'La plata me da un aspecto sofisticado.',
        'q2': '2. ¿Cómo reacciona tu piel al sol?', 'a2_1': 'Me bronceo fácilmente.', 'a2_2': 'Me enrojezco o me quemo fácilmente.',
        'q3': '3. ¿Cuál es tu primera impresión habitual?', 'a3_1': 'Imagen tranquila, suave y cálida.', 'a3_2': 'Imagen clara, limpia y sofisticada.',
        'q4': '4. ¿De qué color es tu cabello u ojos naturales?', 'a4_1': 'Tono marrón suave o castaño claro.', 'a4_2': 'Negro intenso o tono carbón muy oscuro.',
        'res_spring': '¡Tienes una energía vibrante (Primavera)! El melocotón y coral son tus mejores colores.',
        'res_summer': '¡Tienes un aura clara (Verano)! La lavanda y el azul cielo te quedan perfectos.',
        'res_autumn': '¡Proyectas una atmósfera profunda (Otoño)! Los colores naturales terrosos maximizan tu encanto.',
        'res_winter': '¡Tienes una vibra moderna (Invierno)! El negro puro y tonos vivos hacen que tus rasgos destaquen.'
    },
    'zh': {
        'lang_attr': 'zh', 'title': '寻找您的个人色彩', 'header_title': '寻找您的个人色彩',
        'intro_title': '✨ 个人色彩指南',
        'intro_desc': '个人色彩是最能衬托您自然肤色、眼睛和头发颜色的调色板。发现您的色调能提升您的光彩。',
        'celeb_title': '👑 代表性名人',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">春季暖色:</span> 宋慧乔, 允儿</li><li><span style="color:#74b9ff;font-weight:bold;">夏季冷色:</span> 孙艺珍, 全智贤</li><li><span style="color:#b2bec3;font-weight:bold;">秋季暖色:</span> 汤唯, 舒淇</li><li><span style="color:#6c5ce7;font-weight:bold;">冬季冷色:</span> 范冰冰, 李冰冰</li>',
        'quiz_main_title': '🎨 个人色彩测试', 'quiz_main_desc': '通过几个简单的视觉问题，找到您完美的季节色彩搭配。',
        'start_btn_txt': '开始测试', 'restart_btn_txt': '重新测试', 'result_main_title': '🎉 您的个人色彩结果',
        'upload_title': '📸 AI 相机分析 (Beta)', 'upload_desc': '请在光线充足的环境下面对相机。数据不会离开您的设备。', 'upload_btn': '启动相机',
        'js_best_title': '最适合您的调色板', 'js_guide_title': '造型与搭配指南',
        'q1': '1. 金色和银色饰品，哪个更适合您？', 'a1_1': '金色让我的皮肤看起来明亮温暖。', 'a1_2': '银色让我的皮肤看起来干净通透。',
        'q2': '2. 长时间日晒后您的皮肤反应如何？', 'a2_1': '很容易晒黑。', 'a2_2': '很容易发红或晒伤。',
        'q3': '3. 您通常给人留下的第一印象是什么？', 'a3_1': '平静、柔和、温暖或亲切的形象。', 'a3_2': '清晰、干净、精致或干练的形象。',
        'q4': '4. 您的自然发色或瞳孔颜色更接近哪种？', 'a4_1': '柔和的棕色或浅暖棕色。', 'a4_2': '纯黑色或非常深的炭黑色。',
        'res_spring': '您拥有充满活力的温暖能量（春季暖色）！桃色和珊瑚色是您的最佳颜色。',
        'res_summer': '您散发着清爽优雅的气息（夏季冷色）！薰衣草色和天蓝色非常适合您。',
        'res_autumn': '您展现出深邃丰富的氛围（秋季暖色）！卡其色、深酒红等大地色能最大化您的魅力。',
        'res_winter': '您具有现代、干练的魅力（冬季冷色）！纯黑、纯白以及深海军蓝让您的五官更加立体。'
    }
}

html_template = """<!DOCTYPE html>
<html lang="{lang_attr}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title}</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><defs><linearGradient id='g' x1='0%' y1='0%' x2='100%' y2='100%'><stop offset='0%' stop-color='%23ff7675'/><stop offset='33%' stop-color='%2374b9ff'/><stop offset='66%' stop-color='%23a29bfe'/><stop offset='100%' stop-color='%23ffeaa7'/></linearGradient></defs><circle cx='50' cy='50' r='45' fill='url(%23g)'/></svg>">
    <style>
        * {{ box-sizing: border-box; margin: 0; padding: 0; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }}
        body {{ background-color: #f5f6fa; color: #2d3436; padding: 40px 0; }}
        .container {{ max-width: 1200px; width: 92%; margin: 0 auto; position: relative; }}
        
        /* 🌐 언어 스위처 디자인 */
        .lang-switcher {{ position: absolute; top: -15px; right: 0; display: flex; gap: 8px; z-index: 1000; }}
        .lang-link {{ text-decoration: none; background: #ffffff; padding: 6px 12px; border-radius: 20px; font-size: 0.85rem; font-weight: 600; color: #2d3436; box-shadow: 0 2px 8px rgba(0,0,0,0.06); transition: all 0.2s; border: 1px solid #e4e7eb; }}
        .lang-link:hover {{ transform: translateY(-1px); box-shadow: 0 4px 12px rgba(0,0,0,0.1); border-color: #6c5ce7; }}
        .lang-link.active {{ background: #6c5ce7; color: #ffffff; border-color: #6c5ce7; }}
        
        header {{ text-align: center; margin-bottom: 40px; margin-top: 25px; }}
        header h1 {{ font-size: 2.4rem; font-weight: 800; background: linear-gradient(135deg, #6c5ce7, #74b9ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }}
        
        .main-layout-grid {{ display: grid; grid-template-columns: 1.1fr 0.9fr; gap: 35px; align-items: start; }}
        @media (max-width: 950px) {{ .main-layout-grid {{ grid-template-columns: 1fr; gap: 25px; }} .lang-switcher {{ top: -25px; right: 50%; transform: translateX(50%); }} header {{ margin-top: 20px; }} }}
        
        .card {{ background: #ffffff; padding: 30px; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.04); margin-bottom: 25px; border-left: 5px solid #eee; text-align: left; }}
        .intro-card {{ border-left-color: #a29bfe; }}
        .celeb-card {{ border-left-color: #ffeaa7; }}
        .quiz-card {{ border-left-color: #6c5ce7; }}
        .upload-card {{ border-left-color: #74b9ff; }}
        
        h3 {{ font-size: 1.3rem; margin-bottom: 12px; color: #2d3436; font-weight: 700; }}
        p {{ line-height: 1.7; color: #636e72; font-size: 0.95rem; text-align: justify; }}
        ul {{ list-style: none; }}
        ul li {{ margin-bottom: 10px; font-size: 0.95rem; }}
        
        .hidden {{ display: none !important; }}
        .btn {{ display: block; width: 100%; padding: 15px; background: linear-gradient(135deg, #6c5ce7, #a29bfe); color: white; border: none; border-radius: 10px; font-size: 1rem; font-weight: bold; cursor: pointer; transition: all 0.2s; text-align: center; margin-top: 15px; }}
        .btn:hover {{ transform: translateY(-2px); box-shadow: 0 5px 15px rgba(108, 92, 231, 0.25); }}
        
        .progress-container {{ background-color: #eee; border-radius: 10px; height: 8px; width: 100%; margin-bottom: 25px; overflow: hidden; }}
        #progress {{ background: linear-gradient(135deg, #6c5ce7, #74b9ff); height: 100%; width: 0%; transition: width 0.3s ease; }}
        
        #answer-buttons {{ display: flex; flex-direction: column; gap: 12px; margin-top: 20px; }}
        #answer-buttons .btn {{ background: #f8f9fa; color: #2d3436; text-align: left; padding: 16px; border: 1px solid #e4e7eb; margin-top: 0; font-weight: 500; }}
        #answer-buttons .btn:hover {{ background: #e4e7eb; transform: none; box-shadow: none; }}
        
        .badge {{ display: inline-block; padding: 6px 16px; background-color: #6c5ce7; color: white; border-radius: 20px; font-weight: bold; font-size: 1.1rem; margin-bottom: 15px; }}
        #color-palette-display {{ display: flex; gap: 15px; margin: 20px 0; }}
    </style>
</head>
<body>
    <div class="container">
        <!-- 🌐 언어 내비게이션 바 링크 추가 -->
        <div class="lang-switcher">
            <a href="/ko/" id="lang-ko" class="lang-link">🇰🇷 KO</a>
            <a href="/en/" id="lang-en" class="lang-link">🇺🇸 EN</a>
            <a href="/ja/" id="lang-ja" class="lang-link">🇯🇵 JA</a>
            <a href="/zh/" id="lang-zh" class="lang-link">🇨🇳 ZH</a>
            <a href="/es/" id="lang-es" class="lang-link">🇪🇸 ES</a>
        </div>

        <header>
            <h1>{header_title}</h1>
        </header>
        
        <div class="main-layout-grid">
            <div class="left-column">
                <section class="card intro-card">
                    <h3>{intro_title}</h3>
                    <p>{intro_desc}</p>
                </section>
                <section class="card celeb-card">
                    <h3>{celeb_title}</h3>
                    <ul>{celeb_desc}</ul>
                </section>
            </div>
            
            <div class="right-column">
                <section id="quiz-container" class="card quiz-card">
                    <div id="start-view">
                        <h3 style="text-align: center; margin-bottom: 15px;">{quiz_main_title}</h3>
                        <p style="text-align: center; margin-bottom: 20px;">{quiz_main_desc}</p>
                        <button id="start-btn" class="btn">{start_btn_txt}</button>
                    </div>
                    
                    <div id="question-view" class="hidden">
                        <div class="progress-container">
                            <div id="progress"></div>
                        </div>
                        <h3 id="question-text">Question Loading...</h3>
                        <div id="answer-buttons"></div>
                    </div>
                    
                    <div id="result-view" class="hidden">
                        <h3 style="margin-bottom: 5px;">{result_main_title}</h3>
                        <div id="result-tags"></div>
                        <p id="result-description" style="margin-bottom: 25px;"></p>
                        
                        <h4 id="best-color-title" style="font-weight: 700; margin-bottom: 12px; color:#2d3436;"></h4>
                        <div id="color-palette-display"></div>
                        
                        <h4 id="match-guide-title" style="font-weight: 700; margin-top: 25px; margin-bottom: 12px; color:#2d3436;"></h4>
                        <button id="restart-btn" class="btn" style="background: #2d3436;">{restart_btn_txt}</button>
                    </div>
                </section>
                
                <section class="card upload-card">
                    <h3>{upload_title}</h3>
                    <p style="margin-bottom: 20px;">{upload_desc}</p>
                    <button class="btn" style="background: linear-gradient(135deg, #74b9ff, #0984e3); margin-top:0;" onclick="alert('Camera core logic connection step is next!');">{upload_btn}</button>
                </section>
            </div>
        </div>
    </div>
    <script>
        // 현재 페이지 활성화 표시
        document.getElementById('lang-{lang_attr}').classList.add('active');
    </script>
    <script src="script.js"></script>
</body>
</html>
"""

print("🚀 전 세계 모든 페이지에 [우측 상단 언어 전환 탭] 장착 시작...")

for folder, configs in lang_config.items():
    if not os.path.exists(folder):
        os.makedirs(folder)
        
    with open(f"{folder}/index.html", "w", encoding="utf-8") as f:
        f.write(html_template.format(**configs))
        
    print(f"🔗 {folder.upper()} 페이지 국기 버튼 인터페이스 장착 성공")

print("\n📦 원격 깃허브 스테이지에 추가 및 푸시 연동...")
os.system("git add .")
os.system("git commit -m 'Feat: Add absolute top-right floating language switcher navbar for all subdirectories'")
os.system("git push origin main")

print("\n✨ 모든 작업이 깔끔하게 끝났습니다!")
