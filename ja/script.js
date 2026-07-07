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
    spring: { 
        title: "Spring Warm (봄 웜톤)", 
        desc: "You possess a vibrant and warm energy! Pastel and vivid warm colors bring out your natural glow. Peach, coral, and honey camel are your absolute best colors.",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    },
    summer: { 
        title: "Summer Cool (여름 쿨톤)", 
        desc: "You have a clear, refreshing, and elegant aura! Muted pastel tones with blue undertones provide a natural lifting effect. Lavender and sky blue suit you perfectly.",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    },
    autumn: { 
        title: "Autumn Warm (가을 웜톤)", 
        desc: "You project a deep, rich, and luxurious atmosphere! Earthy natural colors like khaki, deep burgundy, and mustard maximize your sophisticated charm.",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    },
    winter: { 
        title: "Winter Cool (겨울 쿨톤)", 
        desc: "You carry a modern, sharp, and charismatic vibe! Pure black, crisp white, and vivid tones like deep navy or magenta make your features look distinctly striking.",
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
}
