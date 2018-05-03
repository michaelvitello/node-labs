$(function() {
  $('.lazy img').Lazy( {
    onFinishedAll: function() {
      document.getElementById("home-image").style.display = "inline-block";
    }
  });
});
