import os

# 각 언어권별 매칭 데이터 정의
lang_config = {
    'ko': {
        'lang_attr': 'ko',
        'title': 'Find Your Personal Color',
        'header_title': 'Find Your Personal Color',
        'intro_title': '✨ 퍼스널 컬러(Personal Color) 가이드',
        'intro_desc': '퍼스널 컬러는 개인이 가진 고유의 신체 색상(피부, 머리카락, 눈동자)과 가장 조화를 이루는 핵심 컬러 컬렉션입니다. 맞는 톤을 찾으면 안색이 맑아 보이고 단점이 보완되지만, 맞지 않는 톤은 피부가 칙칙해 보일 수 있습니다. 나만의 톤을 알고 스타일링을 시작해 보세요.',
        'celeb_title': '👑 언어권별 대표 셀럽 리스트',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">봄 웜톤:</span> 아이유, 수지, 윤아, 한지민</li><li><span style="color:#74b9ff;font-weight:bold;">여름 쿨톤:</span> 손예진, 태연, 김태리, 한가인</li><li><span style="color:#b2bec3;font-weight:bold;">가을 웜톤:</span> 제니, 한소희, 이효리, 신민아</li><li><span style="color:#6c5ce7;font-weight:bold;">겨울 쿨톤:</span> 카리나, 김혜수, 선미, 김옥빈</li>',
        'quiz_main_title': '🎨 나만의 퍼스널 컬러 진단',
        'quiz_main_desc': '간단한 시각적 질문을 통해 당신의 고유한 피부 톤에 가장 최적화된 사계절 퍼스널 컬러를 즉시 찾아보세요.',
        'start_btn_txt': '퍼스널 컬러 테스트 시작하기',
        'restart_btn_txt': '다시 테스트하기',
        'result_main_title': '🎉 당신의 퍼스널 컬러 진단 결과',
        'upload_title': '📸 AI 카메라 분석 및 진단 (Beta)',
        'upload_desc': '정확한 분석을 위해 조명이 밝은 곳에서 정면을 응시해 주세요. 촬영된 데이터는 서버에 절대 저장되지 않고 브라우저 내에서 즉시 휘발됩니다.',
        'upload_btn': '실시간 카메라 작동하기',
        'js_best_title': '당신을 위한 최적의 컬러 파레트',
        'js_guide_title': '추천 스타일링 & 매칭 가이드',
        'q1': '1. 골드와 실버 주얼리 중 어떤 것이 피부를 더 살려주나요?',
        'a1_1': '골드를 착용했을 때 피부가 화사하고 생기 있어 보인다.',
        'a1_2': '실버를 착용했을 때 피부가 투명하고 세련되어 보인다.',
        'q2': '2. 자외선(햇빛)에 장시간 노출되었을 때 피부 반응은 어떤가요?',
        'a2_1': '붉어지기보다는 쉽게 그을리고 어두워지는 편이다.',
        'a2_2': ' 쉽게 빨갛게 익거나 홍조·화상을 입는 편이다.',
        'q3': '3. 주변 사람들에게 자주 듣는 나의 첫인상 분위기는?',
        'a3_1': '차분하고 부드러우며, 따뜻하거나 친근한 이미지.',
        'a3_2': '선명하고 깨끗하며, 세련되거나 시크한 이미지.',
        'q4': '4. 본연의 머리카락 색상이나 눈동자 색은 어느 쪽에 가깝나요?',
        'a4_1': '부드러운 브라운 또는 밝은 갈색 계열.',
        'a4_2': '선명한 블랙 또는 아주 어두운 흑갈색 계열.',
        'res_spring': '당신은 생기발랄하고 따뜻한 에너지를 가진 봄 웜톤입니다! 파스텔 톤과 비비드한 웜 컬러가 고유의 화사함을 극대화해 줍니다. 피치, 코랄, 허니 카멜 컬러가 가장 베스트입니다.',
        'res_summer': '당신은 맑고 청량하며 우아한 아우라를 지닌 여름 쿨톤입니다! 블루 베이스의 소프트 파스텔 톤을 매칭하면 자연스러운 리프팅 효과를 볼 수 있습니다. 라벤더와 스카이 블루가 찰떡입니다.',
        'res_autumn': '당신은 깊고 풍부하며 고급스러운 분위기를 풍기는 가을 웜톤입니다! 카키, 딥 버건디, 머스터드와 같은 얼시(Earthy) 계열의 내추럴 컬러가 세련된 매력을 극대화합니다.',
        'res_winter': '당신은 모던하고 선명하며 카리스마 있는 분위기를 가진 겨울 쿨톤입니다! 퓨어 블랙, 크리스프 화이트, 네이비, 마젠타와 같이 선명하고 강렬한 대비가 이목구비를 더욱 확 살려줍니다.'
    },
    'en': {
        'lang_attr': 'en',
        'title': 'Find Your Personal Color',
        'header_title': 'Find Your Personal Color',
        'intro_title': '✨ Guide to Personal Color',
        'intro_desc': 'Personal color is the curated palette that best complements your natural skin undertones, eyes, and hair. Discovering your tone enhances your radiance, simplifies shopping, and prevents fashion mismatches.',
        'celeb_title': '👑 Global Representative Celebrities',
        'celeb_desc': '<li><span style="color:#ff7675;font-weight:bold;">Spring Warm:</span> Taylor Swift, Blake Lively, Emma Stone, Scarlett Johansson</li><li><span style="color:#74b9ff;font-weight:bold;">Summer Cool:</span> Margot Robbie, Elle Fanning, Amanda Seyfried, Dakota Fanning</li><li><span style="color:#b2bec3;font-weight:bold;">Autumn Warm:</span> Zendaya, Emily Ratajkowski, Jennifer Lopez, Jessica Alba</li><li><span style="color:#6c5ce7;font-weight:bold;">Winter Cool:</span> Anne Hathaway, Dua Lipa, Megan Fox, Lily Collins</li>',
        'quiz_main_title': '🎨 Personal Color Analysis Test',
        'quiz_main_desc': 'Find your perfect seasonal palette through a few simple visual questions.',
        'start_btn_txt': 'Start Analysis Quiz',
        'restart_btn_txt': 'Restart Quiz',
        'result_main_title': '🎉 Your Personal Color Result',
        'upload_title': '📸 AI Camera Analysis (Beta)',
        'upload_desc': 'Please face the camera in a brightly lit environment for real-time tone matching. No video data leaves your local device.',
        'upload_btn': 'Activate Live Camera',
        'js_best_title': 'Best Color Palette for You',
        'js_guide_title': 'Styling & Matching Guide',
        'q1': '1. Which looks better on you, gold or silver accessories?',
        'a1_1': 'Gold items make my skin look bright and warm.',
        'a1_2': 'Silver items look sophisticated and clear.',
        'q2': '2. How does your skin react to prolonged sun exposure?',
        'a2_1': 'It tans easily and turns darker.',
        'a2_2': 'It gets red or sunburned easily.',
        'q3': '3. What kind of first impression vibe do you usually get?',
        'a3_1': 'Calm, soft, warm, or friendly image.',
        'a3_2': 'Clear, clean, sophisticated, or chic image.',
        'q4': '4. What is your natural hair or eye color closer to?',
        'a4_1': 'Soft brown or light warm brown tone.',
        'a4_2': 'Sharp black or very dark charcoal tone.',
        'res_spring': 'You possess a vibrant and warm energy! Pastel and vivid warm colors bring out your natural glow. Peach, coral, and honey camel are your absolute best colors.',
        'res_summer': 'You have a clear, refreshing, and elegant aura! Muted pastel tones with blue undertones provide a natural lifting effect. Lavender and sky blue suit you perfectly.',
        'res_autumn': 'You project a deep, rich, and luxurious atmosphere! Earthy natural colors like khaki, deep burgundy, and mustard maximize your sophisticated charm.',
        'res_winter': 'You carry a modern, sharp, and charismatic vibe! Pure black, crisp white, and vivid tones like deep navy or magenta make your features look distinctly striking.'
    }
}

