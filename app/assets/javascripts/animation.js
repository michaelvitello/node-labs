let frames = 26;
let frame = 0;
const div = document.getElementById("home-image");

// const getSpeed = function(){
//   return Number(document.getElementById('speed').value);
// }

const animate = function() {
  setInterval(function () {
      let frameOffset = (++frame % frames);
      div.className = '';
      div.classList.add("img-" + frameOffset) }, 9);
};

document.addEventListener("DOMContentLoaded", animate);
