

scroll_bottom= function() {
  if ($('#messages').length > 0){
    $('#messagesa').scrollTop($('messages')[0].scrollHeight);
  }
}

$(document).on('turbolinks:load', function() {
  $('.message .close').on('click', function() {
    $(this).closest('.message').transition('fade');
  });
  submit_message();
  scroll_bottom();

})