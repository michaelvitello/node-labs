const componentPrices = document.querySelectorAll(".components");
let totalPrice = document.getElementById("current-price");

componentPrices.forEach(function(elem) {
  elem.addEventListener('click', function(e) {
    total = Number(this.querySelector('p').getAttribute('data-value')) + Number(totalPrice.getAttribute('data-value'));
    totalPrice.innerText = "$" + total + '.00';
  });
});
