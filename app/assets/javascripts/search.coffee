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
    "sDom": 'ilpfrtip'
    "oLanguage": {
      "sInfo": "Displaying Parameter <b>_START_</b> - <b>_END_</b> of <b>_TOTAL_</b> in total"
      "sLengthMenu": "_MENU_"
    }
    "fnDrawCallback": (oSettings) ->
      MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
    })
