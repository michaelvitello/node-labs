const componentPrices = document.querySelectorAll(".components");
let totalPrice = document.getElementById("current-price");



componentPrices.forEach(function(elem) {
  elem.addEventListener('click', function(e) {
    if (JSON.parse(totalPrice.getAttribute('data-set')) === null) {
      total = Number(this.querySelector('p').getAttribute('data-value')) + Number(totalPrice.getAttribute('data-value'));
      totalPrice.innerText = "$" + total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '.00';
    } else {
      const previousSelection = JSON.parse(totalPrice.getAttribute('data-set')).price_cents/100;
      total = Number(totalPrice.getAttribute('data-value')) - previousSelection + Number(this.querySelector('p').getAttribute('data-value'));
      totalPrice.innerText = "$" + total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '.00';
    }
  });
});