# 다국어 처리 확장용 폴백 (ja, es, zh가 설정에 없으면 en을 디폴트로 자동 적용)
for l in ['ja', 'es', 'zh']:
    if l not in lang_config:
        lang_config[l] = lang_config['en'].copy()
        lang_config[l]['lang_attr'] = l

# HTML 마스터 템플릿 정의
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
        .container {{ max-width: 1200px; width: 92%; margin: 0 auto; }}
        header {{ text-align: center; margin-bottom: 40px; }}
        header h1 {{ font-size: 2.4rem; font-weight: 800; background: linear-gradient(135deg, #6c5ce7, #74b9ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }}
        
        .main-layout-grid {{ display: grid; grid-template-columns: 1.1fr 0.9fr; gap: 35px; align-items: start; }}
        @media (max-width: 950px) {{ .main-layout-grid {{ grid-template-columns: 1fr; gap: 25px; }} }}
        
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
    <script src="script.js"></script>
</body>
</html>
"""

# JS 마스터 템플릿 정의
js_template = """const questions = [
    {{
        question: "{q1}",
        answers: [
            {{ text: "{a1_1}", score: {{ warm: 2, cool: 0 }} }},
            {{ text: "{a1_2}", score: {{ warm: 0, cool: 2 }} }}
        ]
    }},
    {{
        question: "{q2}",
        answers: [
            {{ text: "{a2_1}", score: {{ warm: 1, cool: 0 }} }},
            {{ text: "{a2_2}", score: {{ warm: 0, cool: 1 }} }}
        ]
    }},
    {{
        question: "{q3}",
        answers: [
            {{ text: "{a3_1}", score: {{ warm: 1, cool: 0 }} }},
            {{ text: "{a3_2}", score: {{ warm: 0, cool: 1 }} }}
        ]
    }},
    {{
        question: "{q4}",
        answers: [
            {{ text: "{a4_1}", score: {{ warm: 1, cool: 0 }} }},
            {{ text: "{a4_2}", score: {{ warm: 0, cool: 1 }} }}
        ]
    }}
];

const results = {{
    spring: {{ 
        title: "Spring Warm (봄 웜톤)", 
        desc: "{res_spring}",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    }},
    summer: {{ 
        title: "Summer Cool (여름 쿨톤)", 
        desc: "{res_summer}",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    }},
    autumn: {{ 
        title: "Autumn Warm (가을 웜톤)", 
        desc: "{res_autumn}",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    }},
    winter: {{ 
        title: "Winter Cool (겨울 쿨톤)", 
        desc: "{res_winter}",
        colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"]
    }}
}};

let currentQuestionIndex = 0;
let userScores = {{ warm: 0, cool: 0 }};

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {{
    currentQuestionIndex = 0;
    userScores = {{ warm: 0, cool: 0 }};
    startView.classList.add('hidden');
    resultView.classList.add('hidden');
    questionView.classList.remove('hidden');
    showQuestion();
}}

function showQuestion() {{
    resetState();
    const currentQuestion = questions[currentQuestionIndex];
    questionText.innerText = currentQuestion.question;
    progressBar.style.width = `${{(currentQuestionIndex / questions.length) * 100}}%`;

    currentQuestion.answers.forEach(answer => {{
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        button.addEventListener('click', () => selectAnswer(answer.score));
        answerButtons.appendChild(button);
    }});
}}

function resetState() {{
    while (answerButtons.firstChild) {{
        answerButtons.removeChild(answerButtons.firstChild);
    }}
}}

function selectAnswer(score) {{
    for (const key in score) {{
        if (userScores.hasOwnProperty(key)) userScores[key] += score[key];
    }}
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {{
        showQuestion();
    }} else {{
        showResult();
    }}
}}

function showResult() {{
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (userScores.warm >= userScores.cool) {{
        finalTone = userScores.warm > 3 ? "autumn" : "spring";
    }} else {{
        finalTone = userScores.cool > 3 ? "winter" : "summer";
    }}
    
    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${{resultData.title}}</span>`;
    
    document.getElementById('best-color-title').innerText = "{js_best_title}";
    document.getElementById('match-guide-title').innerText = "{js_guide_title}";
    document.getElementById('result-description').innerText = resultData.desc;

    const paletteZone = document.getElementById('color-palette-display');
    paletteZone.innerHTML = "";
    resultData.colors.forEach(clr => {{
        const circle = document.createElement('div');
        circle.style.width = "50px";
        circle.style.height = "50px";
        circle.style.borderRadius = "50%";
        circle.style.backgroundColor = clr;
        circle.style.boxShadow = "0 3px 6px rgba(0,0,0,0.1)";
        paletteZone.appendChild(circle);
    }});
}}
"""

print("🧹 깨진 전 세계 소스코드 정밀 오버라이팅 복원 시작...")

for folder, configs in lang_config.items():
    if not os.path.exists(folder):
        os.makedirs(folder)
        
    # HTML 파일 생성 및 강제 덮어쓰기
    html_content = html_template.format(**configs)
    with open(f"{folder}/index.html", "w", encoding="utf-8") as f:
        f.write(html_content)
        
    # JS 파일 생성 및 강제 덮어쓰기
    js_content = js_template.format(**configs)
    with open(f"{folder}/script.js", "w", encoding="utf-8") as f:
        f.write(js_content)
        
    print(f"💎 {folder.upper()} 폴더 내 index.html & script.js 완전 복구 및 확장 완")

print("\n🚀 수정된 무결성 코드를 원격 저장소에 자동으로 푸시합니다...")
os.system("git add .")
os.system("git commit -m 'Fix: Restore entire clean code base and fix broken layout hierarchy'")
os.system("git push origin main")

print("\n✨ 모든 복구 및 Vercel 동기화 명령 처리가 종료되었습니다!")
