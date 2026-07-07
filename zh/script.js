const questions = [
    {
        question: "1. 金色饰品和银色饰品中，哪一个更适合您？",
        answers: [
            { text: "金色饰品让皮肤显得更有光泽、更温暖。", score: { warm: 2, cool: 0 } },
            { text: "银色饰品显得更有高级感，气色更通透。", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 长时间晒太阳时，您的皮肤有什么反应？",
        answers: [
            { text: "容易晒黑，肤色变深。", score: { warm: 1, cool: 0 } },
            { text: "容易发红，或者皮肤有灼热感。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 平时经常听到别人评价你的第一印象是？",
        answers: [
            { text: "沉稳、温柔，或是温暖具有亲和力。", score: { warm: 1, cool: 0 } },
            { text: "清爽、干净，或是冷艳具有高级感。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 您的原生发色（未染色前）或瞳孔颜色更接近？",
        answers: [
            { text: "柔和的棕色或偏浅的栗色调。", score: { warm: 1, cool: 0 } },
            { text: "浓郁的纯黑或非常深的冷深灰。", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { 
        title: "春季暖色调 (Spring Warm)", 
        desc: "您是拥有活泼开朗与温暖能量的‘春季暖色调’！明亮温暖的鲜艳色最能衬托您的好气色。香橙色、珊瑚粉、明黄色是您的本命色。",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    },
    summer: { 
        title: "夏季冷色调 (Summer Cool)", 
        desc: "您是拥有清澈干净且理智氛围的‘夏季冷色调’！带有柔和灰调的冰蓝色系能让您的肤色更加白皙通透。薰衣草紫、天空蓝极力推荐。",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    },
    autumn: { 
        title: "秋季暖色调 (Autumn Warm)", 
        desc: "您是拥有沉稳且高级氛围的‘秋季暖色调’！富有浓郁大自然气息的军绿色、复古红、脏橘色能将您的都市轻奢感拉满。",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    },
    winter: { 
        title: "冬季冷色调 (Winter Cool)", 
        desc: "您是具有现代感与冷艳魅力的‘冬季冷色调’！纯黑、纯白以及饱和度极高的宝蓝色、车厘子红能让您的五官更加立体锐利。",
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
    document.getElementById('best-color-title').innerText = "专属您的绝美色卡推荐";
    document.getElementById('match-guide-title').innerText = "全方位穿搭与美妆指南";
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