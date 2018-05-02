//= require jquery
//= require rails-ujs
//= require jquery
//= require jquery-lazy

//= require_tree .

$(function() {
  $('.lazy img').Lazy( {
    onFinishedAll: function() {
      document.getElementById("home-image").style.display = "inline-block";
    }
  });
});
