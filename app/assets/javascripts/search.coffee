$(document).ready ->
  $('.reset-action').click ->
    $('#text').val ''
    $('.search form').submit()

  $('#search').dataTable(
    {
      "aLengthMenu": [10, 20, 50, 100]
      "bPaginate": true
      "bFilter": false
      "bInfo": true
      "bSortClasses": false
      "bProcessing": true
      "bServerSide": true
      "sPaginationType": "full_numbers"
      "sAjaxSource": $('#search').data('source')
      "sDom": 'Rlfrtip'
      "aoColumns": [
        { "mDataProp": "name" },
        { "mDataProp": "value" },
        { "mDataProp": "unit" },
        { "mDataProp": "source" },
        { "mDataProp": "expression" },
        { "mDataProp": "description" },
        { "mDataProp": "button" }
      ]
      "oLanguage":
        {
        "sInfo": "Displaying Parameter <b>_START_</b> - <b>_END_</b> of <b>_TOTAL_</b> in total"
        "sLengthMenu": "_MENU_"
        }
      "fnDrawCallback": (oSettings) ->
        MathJax.Hub.Queue(["Typeset", MathJax.Hub])
    })

  $('#reset').click ->
    ColReorder.fnReset(oTable)
    return false

  $('#parameter_dialog').dialog({
  autoOpen: false
  height: "auto"
  width: 880
  position: "top"
  modal: true
  title: "View Parameter"
  buttons:
    "Close": (event) ->
      event.stopPropagation()
      ;
      $('#parameter_dialog').dialog("close")
      return false
  })

  $('.dataTable tr').live('click', (event) ->
    if $(event.target).is('td')
      unless $('#parameter_dialog').dialog("isOpen")
        parameterId = $(this).find("td input[type='submit']").data('parameter-id')
        $.get "/parameters/" + parameterId + "?for_dialog=true", (data) ->
          $('#parameter_dialog').html data

        $('#parameter_dialog').dialog("open")

        return false
  )
