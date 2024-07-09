<!DOCTYPE html>
<style>
body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  row-gap: 1em;
  background-image: radial-gradient(circle, #fff 60%, #cfcecb);
  font-family: sans-serif;
}

.scratch-card {
  position: relative;
  border: 4px solid #c7c6cf;
  border-radius: 8px;
  padding: 12px;
  width: 320px;
  height: 320px;
  background-color: #fff;
}

.scratch-card-cover-container {
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  border-radius: 4px;
  width: 100%;
  height: 100%;
  filter: url("#remove-black");
  transition: opacity 0.4s;
}

.scratch-card-cover-container.clear {
  opacity: 0;
}

.scratch-card-cover-container.hidden {
  display: none;
}

.scratch-card-canvas {
  position: absolute;
  z-index: 2;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  cursor: grab;
  touch-action: none;
}

.scratch-card-canvas.hidden {
  opacity: 0;
}

.scratch-card-canvas:active {
  cursor: grabbing;
}

.scratch-card-canvas-render {
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: transparent;
  transition: background-color 0.2s;
}

.scratch-card-canvas-render.hidden {
  display: none;
}

.scratch-card-cover {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: #cfced6;
  background-image: linear-gradient(to right, #cfced6, #e0dfe6, #efeef3, #e0dfe6, #cfced6);
  overflow: hidden;
}

.scratch-card-cover::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: linear-gradient(135deg, transparent 40%, rgba(255, 255, 255, 0.8) 50%, transparent 60%);
  background-position: bottom right;
  background-size: 300% 300%;
  background-repeat: no-repeat;
}

.scratch-card-cover.shine::before {
  animation: shine 8s infinite;
}

@keyframes shine {
  50% {
    background-position: 0% 0%;
  }
  100% {
    background-position: -50% -50%;
  }
}
.scratch-card-cover::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.1;
  filter: url("#noise");
}

.scratch-card-cover-background {
  width: 100%;
  height: 100%;
  fill: #555;
  opacity: 0.1;
}

.scratch-card-image {
  border-radius: 4px;
  width: 100%;
  height: 100%;
  object-fit: contain;
  filter: drop-shadow(0 4px 4px rgba(0, 0, 0, 0.16));
  user-select: none;
  will-change: transform;
}

.scratch-card-image.animate {
  animation: pop-out-in cubic-bezier(0.65, 1.35, 0.5, 1) 1s;
}

