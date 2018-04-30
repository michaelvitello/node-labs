var componentOptions = document.getElementsByClassName("component-button");
let totalPrice = document.getElementById("current-price");

componentOptions = Array.prototype.slice.call(componentOptions)

const componentChanged = function() {
  const checked = document.querySelector(".component-button:checked ~ .components p");

  if(checked) {
    total = Number(checked.getAttribute('data-value')) + Number(totalPrice.getAttribute('data-value'));
    totalPrice.innerText = "$" + total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '.00';
    desc = checked.getAttribute("data-component-description")
    document.getElementById("component-description").innerHTML = desc
    pic = checked.getAttribute("data-component-picture");
    document.querySelector(".main-image").src = pic;
  }
};

componentOptions.forEach(function(option) {
  option.addEventListener('click', function(){
    var checked = componentOptions.some(function (option) {
      componentChanged();
      return option.checked
    })

    if (checked) {
      var nextButton = document.getElementsByClassName('next')[0]
      // nextButton.style = "display: block;"
      nextButton.disabled = false;

    }
  })
})

document.addEventListener('DOMContentLoaded', componentChanged);
