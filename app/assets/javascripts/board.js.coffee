# Add answered class to clicked clue
$(document).ready ->
    $('.clue').click(->
        $(this).toggleClass 'answered'
        $(this).attr('data-toggle','') unless $(this).hasClass 'answered'
        $(this).attr('data-toggle','modal') if $(this).hasClass 'answered'
        return
        )
