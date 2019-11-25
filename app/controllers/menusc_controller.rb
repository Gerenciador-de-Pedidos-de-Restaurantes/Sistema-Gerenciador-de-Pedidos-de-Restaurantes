class MenuscController < ApplicationController  #controller dos cardapios de cliente
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
    respond_to do |format|
      if @qdd_pessoas == ''
        format.html { redirect_to '/menusc/'+@@menu_atual.id.to_s, notice: '# of people cant be blank' }
        format.json { render :new, status: :ok, location: @qdd_pessoas }
      elsif Integer(@qdd_pessoas) > 50
        format.html { redirect_to menusc_adress_path, notice: 'You will get a discount'}
        format.json { render json: @qdd_pessoas.errors, status: :unprocessable_entity }
      else
        format.html { redirect_to menusc_adress_path }
      end

    end
  end

  def send_order
    #mandar um email com o pedido
    @info = params[:street]
    redirect_to menusc_index_path
  end
end
