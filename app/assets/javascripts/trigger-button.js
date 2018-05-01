var componentOptions = document.getElementsByClassName("component-button");
let totalPrice = document.getElementById("current-price");

componentOptions = Array.prototype.slice.call(componentOptions)

const componentChanged = function() {
  const checked = document.querySelector(".component-button:checked ~ .components p");

  if(checked) {
    total = Number(checked.getAttribute('data-value')) + Number(totalPrice.getAttribute('data-value'));
    totalPrice.innerText = "$" + total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '.00';
    desc = checked.getAttribute("data-component-description");
    document.querySelector(".component-description").innerHTML = desc;
    pic = checked.getAttribute("data-component-picture");
    document.querySelector(".image-container").style = "background-image:url(" + pic + ")";
  }
};

componentOptions.forEach(function(option) {
  option.addEventListener('click', function(){
    var checked = componentOptions.some(function (option) {
      componentChanged();
      return option.checked
    })

    if (checked)
      document.querySelector('.next').disabled = false;
  })
})

document.addEventListener('DOMContentLoaded', componentChanged);
