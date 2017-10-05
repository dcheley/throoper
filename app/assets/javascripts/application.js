//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  var $inputOne = $('input[type="text"]');
  var $inputTwo = $('#msg');

  $inputOne.on('blur', function() {
    if (this.value != '') {
      $(this).addClass('focused');
    }
  });

  $inputTwo.on('blur', function() {
    if (this.value != '') {
      $(this).addClass('focused');
    }
  });
});
