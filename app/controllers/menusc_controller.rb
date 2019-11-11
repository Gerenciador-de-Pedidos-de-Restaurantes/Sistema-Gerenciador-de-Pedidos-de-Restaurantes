class MenuscController < ApplicationController
  protect_from_forgery with: :null_session
  #lista todos os menus
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
    @@menu_atual = @menu
  end

  #realiza o pedido
  def order
    @itens = params[:id_itens]
    @data_entrega = params[:bora]['order_date'] #seleciona 'order_date' do dicionario passado
    @qdd_pessoas = params[:num_people]
    redirect_to menusc_adress_path
  end

  def send_order
    #mandar um email com o pedido
    @info = params[:street]
    puts @info
    redirect_to menusc_index_path
  end
end
