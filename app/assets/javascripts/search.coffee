$(document).ready ->
  $('.reset-action').click ->
    $('#text').val ''
    $('.search form').submit()

  $('#search').dataTable({
    "bPaginate": true
    "bFilter": true
    "bInfo": true
    "bProcessing": true
    "bServerSide": true
    "sPaginationType": "full_numbers"
    "sAjaxSource": $('#search').data('source')
    })
