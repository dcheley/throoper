//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$('textarea').blur(function () {
  $this = $(this);
  if ( $this.value != '' ) {
    $this.addClass('focused');
    alert('input read');
  }
  else {
    $this.removeClass('focused');
    alert('nothing input');
  }
});
