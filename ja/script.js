const questions = [
    {
        question: "1. ゴールドとシルバーのアクセサリー、どちらが肌に馴染みますか？",
        answers: [
            { text: "ゴールドをつけると肌が明るく見える。", score: { warm: 2, cool: 0 } },
            { text: "シルバーをつけると透明感が出る。", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 日焼けした後の肌はどうなりますか？",
        answers: [
            { text: "赤くならずに、すぐに黒くなる。", score: { warm: 1, cool: 0 } },
            { text: "すぐに赤くなったり、ヒリヒリする。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 周りからよく言われる第一印象は？",
        answers: [
            { text: "落ち着いていて温かみのある印象。", score: { warm: 1, cool: 0 } },
            { text: "すっきりとしていてクールな印象。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 地毛や瞳の色はどちらに近いですか？",
        answers: [
            { text: "柔らかいブラウンや明るい茶色系。", score: { warm: 1, cool: 0 } },
            { text: "はっきりとした黒やダークブラウン。", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "あなたは明るく温かいエネルギーを持つ「イエベ春」です！ピーチやコーラルがベストです。", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "あなたは透明感がありエレガントな「ブルベ夏」です！ラベンダーがぴったりです。", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "あなたは深くリッチで大人っぽい「イエベ秋」です！カーキやディープバーガンディなどのアースカラーが魅력을引き出します。", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "あなたはモダンでシャープな「ブルベ冬」です！ピュアブラックや純白、マゼンタなどの鮮やかなトーンが顔立ちを際立たせます。", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
};

let currentQuestionIndex = 0;
let userScores = { warm: 0, cool: 0 };
let localStream = null;

const startView = document.getElementById('start-view');
const questionView = document.getElementById('question-view');
const resultView = document.getElementById('result-view');
const questionText = document.getElementById('question-text');
const answerButtons = document.getElementById('answer-buttons');
const progressBar = document.getElementById('progress');

const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

const triggerFileBtn = document.getElementById('trigger-file-btn');
const imageFileInput = document.getElementById('image-file-input');

document.getElementById('start-btn').addEventListener('click', startQuiz);
document.getElementById('restart-btn').addEventListener('click', startQuiz);

function startQuiz() {
    stopCamera();
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

function showResult(forcedTone = null) {
    questionView.classList.add('hidden');
    resultView.classList.remove('hidden');
    startView.classList.add('hidden');
    progressBar.style.width = '100%';

    let finalTone = "spring";
    if (forcedTone) {
        finalTone = forcedTone;
    } else {
        if (userScores.warm >= userScores.cool) {
            finalTone = userScores.warm > 3 ? "autumn" : "spring";
        } else {
            finalTone = userScores.cool > 3 ? "winter" : "summer";
        }
    }
    
    const resultData = results[finalTone];
    document.getElementById('result-tags').innerHTML = `<span class="badge">${resultData.title}</span>`;
    
    document.getElementById('best-color-title').innerText = "あなたに最適なカラー";
    document.getElementById('match-guide-title').innerText = "スタイリングガイド";
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
    
    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
        triggerFileBtn.classList.add('hidden');
        cameraZone.classList.remove('hidden');
    } catch (err) {
        alert(camErrorMsg);
        console.error(err);
    }
});

captureBtn.addEventListener('click', () => {
    if (!localStream) return;
    
    cameraZone.classList.add('hidden');
    cameraLoading.classList.remove('hidden');
    
    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;
    
    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);
    
    analyzeCanvasPixels(ctx, calcCanvas.width, calcCanvas.height);
});

triggerFileBtn.addEventListener('click', () => {
    imageFileInput.click();
});

imageFileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    if (!file) return;

    stopCamera();
    initCamBtn.classList.add('hidden');
    triggerFileBtn.classList.add('hidden');
    cameraLoading.classList.remove('hidden');

    const img = new Image();
    img.src = URL.createObjectURL(file);
    img.onload = () => {
        const ctx = calcCanvas.getContext('2d');
        const maxDim = 640;
        let w = img.width;
        let h = img.height;
        if (w > maxDim || h > maxDim) {
            if (w > h) { h = (maxDim / w) * h; w = maxDim; }
            else { w = (maxDim / h) * w; h = maxDim; }
        }
        
        calcCanvas.width = w;
        calcCanvas.height = h;
        ctx.drawImage(img, 0, 0, w, h);
        
        analyzeCanvasPixels(ctx, w, h);
        URL.revokeObjectURL(img.src);
        imageFileInput.value = "";
    };
});

function analyzeCanvasPixels(ctx, width, height) {
    const sampleWidth = Math.min(80, width);
    const sampleHeight = Math.min(80, height);
    const sampleX = Math.floor(width / 2) - Math.floor(sampleWidth / 2);
    const sampleY = Math.floor(height / 2) - Math.floor(sampleHeight / 2);
    
    const imgData = ctx.getImageData(sampleX, sampleY, sampleWidth, sampleHeight);
    const data = imgData.data;
    
    let rSum = 0, gSum = 0, bSum = 0, totalPixels = 0;
    for (let i = 0; i < data.length; i += 4) {
        rSum += data[i];
        gSum += data[i+1];
        bSum += data[i+2];
        totalPixels++;
    }
    
    const avgR = rSum / totalPixels;
    const avgG = gSum / totalPixels;
    const avgB = bSum / totalPixels;
    
    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let computedTone = "spring";
    
    if (warmValue > 35) {
        computedTone = avgR > 180 ? "spring" : "autumn";
    } else {
        computedTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }
    
    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        triggerFileBtn.classList.remove('hidden');
        showResult(computedTone);
    }, 1300);
}

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
    triggerFileBtn.classList.remove('hidden');
}
