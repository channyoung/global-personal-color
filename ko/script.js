const questions = [
    {
        question: "1. 골드와 실버 주얼리 중 어떤 것이 피부를 더 살려주나요?",
        answers: [
            { text: "골드를 착용했을 때 피부가 화사해 보인다.", score: { warm: 2, cool: 0 } },
            { text: "실버를 착용했을 때 피부가 투명해 보인다.", score: { warm: 0, cool: 2 } }
        ]
    },
    {
        question: "2. 자외선에 장시간 노출되었을 때 피부 반응은 어떤가요?",
        answers: [
            { text: "붉어지기보다는 쉽게 그을리고 어두워진다.", score: { warm: 1, cool: 0 } },
            { text: "쉽게 빨갛게 익거나 화상을 입는다.", score: { warm: 0, cool: 1 } }
        ]
    },
    {
        question: "3. 주변 사람들에게 자주 듣는 나의 첫인상 분위기는?",
        answers: [
            { text: "차분하고 부드러우며 따뜻한 이미지.", score: { warm: 1, cool: 0 } },
            { text: "선명하고 깨끗하며 시크한 이미지.", score: { warm: 0, cool: 1 } }
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
    spring: { title: "Spring Warm", desc: "당신은 생기발랄하고 따뜻한 에너지를 가진 봄 웜톤입니다! 피치, 코랄, 허니 카멜 컬러가 가장 베스트입니다.", colors: ["#FF6B6B", "#FFD93D", "#6BCB77", "#4D96FF"] },
    summer: { title: "Summer Cool", desc: "당신은 맑고 청량하며 우아한 아우라를 지닌 여름 쿨톤입니다! 라벤더와 스카이 블루가 찰떡입니다.", colors: ["#E8A0BF", "#B9F3FC", "#A7BBC7", "#E1E5EA"] },
    autumn: { title: "Autumn Warm", desc: "당신은 깊고 풍부하며 고급스러운 분위기를 풍기는 가을 웜톤입니다! 카키, 버건디 계열이 매력을 극대화합니다.", colors: ["#826F66", "#B85C38", "#5C3D2E", "#E0C097"] },
    winter: { title: "Winter Cool", desc: "당신은 모던하고 선명하며 카리스마 있는 분위기를 가진 겨울 쿨톤입니다! 퓨어 블랙, 화이트, 네이비가 이목구비를 살려줍니다.", colors: ["#000000", "#FFFFFF", "#1A1A40", "#7A0BC0"] }
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
