function openTab(evt, tabName) {

  // Get all elements with class="tabcontent" and hide them
  $('.tabcontent').each( function() {
    $(this).slideUp(500);
  });

 //  Get all elements with class="tablinks" and remove the class "active"
 $('.tablinks').each( function() {
    $(this).removeClass('active');
 });

  // Show the current tab, and add an "active" class to the button that opened the tab
  $(`#${tabName}`).slideDown(500);
  $(evt.currentTarget).addClass(" active");
};




$(document).ready(function() {
  $('.tabcontent:first').show(1000);


let logo = $('.navbar-brand')
let menu = $('.signing')

logo.click(function(e) {
    e.preventDefault();
    menu.slideToggle(200);
});



});