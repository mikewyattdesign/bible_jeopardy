$(document).ready ->
    $(".modal-footer .button").click ->
        $(this).next().toggleClass "hidden"