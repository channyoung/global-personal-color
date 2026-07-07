const questions = [
    {
        question: "1. ゴールドとシルバーのアクセサリー、どちらがより似합니까？",
        answers: [
            { text: "ゴールド製品が肌を華やかで暖かく見せてくれる。", score: { warm: 2, cool: 0 } },
            { text: "シルバー製品が洗練されて見え、顔色が透明になる。", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 長時間日光を浴びたとき、あなたの肌の反応は？",
        answers: [
            { text: "赤くならずに、すぐに小麦色に黒くなる。", score: { warm: 1, cool: 0 } },
            { text: "赤くほてったり、すぐに元に戻る。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 周りからよく言われるあなたの第一印象の雰囲気は？",
        answers: [
            { text: "落ち着いていて柔らかい、または温かみのある親しみやすい印象", score: { warm: 1, cool: 0 } },
            { text: "透明感があってクリーン、または洗練されていてクールな印象", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 地毛や瞳の色はどちらに近いですか？",
        answers: [
            { text: "ソフトなブラウン、または明るい茶色系", score: { warm: 1, cool: 0 } },
            { text: "鮮やかなブラック、またはかなり暗いチャコール系", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { 
        title: "スプリングウォーム（春イエベ）", 
        desc: "あなたは生き生きとして温かいエネルギーを持つ「春イエベ」です！パステルや鮮やかなビタミンカラーが肌を健康的に見せます。コーラル、ピーチ、キャメルがベストです。",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    },
    summer: { 
        title: "サマークール（夏ブルベ）", 
        desc: "あなたは澄んでいて清潔感があり、知的なムードの「夏ブルベ」です！グレーがかった落ち着いたパステル調やブルーベースが透明感を引き立てます。ラベンダーが最適。",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    },
    autumn: { 
        title: "オータムウォーム（秋イエベ）", 
        desc: "あなたは深みがあり、ゴージャスな雰囲気の「秋イエベ」です！カーキ、バーガンディ、マスタードなどアースカラーが、大人っぽく洗練された魅力を引き出します。",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    },
    winter: { 
        title: "ウィンタークール（冬ブルベ）", 
        desc: "あなたはモダンでカリスマ性のある「冬ブルベ」です！モノトーンや、鮮やかな原色（ネイビー、チェリーレッド）が、目鼻立ちをよりくっきりと都会的に見せてくれます。",
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
    document.getElementById('best-color-title').innerText = "おすすめのベストカラーパレット";
    document.getElementById('match-guide-title').innerText = "スタイリング＆マッチングガイド";
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