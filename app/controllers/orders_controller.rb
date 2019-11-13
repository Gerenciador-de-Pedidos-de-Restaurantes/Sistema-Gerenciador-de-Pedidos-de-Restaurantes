class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @cliente = Cliente.find(params[:id])
    @rua = params[:street]
    @bairro = params[:block]
    @numero = params[:number]
    @complemento = params[:adicional_info]
    respond_to do |format|
      if @rua == ''
        format.html { redirect_to menusc_adress_path, notice: 'Rua não pode ser vazio' }
        format.json { render :new, status: :ok, location: @order }
      elsif @bairro == ''
        format.html { redirect_to menusc_adress_path, notice: 'Bairro não pode ser vazio' }
        format.json { render :new, status: :ok, location: @order }
      elsif @numero == ''
        format.html { redirect_to menusc_adress_path, notice: 'Numero não pode ser vazio' }
        format.json { render :new, status: :ok, location: @order }
      elsif @complemento == ''
        format.html { redirect_to menusc_adress_path, notice: 'Complemento não pode ser vazio' }
        format.json { render :new, status: :ok, location: @order }
      else
        @order = @cliente.orders.create(order_params)
      end
    end
  end

  private
  def order_params
    params.require(:order).permit(:menuTitle, :street, :block, :number, :adicional_info)
  end
end