@keyframes pop-out-in {
  36% {
    transform: scale(1.125);
  }
  100% {
    transform: scale(1);
  }
}
</style>
<body>
  <div id="countdown">Countdown: 10 seconds</div>

  <div class="scratch-card">
    <div class="scratch-card-cover-container">
      <canvas class="scratch-card-canvas" width="320" height="320"></canvas>
      <!-- only needed for Safari and iOS browsers -->
      <img class="scratch-card-canvas-render hidden" alt="">
      <div class="scratch-card-cover shine">
        <svg class="scratch-card-cover-background" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 320"><path d="M72.417 85.633a2 2 0 1 0-3.42-2.075l-3.113 5.129a2 2 0 1 0 3.42 2.075l3.113-5.129zm-8.301 13.679a2 2 0 1 0-3.42-2.075l-3.113 5.129a2 2 0 0 0 3.42 2.075l3.113-5.129zm11.997 1.432a2 2 0 0 1-2.747.672l-5.129-3.113a2 2 0 1 1 2.075-3.42l5.129 3.113a2 2 0 0 1 .672 2.748zm-16.425-7.629a2 2 0 1 0 2.075-3.42l-5.129-3.113a2 2 0 1 0-2.075 3.42l5.129 3.113z"/><path fill-rule="evenodd" d="M262.093 121.254a2 2 0 1 0-3.873-1.001l-1.502 5.809a2 2 0 1 0 3.873 1.001l1.502-5.809zm-4.004 15.491a2 2 0 1 0-3.873-1.001l-1.502 5.809a2 2 0 1 0 3.873 1.001l1.502-5.809zm11.9-2.088a2 2 0 0 1-2.437 1.436l-5.809-1.502a2 2 0 1 1 1.001-3.873l5.809 1.502a2 2 0 0 1 1.436 2.437zm-17.927-2.569a2 2 0 0 0 2.437-1.436 2 2 0 0 0-1.436-2.436l-5.809-1.502a2 2 0 0 0-2.437 1.435 2 2 0 0 0 1.436 2.437l5.809 1.502z"/><path d="M196.858 235.528a2 2 0 0 0-2.437-1.435 2 2 0 0 0-1.435 2.437l1.504 5.809a2 2 0 1 0 3.872-1.003l-1.504-5.808zm4.01 15.489a2 2 0 0 0-2.437-1.435 2 2 0 0 0-1.435 2.437l1.504 5.809a2 2 0 1 0 3.872-1.003l-1.504-5.808zm9.396-7.597a2 2 0 0 1-1.435 2.437l-5.809 1.504a2 2 0 1 1-1.002-3.873l5.808-1.503a2 2 0 0 1 2.438 1.435zm-16.924 6.447a2 2 0 1 0-1.003-3.873l-5.808 1.504a2 2 0 1 0 1.002 3.873l5.809-1.504zm-129.604 20.16a2 2 0 1 0 3.032-2.609l-3.913-4.548a2 2 0 1 0-3.032 2.609l3.913 4.548zm14.42-3.173a2 2 0 0 0-2.609-3.032l-4.548 3.914a2 2 0 0 0 2.609 3.032l4.548-3.914zM66.027 277.29a2 2 0 1 0-2.609-3.032l-4.548 3.913a2 2 0 1 0 2.609 3.032l4.548-3.913zm10.965 5.077a2 2 0 0 1-2.82-.212l-3.913-4.548a2 2 0 0 1 3.032-2.609l3.913 4.548a2 2 0 0 1-.212 2.821z"/><g fill-rule="evenodd"><path d="M138.629 74.686a2 2 0 0 1 1.66 2.29l-.787 4.936c-1.184 7.422-10.292 10.36-15.589 5.028-3.163-3.183-8.602-1.12-8.858 3.36l-.325 5.701a2 2 0 1 1-3.994-.228l.326-5.701c.452-7.935 10.086-11.59 15.688-5.952 2.991 3.01 8.134 1.351 8.802-2.839l.787-4.936a2 2 0 0 1 2.29-1.66zm129.754 151.907c-3.652-2.608-8.668.338-8.169 4.798.836 7.469-7.16 12.727-13.686 8.999l-4.34-2.479a2 2 0 0 1 1.984-3.473l4.34 2.479c3.684 2.104 8.199-.864 7.727-5.081-.884-7.899 8-13.117 14.469-8.498l4.647 3.318a2 2 0 1 1-2.325 3.256l-4.647-3.319zM219.458 34.1a2 2 0 0 1 .733-2.732l4.33-2.497c6.51-3.754 14.528 1.471 13.723 8.943-.481 4.462 4.547 7.387 8.189 4.764l4.633-3.338a2 2 0 0 1 2.338 3.246l-4.633 3.338c-6.45 4.646-15.356-.536-14.504-8.439.455-4.219-4.073-7.169-7.748-5.049l-4.33 2.497a2 2 0 0 1-2.731-.733zM43.604 115.569a2 2 0 0 1-1.242 2.541l-4.727 1.623c-4.013 1.378-4.764 6.729-1.285 9.158 6.517 4.551 4.571 14.669-3.169 16.478l-5.56 1.3a2 2 0 0 1-.91-3.895l5.561-1.3c4.37-1.021 5.468-6.734 1.789-9.303-6.162-4.303-4.832-13.78 2.276-16.221l4.727-1.623a2 2 0 0 1 2.541 1.242zM77.095 219.2a2 2 0 0 1 2.043-1.956l4.997.108c7.514.162 11.664 8.786 7.103 14.76-2.723 3.566.061 8.674 4.535 8.318l5.693-.454a2 2 0 1 1 .317 3.988l-5.692.453c-7.923.631-12.855-8.415-8.031-14.733 2.575-3.372.232-8.241-4.01-8.333l-4.997-.108a2 2 0 0 1-1.956-2.043zm-14.771-64.574l-.78-.855.129 1.15a8 8 0 0 1-4.645 8.177l-1.054.478h0l1.134.233a8 8 0 0 1 6.341 6.945l.129 1.15.572-1.006a8 8 0 0 1 8.565-3.885l1.134.232-.78-.854a8 8 0 0 1-1.048-9.346l.572-1.006-1.054.478a8 8 0 0 1-9.212-1.891zm-8.003 5.308c-3.529 1.6-2.948 6.781.848 7.561l1.134.232a4 4 0 0 1 3.171 3.473l.129 1.15c.432 3.85 5.539 4.899 7.453 1.53l.572-1.007a4 4 0 0 1 4.282-1.942l1.134.233c3.796.779 6.371-3.754 3.758-6.616l-.78-.854a4 4 0 0 1-.524-4.673l.572-1.007c1.914-3.369-1.602-7.219-5.13-5.618l-1.054.478a4 4 0 0 1-4.606-.946l-.78-.854c-2.613-2.862-7.361-.708-6.929 3.143l.129 1.15a4 4 0 0 1-2.323 4.089l-1.054.478zM110.956 46.42l1.794-1.614-2.4.251a8 8 0 0 1-8.142-4.707l-.98-2.205-.503 2.36a8 8 0 0 1-6.993 6.289l-2.4.251 2.089 1.208-1.856 3.209 1.856-3.209a8 8 0 0 1 3.82 8.594l-.503 2.36 1.794-1.614a8 8 0 0 1 9.353-.977l2.089 1.208-.98-2.205a8 8 0 0 1 1.961-9.198zm4.469 1.36c2.881-2.591.764-7.355-3.09-6.952l-2.401.251a4 4 0 0 1-4.071-2.354l-.98-2.205c-1.574-3.541-6.759-2.999-7.567.791l-.503 2.36a4 4 0 0 1-3.496 3.144l-2.4.251c-3.854.403-4.941 5.502-1.586 7.441l2.089 1.208a4 4 0 0 1 1.91 4.297l-.503 2.36c-.808 3.79 3.706 6.399 6.587 3.808l1.794-1.614a4 4 0 0 1 4.677-.489l2.089 1.208c3.355 1.939 7.232-1.547 5.658-5.088l-.981-2.205a4 4 0 0 1 .981-4.599l1.794-1.614zm104.847 31.673l.737-4.207-3.069 2.97a8 8 0 0 1-9.312 1.32l-3.773-2.001 1.877 3.836a8 8 0 0 1-1.623 9.264l-3.068 2.97 4.228-.599a8 8 0 0 1 8.309 4.406l1.876 3.837.737-4.207a8 8 0 0 1 6.758-6.541l4.228-.599-3.773-2.001a8 8 0 0 1-4.132-8.448zm4.677-3.517c.668-3.817-3.938-6.259-6.722-3.564l-3.069 2.97a4 4 0 0 1-4.656.66l-3.773-2.001c-3.423-1.815-7.17 1.811-5.467 5.292l1.877 3.836a4 4 0 0 1-.812 4.632l-3.068 2.97c-2.785 2.695-.494 7.378 3.343 6.835l4.228-.599a4 4 0 0 1 4.155 2.203l1.876 3.836c1.703 3.481 6.865 2.75 7.533-1.067l.737-4.207a4 4 0 0 1 3.379-3.27l4.229-.599c3.836-.544 4.736-5.679 1.312-7.494l-3.773-2.001a4 4 0 0 1-2.066-4.224l.737-4.207zM167.501 279.54l1.588-.913-1.821-.195a8 8 0 0 1-6.976-6.307l-.377-1.793-.748 1.672a8 8 0 0 1-8.155 4.685l-1.821-.195 1.358 1.228a8 8 0 0 1 1.936 9.203l-.748 1.672 1.588-.912a8 8 0 0 1 9.351 1.002l1.359 1.229-.377-1.793a8 8 0 0 1 3.843-8.583zm3.581 2.556c3.36-1.931 2.287-7.033-1.566-7.446l-1.822-.195a4 4 0 0 1-3.487-3.154l-.378-1.792c-.797-3.792-5.981-4.348-7.565-.812l-.748 1.672a4 4 0 0 1-4.077 2.343l-1.822-.195c-3.853-.414-5.983 4.345-3.109 6.944l1.359 1.228a4 4 0 0 1 .968 4.602l-.749 1.672c-1.583 3.536 2.284 7.033 5.644 5.103l1.588-.913a4 4 0 0 1 4.675.501l1.359 1.229c2.874 2.599 7.395.001 6.597-3.79l-.377-1.793a4 4 0 0 1 1.922-4.292l1.588-.912zm123.357-94.108l1.83-.08-1.528-1.011a8 8 0 0 1-3.298-8.807l.489-1.765-1.433 1.141a8 8 0 0 1-9.395.414l-1.528-1.01.642 1.715a8 8 0 0 1-2.509 9.064l-1.433 1.141 1.83-.081c3.462-.153 6.629 1.942 7.845 5.187l.642 1.716.489-1.766a8 8 0 0 1 7.357-5.858zm2.006 3.916c3.872-.171 5.262-5.196 2.03-7.333l-1.528-1.01a4 4 0 0 1-1.649-4.404l.489-1.765c1.034-3.735-3.315-6.61-6.346-4.197l-1.433 1.141a4 4 0 0 1-4.698.208l-1.528-1.011c-3.232-2.137-7.311 1.111-5.952 4.739l.642 1.716a4 4 0 0 1-1.255 4.532l-1.433 1.141c-3.031 2.413-1.203 7.296 2.668 7.125l1.83-.081a4 4 0 0 1 3.923 2.594l.642 1.715c1.359 3.629 6.567 3.399 7.601-.335l.489-1.765a4 4 0 0 1 3.678-2.929l1.83-.081z"/><use href="#B"/><use href="#B" x="103" y="30"/><use href="#B" x="-34" y="189"/><use href="#B" x="64" y="126"/><use href="#B" x="-128" y="-2"/><use href="#B" x="-128" y="161"/><use href="#B" x="71" y="219"/></g><path d="M201.469 137.109H177.45a24.65 24.65 0 0 0 6.167-3.906c1.284-1.141 2.317-2.535 3.037-4.095s1.108-3.25 1.143-4.967a13.98 13.98 0 0 0-.982-5.566 13.96 13.96 0 0 0-3.105-4.722 13.98 13.98 0 0 0-4.722-3.106 13.96 13.96 0 0 0-5.566-.981c-1.717.035-3.408.424-4.968 1.143a12.48 12.48 0 0 0-4.095 3.036c-2.885 3.257-4.702 7.5-5.859 11.568-1.147-4.068-2.964-8.301-5.859-11.568a12.48 12.48 0 0 0-4.095-3.036c-1.56-.719-3.251-1.108-4.968-1.143a13.96 13.96 0 0 0-5.566.981 13.98 13.98 0 0 0-4.722 3.106 13.96 13.96 0 0 0-3.105 4.722 13.98 13.98 0 0 0-.982 5.566c.035 1.717.424 3.408 1.143 4.967s1.753 2.954 3.037 4.095a24.65 24.65 0 0 0 6.167 3.906h-24.019a5.86 5.86 0 0 0-4.143 1.717c-1.099 1.098-1.716 2.589-1.716 4.143v15.625a5.86 5.86 0 0 0 5.859 5.859h1.953v33.203a5.86 5.86 0 0 0 5.86 5.86h70.312a5.86 5.86 0 0 0 5.86-5.86v-33.203h1.953a5.86 5.86 0 0 0 5.859-5.859v-15.625c0-1.554-.617-3.045-1.716-4.143a5.86 5.86 0 0 0-4.143-1.717zm-34.18-20.576a8.6 8.6 0 0 1 6.25-2.861h.298c1.345.001 2.676.272 3.915.797s2.36 1.292 3.297 2.257a10.05 10.05 0 0 1 2.159 3.361c.488 1.253.72 2.592.683 3.936-.022 1.183-.287 2.349-.779 3.424s-1.201 2.038-2.083 2.826c-5.903 5.225-16.147 6.451-20.508 6.734.303-4.326 1.524-14.546 6.768-20.474zm-34.18 7.49c-.037-1.344.195-2.683.683-3.936a10.05 10.05 0 0 1 2.159-3.361c.937-.965 2.058-1.733 3.297-2.257s2.57-.796 3.915-.797h.298a8.6 8.6 0 0 1 6.25 2.861c5.229 5.904 6.45 16.148 6.733 20.508-4.34-.283-14.585-1.509-20.507-6.733-.88-.796-1.585-1.765-2.071-2.847a8.6 8.6 0 0 1-.757-3.438zm-19.531 34.571v-15.625c0-.518.206-1.015.572-1.381a1.95 1.95 0 0 1 1.381-.572h41.016v19.531h-41.016c-.518 0-1.015-.206-1.381-.572s-.572-.863-.572-1.381zm7.813 39.062v-33.203h35.156v35.156h-33.203a1.95 1.95 0 0 1-1.953-1.953zm74.218 0a1.95 1.95 0 0 1-1.953 1.953h-33.203v-35.156h35.156v33.203zm7.813-39.062c0 .518-.206 1.015-.572 1.381s-.863.572-1.381.572h-41.016v-19.531h41.016a1.95 1.95 0 0 1 1.381.572c.366.366.572.863.572 1.381v15.625z"/><defs><path id="B" d="M172 57a4 4 0 1 0 0-8 4 4 0 1 0 0 8zm0 4a8 8 0 1 0 0-16 8 8 0 1 0 0 16z"/></defs></svg>
      </div>
    </div>
    <img class="scratch-card-image" src="../shoppers-gh-pages/15couponn.avif" alt="Apple 50$ gift card">
  </div>
    
  <svg width="0" height="0">
    <filter id="remove-black" color-interpolation-filters="sRGB">
      <feColorMatrix
        type="matrix"
        values="1 0 0 0 0
                0 1 0 0 0
                0 0 1 0 0
                -1 -1 -1 0 1"
        result="black-pixels"
      />
      <feComposite in="SourceGraphic" in2="black-pixels" operator="out" />
    </filter>
    <filter id="noise">
      <feTurbulence baseFrequency="0.5"></feTurbulence>
    </filter>
  </svg>
