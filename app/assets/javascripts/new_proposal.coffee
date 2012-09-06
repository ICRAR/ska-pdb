class window.NewProposalController
  @generate_proposal_name = ->
    scope0 = $('#proposal_parameter_detail_attributes_scope0_id option:selected').text()
    scope1 = $('#proposal_parameter_detail_attributes_scope1_id option:selected').text()
    scope2 = $('#proposal_parameter_detail_attributes_scope2_id option:selected').text()
    scope3 = $('#proposal_parameter_detail_attributes_scope3_id option:selected').text()
    param_class = $('#proposal_parameter_detail_attributes_param_class_id option:selected').text()
    kind = $('#proposal_parameter_detail_attributes_kind_id option:selected').text()
    param_case = $('#proposal_parameter_detail_attributes_case_id option:selected').text()
    direction = $('#proposal_parameter_detail_attributes_direction_id option:selected').text()

    name = ''
    name += "#{scope0}:"  unless scope0 is ''
    name += "#{scope1}:"  unless scope1 is ''
    name += "#{scope2}:"  unless scope2 is ''
    name += "#{scope3}:"  unless scope3 is ''
    name += "#{param_class}"  unless param_class is ''
    name += "_#{kind}"  unless kind is ''
    name += "_#{param_case}"  unless param_case is ''
    name += "_#{direction}"  unless direction is ''

    $('#proposal_name').val(name)


