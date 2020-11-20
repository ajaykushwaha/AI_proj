var scrolling = false;
function getMessages() {
  if (!scrolling) {
    $.get("/messages/", function(messages) {
      $("#mymsglist").html(messages);
    });
  }
  scrolling = false;
}

/*

$(function() {
  $("#msg-list-div").on("scroll", function() {
    scrolling = true;
  });
  refreshTimer = setTimeout(getMessages, 1000);
});
*/
// using jQuery
function getCookie(name) {
  var cookieValue = null;
  if (document.cookie && document.cookie != "") {
    var cookies = document.cookie.split(";");
    for (var i = 0; i < cookies.length; i++) {
      var cookie = jQuery.trim(cookies[i]);
      // Does this cookie string begin with the name we want?
      if (cookie.substring(0, name.length + 1) == name + "=") {
        cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
        break;
      }
    }
  }
  return cookieValue;
}
var csrftoken = getCookie("csrftoken");

function csrfSafeMethod(method) {
  // these HTTP methods do not require CSRF protection
  return /^(GET|HEAD|OPTIONS|TRACE)$/.test(method);
}
$.ajaxSetup({
  beforeSend: function(xhr, settings) {
    if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
      xhr.setRequestHeader("X-CSRFToken", csrftoken);
    }
  }
});

$(document).ready(function() {
  $("#send").attr("disabled", "disabled");
  $("#chat-msg").keyup(function() {
    if ($(this).val() != "") {
      $("#send").removeAttr("disabled");
    } else {
      $("#send").attr("disabled", "disabled");
    }
  });

  $("#chat-form").on("submit", function(event) {
    event.preventDefault();
    $.ajax({
      url: "post/",
      data: { msgbox: $("#chat-msg").val() },
      type: "POST",
      success: function(json) {
        $("#chat-msg").val("");
        $("#mymsglist").append(
          '<div class="row container lighter" style="width: inherit;"><div class="col-sm-11" style="text-align:right">' +
            json.msg +
            '</div><div class="col-sm-1" style="padding:0px"><img src=' +
            url +
            ' alt="Avatar" ></span></div></div>'
        );
        setTimeout(getMessages, 1000);
        setTimeout(getMessages, 1000);
      }
    });
  });
});
