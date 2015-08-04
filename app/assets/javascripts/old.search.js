$(function() {
  $('#search_with_submit').on('submit', function(event) {
    event.preventDefault();

    $.getJSON("/api/posts.json", { search: $('#search_with_submit input').val() }, function(data) {
      console.log(data);
      $('#postsList').html('');

      data.forEach(function(post) {
        $('#postsList').append('<li>' + post.title + '</li>')
      });
    });
  })



  $('#search_on_keyup input').on('keyup', function(event) {
    event.preventDefault();

    $.getJSON("/api/posts.json", { search: $('#search_on_keyup input').val() }, function(data) {
      console.log(data);
      $('#postsList').html('');

      data.forEach(function(post) {
        $('#postsList').append('<li>' + post.title + '</li>')
      });
    });
  })
});

