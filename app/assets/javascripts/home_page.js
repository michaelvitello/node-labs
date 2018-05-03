const cardDeck = document.querySelector(".card-deck");

const homeDivFadeIn = function() {
  document.querySelector('.home-div').style.opacity = '1';
};

const homeScroll = function() {
  if (window.scrollY > 80)
    cardDeck.style.opacity = "1";
};
