$(document).ready(function()
{
  $("#search").on("keyup",function()
  {
    var search_text = $(this).val();

    $.ajax("/definitions/search",
      {
        data:
        {
          search: search_text
        }
      });
  });
});
