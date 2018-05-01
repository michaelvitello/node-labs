let frames = 11;
let frame = -1;
const div = document.getElementById("home-image");

const getSpeed = function(){
  return Number(document.getElementById('speed').value);
}

const animate = function() {
  setTimeout(function () {
      let frameOffset = (++frame % frames);
      div.className = '';
      div.classList.add("step-" + frameOffset)
      animate();
  }, getSpeed());
};

document.addEventListener("DOMContentLoaded", animate);
