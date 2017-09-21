//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
// Input Lock

$('.field input').blur(function () {
  if (!$(this).val()) {
    $('.field').addClass('focused');
  }
});
