class LineItemsController < ApplicationController
  def create
    @cart = current_cart
    parameter = ParameterDetail.find(params[:parameter_id])
    @line_item = @cart.add_parameter(parameter.id)

    respond_to do |format|
      if @line_item.save
        format.js
      end
    end
  end

  def destroy
    @cart = current_cart
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      if @line_item.destroy
        format.js
      end
    end
  end
end
