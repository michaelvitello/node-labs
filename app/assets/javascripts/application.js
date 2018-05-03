//= require jquery
//= require rails-ujs
//= require jquery
//= require jquery-lazy
//= require lazy-load

//= require_tree .

if (document.querySelector('body.c_pages.a_home')) {
  document.addEventListener("scroll", homeScroll);
  document.addEventListener("DOMContentLoaded", animate);
  document.addEventListener("DOMContentLoaded", homeDivFadeIn);
}

document.addEventListener('DOMContentLoaded', componentChanged);

if (document.querySelector('body.c_orders.a_show'))
  document.addEventListener('DOMContentLoaded', dropConfetti);
