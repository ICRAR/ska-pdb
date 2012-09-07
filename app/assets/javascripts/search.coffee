$(document).ready ->
  $('.reset-action').click ->
    $('#text').val ''
    $('.search form').submit()

  $('#search').dataTable({
     "aLengthMenu": [10, 20, 50, 100]
    "bPaginate": true
    "bFilter": false
    "bInfo": true
    "bProcessing": true
    "bServerSide": true
    "sPaginationType": "full_numbers"
    "sAjaxSource": $('#search').data('source')
    "fnDrawCallback": (oSettings) ->
      MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
    })
