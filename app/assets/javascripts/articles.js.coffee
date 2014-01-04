$("a[data-text-color]").click ->
  bgcolor = $(this).data("text_color")
  painIt this, bgcolor

painIt = (element, bgcolor) ->
  element.style.color = bgcolor