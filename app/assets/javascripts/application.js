//= require jquery
//= require rails-ujs
//= require jquery
//= require jquery-lazy
//= require popper
//= require bootstrap-sprockets
//= require lazy-load

//= require_tree .

document.addEventListener('DOMContentLoaded', loadUI);
document.addEventListener('DOMContentLoaded', componentChanged);

// Home page only
if (document.querySelector('body.c_pages.a_home')) {
  document.addEventListener("scroll", homeScroll);
  document.addEventListener("DOMContentLoaded", animate);
  document.addEventListener("DOMContentLoaded", homeDivFadeIn);
}

// Orders#show only
if (document.querySelector('body.c_orders.a_show'))
  document.addEventListener('DOMContentLoaded', dropConfetti);

