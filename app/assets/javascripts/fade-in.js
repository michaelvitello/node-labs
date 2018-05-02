const cardDeck = document.querySelector(".card-deck");

window.onload = function() {
  document.querySelector('.home-div').style.opacity='1';
};

window.onscroll = function() {
  if (window.scrollY > 80) {
    cardDeck.style.opacity="1"
  };
};



