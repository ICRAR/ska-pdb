$(document).ready ->
  $('.reset-action').click ->
    $('#text').val ''
    $('.search form').submit()

  $('#search').dataTable({
    "bPaginate": false
    "bFilter": false
    "bInfo": false
    })
