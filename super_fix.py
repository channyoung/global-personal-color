import os
import re

css_override = """
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
"""

count = 0
# 1. 모든 폴더를 다 뒤져서 html 파일 찾기
for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith(".html"):
            path = os.path.join(root, file)
            
            with open(path, "r", encoding="utf-8") as f:
                html = f.read()
            
            # 2. 중복 방지 및 강제 주입
            if "/* CSS Injection - Responsive Layout */" not in html:
                # </head> 태그 대소문자 무관하게 찾아서 그 앞에 넣기
                if re.search(r'</head>', html, re.IGNORECASE):
                    html = re.sub(r'(</head>)', f'{css_override}\n\\1', html, flags=re.IGNORECASE)
                else:
                    # head가 없으면 맨 뒤에 추가
                    html += css_override
                    
                with open(path, "w", encoding="utf-8") as f:
                    f.write(html)
                print(f"✅ 강력 수정 완료: {path}")
                count += 1

if count == 0:
    print("⚠️ 수정할 파일을 못 찾았거나 이미 모두 적용되었습니다.")
else:
    print(f"🎉 총 {count}개의 HTML 파일에 반응형 디자인을 강제로 주입했습니다!")
    print("🚀 깃허브로 즉시 업로드합니다...")
    os.system("git add .")
    os.system("git commit -m 'Fix: Ultimate responsive layout injection'")
    os.system("git push origin main")
