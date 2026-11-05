const now = new Date();
document.querySelector('[data-today]').textContent = now.toLocaleDateString('pt-BR');
let duration = 15 * 60;
const updateTimer = () => {
  const minutes = Math.floor(duration / 60);
  const seconds = duration % 60;
  document.querySelector('[data-minutes]').textContent = String(minutes).padStart(2, '0');
  document.querySelector('[data-seconds]').textContent = String(seconds).padStart(2, '0');
  duration = duration > 0 ? duration - 1 : 15 * 60;
};
updateTimer();
setInterval(updateTimer, 1000);