</body>
<script>
const isSafari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);

const scratchCardCover = document.querySelector('.scratch-card-cover');
const scratchCardCanvasRender = document.querySelector('.scratch-card-canvas-render');
const scratchCardCoverContainer = document.querySelector('.scratch-card-cover-container');
const scratchCardText = document.querySelector('.scratch-card-text');
const scratchCardImage = document.querySelector('.scratch-card-image');

const canvas = document.querySelector('canvas');
const context = canvas.getContext('2d');
let isPointerDown = false;
let positionX;
let positionY;
let clearDetectionTimeout = null;

const devicePixelRatio = window.devicePixelRatio || 1;

const canvasWidth = canvas.offsetWidth * devicePixelRatio;
const canvasHeight = canvas.offsetHeight * devicePixelRatio;

canvas.width = canvasWidth;
canvas.height = canvasHeight;

context.scale(devicePixelRatio, devicePixelRatio);

if (isSafari) {
  canvas.classList.add('hidden');
}

canvas.addEventListener('pointerdown', (e) => {
  scratchCardCover.classList.remove('shine');
  ({ x: positionX, y: positionY } = getPosition(e));
  clearTimeout(clearDetectionTimeout);
  
  canvas.addEventListener('pointermove', plot);
  
  window.addEventListener('pointerup', (e) => {
    canvas.removeEventListener('pointermove', plot);
    clearDetectionTimeout = setTimeout(() => {
      checkBlackFillPercentage();
    }, 500);
  }, { once: true });
});

