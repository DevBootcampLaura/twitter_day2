$(document).ready(function() {
  $('#form').submit(function(e) {
    e.preventDefault();

    var tweet = {tweet_text: $("#tweet_text").val()};
    $('#tweet_text').prop('disabled', true);
    $(".container").append("<img id='balls' src='ajax-loader.gif'/>")
    $.ajax({
      type: "POST",
      url: "/ajax_tweet",
      data: tweet,
      success: function(){
        $("#balls").remove();
        $(".container").append("<h1 id='success'>Great Success!</h1>").fadeIn(500);
        $("#success").delay(1000).fadeOut(500);
        $('#tweet_text').prop('disabled', false);
        $('#tweet_text').val("");
      }
    });
  });
});
