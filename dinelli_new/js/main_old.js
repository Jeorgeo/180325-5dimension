
//*require fancybox

/*$(document).ready(function(){
  $(".show_modal").fancybox({
    type: 'inline',
    padding : 20,
    content: $('#modal')
  });

});*/

//*require WOW effects

/*new WOW().init();*/

/*
# Menu toggle
*/

console.log('test');

var toggle_btn = document.getElementById('js-toggle');
var menu_nav = document.getElementById('masthead');
var arrow_toggle = document.querySelector('header-menu-toggle');

toggle_btn.addEventListener('click', moveMenu);

function moveMenu(){
  console.log('test1');
  if(menu_nav.classList.contains('nav-show')) {
      arrow_toggle.removeClass('btn-arrow-top');
      arrow_toggle.removeClass('btn-arrow-bottom');
      menu_nav.removeClass('nav-show');
     } else {
      arrow_toggle.add('btn-arrow-top');
      arrow_toggle.add('btn-arrow-bottom');
      menu_nav.classList.add('nav-show');
      }
};
