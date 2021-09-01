$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});
$(document).ready(function(){
  $('.sidebar-nav').affix({offset: {top: 205} }); 
});
