const questions = [
    {
        question: "1. 골드 액세서리와 실버 액세서리 중 어떤 것이 더 잘 어울리나요?",
        answers: [
            { text: "골드 제품이 피부를 화사하고 따뜻하게 만들어준다.", score: { warm: 2, cool: 0 } },
            { text: "실버 제품이 세련되어 보이고 안색이 투명해진다.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 햇볕에 장시간 노출되었을 때 당신의 피부 반응은 어떤가요?",
        answers: [
            { text: "쉽게 그을리고 어둡게 타는 편이다.", score: { warm: 1, cool: 0 } },
            { text: "빨갛게 익거나 익은 후 금방 원래대로 돌아온다.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 평소 주변 사람들에게 자주 듣는 첫인상 분위기는?",
        answers: [
            { text: "차분하고 부드럽거나, 따뜻하고 친근한 이미지", score: { warm: 1, cool: 0 } },
            { text: "맑고 깨끗하거나, 세련되고 시크한 이미지", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 내 자연 모발(염색 전)이나 눈동자 색상에 가까운 것은?",
        answers: [
            { text: "부드러운 브라운 또는 밝은 갈색 톤", score: { warm: 1, cool: 0 } },
            { text: "선명한 블랙 또는 아주 어두운 차콜 톤", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { 
        title: "봄 웜톤 (Spring Warm)", 
        desc: "당신은 생기발랄하고 따뜻한 에너지를 지닌 봄 웜톤입니다! 파스텔 톤과 비비드한 컬러가 피부의 혈색을 살려줍니다. 주황, 코랄, 카멜 색상이 인생 컬러입니다.",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    },
    summer: { 
        title: "여름 쿨톤 (Summer Cool)", 
        desc: "당신은 맑고 깨끗하며 이지적인 무드의 여름 쿨톤입니다! 회색기가 도는 차분한 파스텔 톤과 블루 베이스의 컬러가 리프팅 효과를 줍니다. 라벤더, 스카이블루가 잘 어울립니다.",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    },
    autumn: { 
        title: "가을 웜톤 (Autumn Warm)", 
        desc: "당신은 깊이 있고 고급스러운 분위기의 가을 웜톤입니다! 카키, 버건디, 머스터드 등 대지의 내추럴한 컬러가 도시적이고 우아한 매력을 극대화해 줍니다.",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    },
    winter: { 
        title: "겨울 쿨톤 (Winter Cool)", 
        desc: "당신은 모던하고 카리스마 있는 겨울 쿨톤입니다! 블랙, 화이트, 그리고 선명한 원색(네이비, 체리레드)이 이목구비를 더욱 또렷하고 도회적으로 만들어줍니다.",
        colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"]
    }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
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

function showResult() {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    progressBar.style.width = '100%';

    // 간단 스코어 기반 알고리즘 분기
    let finalTone = "spring";
    if (userScores.warm >= userScores.cool) {
        finalTone = userScores.warm > 3 ? "autumn" : "spring";
    } else {
        finalTone = userScores.cool > 3 ? "winter" : "summer";
    }
    
    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;
    
    // 타이틀 라벨 주입
    document.getElementById('best-color-title').innerText = "추천 베스트 컬러 리스트";
    document.getElementById('match-guide-title').innerText = "스타일링 매칭 가이드";
    document.getElementById('result-description').innerText = resultData.desc;

    // 컬러 파레트 서클 렌더링
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
}