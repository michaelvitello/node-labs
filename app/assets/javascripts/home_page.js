const cardDeck = document.querySelector(".card-deck");
const homeQuestion = document.querySelector(".home-question-text");

const homeDivFadeIn = function() {
  if (window.scrollY > 230)
    document.querySelector('.home-div').style.opacity = '1';
};

const homeScroll = function() {
  if (window.scrollY > 900)
    cardDeck.style.opacity = "1";
};

const step1 = function() {
  if (window.scrollY > 900)
    homeQuestion.style.opacity = "1";
}


