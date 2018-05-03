let frames = 10;
let frame = 0;
let speed = 12;

const div = document.getElementById("home-image");

const pullThePlug = function() {
  speed = speed * (1 + speed / 1000);

  if (speed > 1000) {
    div.removeEventListener('click', pullThePlug, true);
    div.addEventListener('click', pushThePlug);
  }
  else {
    setTimeout(pullThePlug, speed);
  }
};

const pushThePlug = function() {
  speed = 12;
  animate();
};

const animate = function() {
  div.className = '';
  div.classList.add("img-" + (++frame % frames))

  if (speed < 1000) setTimeout(animate, speed);

  div.addEventListener('click', pullThePlug);
};
