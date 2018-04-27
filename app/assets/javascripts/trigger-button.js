var componentOptions = document.getElementsByClassName("component-button")
componentOptions = Array.prototype.slice.call(componentOptions)

componentOptions.forEach(function(option) {
  option.addEventListener('click', function(){
    var ischecked = componentOptions.some(function (option) {
     return option.checked
    })

    if (ischecked) {
      var nextButton = document.getElementsByClassName('next')[0]
      // nextButton.style = "display: block;"
      nextButton.disabled = false;

    }
  })
})