const checkBlackFillPercentage = () => {
  const imageData = context.getImageData(0, 0, canvasWidth, canvasHeight);
  const pixelData = imageData.data;

  let blackPixelCount = 0;

  for (let i = 0; i < pixelData.length; i += 4) {
    const red = pixelData[i];
    const green = pixelData[i + 1];
    const blue = pixelData[i + 2];
    const alpha = pixelData[i + 3];

    if (red === 0 && green === 0 && blue === 0 && alpha === 255) {
      blackPixelCount++;
    }
  }

  const blackFillPercentage = blackPixelCount * 100 / (canvasWidth * canvasHeight);
 
  if (blackFillPercentage >= 45) {
    scratchCardCoverContainer.classList.add('clear');
    confetti({
      particleCount: 100,
      spread: 90,
      origin: {
         y: (scratchCardText.getBoundingClientRect().bottom + 60) / window.innerHeight,
      },
    });
    scratchCardImage.classList.add('animate');
    scratchCardCoverContainer.addEventListener('transitionend', () => {
      scratchCardCoverContainer.classList.add('hidden');
    }, { once: true });
  }
}

const getPosition = ({ clientX, clientY }) => {
  const { left, top } = canvas.getBoundingClientRect();
  return {
    x: clientX - left,
    y: clientY - top,
  };
}

