class OrdersController < ApplicationController
  def create
    @cliente = Cliente.find(params[:id])
    @order = @cliente.orders.create(order_params)
  end

  private
  def order_params
    params.require(:order).permit(:menuTitle, :street)
  end
end
