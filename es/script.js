const questions = [
    {
        question: "1. ¿Qué te queda mejor, los accesorios de oro o de plata?",
        answers: [
            { text: "El oro hace que mi piel luzca radiante y cálida.", score: { warm: 2, cool: 0 } },
            { text: "La plata me hace lucir sofisticada y aclara mi tez.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. ¿Cómo reacciona tu piel ante la exposición prolongada al sol?",
        answers: [
            { text: "Se broncea fácilmente y se vuelve más oscura.", score: { warm: 1, cool: 0 } },
            { text: "Se pone roja o se quema con facilidad.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. ¿Qué tipo de vibra o primera impresión sueles dar?",
        answers: [
            { text: "Una imagen tranquila, suave, cálida o amigable.", score: { warm: 1, cool: 0 } },
            { text: "Una imagen clara, limpia, sofisticada o chic.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. ¿A qué se acerca más tu color natural de cabello o de ojos?",
        answers: [
            { text: "Tono marrón suave o castaño claro cálido.", score: { warm: 1, cool: 0 } },
            { text: "Negro intenso o tono carbón muy oscuro.", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { 
        title: "Primavera Cálida (Spring Warm)", 
        desc: "¡Tienes una energía vibrante y cálida! Los colores pasteles y vivos resaltan tu brillo natural. El melocotón, el coral y el camel son tus mejores aliados.",
        colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"]
    },
    summer: { 
        title: "Verano Frío (Summer Cool)", 
        desc: "¡Tu aura es clara, limpia y elegante! Los tonos pasteles suaves con base azulada te dan un efecto radiante y fresco. Te favorecen el lavanda y el azul cielo.",
        colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"]
    },
    autumn: { 
        title: "Otoño Cálido (Autumn Warm)", 
        desc: "¡Proyectas una atmósfera profunda y lujosa! Los colores de la naturaleza como el caqui, el granate y el mostaza maximizan tu encanto sofisticado.",
        colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"]
    },
    winter: { 
        title: "Invierno Frío (Winter Cool)", 
        desc: "¡Tu estilo es moderno y carismático! El negro puro, el blanco radiante y los tonos vivos como el azul marino o el rojo cereza estilizan tus facciones.",
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
    document.getElementById('best-color-title').innerText = "Tu Paleta de Colores Best";
    document.getElementById('match-guide-title').innerText = "Guía de Estilo y Combinación";
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