const plotLine = (context, x1, y1, x2, y2) => {
  var diffX = Math.abs(x2 - x1);
  var diffY = Math.abs(y2 - y1);
  var dist = Math.sqrt(diffX * diffX + diffY * diffY);
  var step = dist / 50;
  var i = 0;
  var t;
  var x;
  var y;

  while (i < dist) {
    t = Math.min(1, i / dist);

    x = x1 + (x2 - x1) * t;
    y = y1 + (y2 - y1) * t;

    context.beginPath();
    context.arc(x, y, 16, 0, Math.PI * 2);
    context.fill();

    i += step;
  }
}

const setImageFromCanvas = () => {
  canvas.toBlob((blob) => {
    const url = URL.createObjectURL(blob);
    previousUrl = scratchCardCanvasRender.src;
    scratchCardCanvasRender.src = url;
    if (!previousUrl) {
      scratchCardCanvasRender.classList.remove('hidden');
    } else {
      URL.revokeObjectURL(previousUrl);
    }
    previousUrl = url;
  });
}

let setImageTimeout = null;

const plot = (e) => {
  const { x, y } = getPosition(e);
  plotLine(context, positionX, positionY, x, y);
  positionX = x;
  positionY = y;
  if (isSafari) {
    clearTimeout(setImageTimeout);

    setImageTimeout = setTimeout(() => {
      setImageFromCanvas();
    }, 5);
  }
};


   // Set the initial countdown value
   let countdownValue = 10;

// Function to update the countdown and redirect after 10 seconds
function updateCountdown() {
  document.getElementById('countdown').innerText = 'Countdown: ' + countdownValue + ' seconds';

  if (countdownValue === 0) {
    // Redirect after 10 seconds
    window.location.href = 'receipt.php';
  } else {
    // Update the countdown value
    countdownValue--;

    // Call the updateCountdown function again after 1 second (1000 milliseconds)
    setTimeout(updateCountdown, 1000);
  }
}

// Initial call to start the countdown
updateCountdown();


</script>
</html>