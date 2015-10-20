
$(document).ready(function()
{
  var show_spinner = function()
  {
    $('#search-wait').delay(250).toggleClass("spinner").toggleClass("hide");
  }

  var hide_spinner = function()
  {
    $('#search-wait').toggleClass("hide").toggleClass("spinner");
  }

  var search_function = function()
  {
    show_spinner();

    var search_text = $(this).val();

    $.ajax("/definitions/search",
      {
        data:
        {
          search: search_text
        }
      }).done(hide_spinner);
  }

  $("#search").keyup($.debounce(search_function, 300));

});
