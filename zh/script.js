const questions = [
    {
        question: "1. 金色和银色饰品，哪个更适合您？",
        answers: [
            { text: "金色让我的皮肤看起来明亮温暖。", score: { warm: 2, cool: 0 } },
            { text: "银色让我的皮肤看起来干净通透。", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 长时间日晒后您的皮肤反应如何？",
        answers: [
            { text: "很容易晒黑。", score: { warm: 1, cool: 0 } },
            { text: "很容易发红或晒伤。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 您通常给人留下的第一印象是什么？",
        answers: [
            { text: "平静、柔和、温暖或亲切的形象。", score: { warm: 1, cool: 0 } },
            { text: "清晰、干净、精致或干练的形象。", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "4. 您的自然发色或瞳孔颜色更接近哪种？",
        answers: [
            { text: "柔和的棕色或浅暖棕色。", score: { warm: 1, cool: 0 } },
            { text: "纯黑色或非常深的炭黑色。", score: { warm: 0, cool: 1 } }
        ]
    }
];

const results = {
    spring: { title: "Spring Warm", desc: "您拥有充满活力的温暖能量（春季暖色）！桃色和珊瑚色是您的最佳颜色。", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "您散发着清爽优雅的气息（夏季冷色）！薰衣草色和天蓝色非常适合您。", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "您展现出深邃丰富的氛围（秋季暖色）！卡其色、深酒红等大地色能最大化您的魅力。", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "您具有现代、干练的魅力（冬季冷色）！纯黑、纯白以及深海军蓝让您的五官更加立体。", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
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

// 📸 카메라 제어 DOM 요소들
const initCamBtn = document.getElementById('init-cam-btn');
const cameraZone = document.getElementById('camera-zone');
const cameraLoading = document.getElementById('camera-loading');
const webcam = document.getElementById('webcam');
const captureBtn = document.getElementById('capture-btn');
const calcCanvas = document.getElementById('calc-canvas');

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
    
    document.getElementById('best-color-title').innerText = "最适合您的调色板";
    document.getElementById('match-guide-title').innerText = "造型与搭配指南";
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
    
    // 결과창으로 스크롤 부드럽게 이동
    document.getElementById('quiz-container').scrollIntoView({ behavior: 'smooth' });
}

// 📸 카메라 제어 핵심 로직 파트
initCamBtn.addEventListener('click', async () => {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({
            video: { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } },
            audio: false
        });
        webcam.srcObject = localStream;
        initCamBtn.classList.add('hidden');
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
    
    // 🔍 픽셀 정밀 진단 시스템 가동 (Canvas 스냅샷)
    const ctx = calcCanvas.getContext('2d');
    calcCanvas.width = webcam.videoWidth || 640;
    calcCanvas.height = webcam.videoHeight || 480;
    
    // 좌우반전 상태 보정 후 캔버스 드로잉
    ctx.translate(calcCanvas.width, 0);
    ctx.scale(-1, 1);
    ctx.drawImage(webcam, 0, 0, calcCanvas.width, calcCanvas.height);
    
    // 화면 중앙 영역(얼굴이 위치하는 곳) 픽셀 추출
    const sampleWidth = 80;
    const sampleHeight = 80;
    const sampleX = Math.floor(calcCanvas.width / 2) - 40;
    const sampleY = Math.floor(calcCanvas.height / 2) - 40;
    
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
    
    // 🎨 수식 알고리즘: 노란기(G)와 붉은기(R) 대비 푸른기(B) 비중을 대조하여 언더톤 분석
    const warmValue = (avgR * 0.5 + avgG * 0.5) - avgB;
    let cameraResultTone = "spring";
    
    if (warmValue > 35) {
        // 웜톤 판정: 밝기(R 비율) 기준 세부 분류
        cameraResultTone = avgR > 180 ? "spring" : "autumn";
    } else {
        // 쿨톤 판정: 명도 및 채도 대비 분류
        cameraResultTone = (avgR + avgG + avgB) / 3 > 150 ? "summer" : "winter";
    }
    
    // 🧠 1.5초간 가상의 딥러닝 연산 시뮬레이션 후 결과 노출
    setTimeout(() => {
        cameraLoading.classList.add('hidden');
        initCamBtn.classList.remove('hidden');
        stopCamera();
        showResult(cameraResultTone);
    }, 1500);
});

function stopCamera() {
    if (localStream) {
        localStream.getTracks().forEach(track => track.stop());
        localStream = null;
    }
    webcam.srcObject = null;
    cameraZone.classList.add('hidden');
    cameraLoading.classList.add('hidden');
    initCamBtn.classList.remove('hidden');
}
