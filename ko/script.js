const questions = [
    {
        question: "1. 골드와 실버 주얼리 중 어떤 것이 피부를 더 살려주나요?",
        answers: [
            { text: "골드를 착용했을 때 피부가 화사하고 생기 있어 보인다.", score: { warm: 2, cool: 0 } },
            { text: "실버를 착용했을 때 피부가 투명하고 세련되어 보인다.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 자외선(햇빛)에 장시간 노출되었을 때 피부 반응은 어떤가요?",
        answers: [
            { text: "붉어지기보다는 쉽게 그을리고 어두워지는 편이다.", score: { warm: 1, cool: 0 } },
            { text: " 쉽게 빨갛게 익거나 홍조·화상을 입는 편이다.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 주변 사람들에게 자주 듣는 나의 첫인상 분위기는?",
        answers: [
            { text: "차분하고 부드러우며, 따뜻하거나 친근한 이미지.", score: { warm: 1, cool: 0 } },
            { text: "선명하고 깨끗하며, 세련되거나 시크한 이미지.", score: { warm: 0, cool: 1 } }
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
    spring: { 
        title: "Spring Warm (봄 웜톤)", 
        desc: "당신은 생기발랄하고 따뜻한 에너지를 가진 봄 웜톤입니다! 파스텔 톤과 비비드한 웜 컬러가 고유의 화사함을 극대화해 줍니다. 피치, 코랄, 허니 카멜 컬러가 가장 베스트입니다.",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    },
    summer: { 
        title: "Summer Cool (여름 쿨톤)", 
        desc: "당신은 맑고 청량하며 우아한 아우라를 지닌 여름 쿨톤입니다! 블루 베이스의 소프트 파스텔 톤을 매칭하면 자연스러운 리프팅 효과를 볼 수 있습니다. 라벤더와 스카이 블루가 찰떡입니다.",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    },
    autumn: { 
        title: "Autumn Warm (가을 웜톤)", 
        desc: "당신은 깊고 풍부하며 고급스러운 분위기를 풍기는 가을 웜톤입니다! 카키, 딥 버건디, 머스터드와 같은 얼시(Earthy) 계열의 내추럴 컬러가 세련된 매력을 극대화합니다.",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    },
    winter: { 
        title: "Winter Cool (겨울 쿨톤)", 
        desc: "당신은 모던하고 선명하며 카리스마 있는 분위기를 가진 겨울 쿨톤입니다! 퓨어 블랙, 크리스프 화이트, 네이비, 마젠타와 같이 선명하고 강렬한 대비가 이목구비를 더욱 확 살려줍니다.",
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

    let finalTone = "spring";
    if (userScores.warm >= userScores.cool) {
        finalTone = userScores.warm > 3 ? "autumn" : "spring";
    } else {
        finalTone = userScores.cool > 3 ? "winter" : "summer";
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
}
