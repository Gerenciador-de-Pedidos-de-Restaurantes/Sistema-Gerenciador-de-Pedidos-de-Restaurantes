class MenusController < ApplicationController
  protect_from_forgery with: :null_session
  #lista todos os menus
  def index
    @menus = Menu.all
  end

  #abre o menu com id selecionado
  def show
    @menu = Menu.find(params[:id])
    @@menu_atual = @menu
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def new
    #essa variavel vai ser usava na view de new
    @menu = Menu.new
  end

  #cria um novo menu
  def create
    #variavel @menu recebe uma nova instancia de menu
    @menu = Menu.new(menu_params)

    #se salvar ele vai pra pagina do menu salvo, caso contrario volta pra o formulario
    if @menu.save
      redirect_to @menu
    else
      render 'new'
    end
  end

  def update
    @menu = Menu.find(params[:id])

    if @menu.update(menu_params)
      redirect_to @menu
    else
      render 'edit'
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    redirect_to menus_path
  end

  #realiza o pedido
  def order
    params[:id_itens]
    redirect_to menus_path
  end

  def add_item
    @item = params[:new_item]
    if @item != ''
      @@menu_atual.item << @item
      @@menu_atual.item.uniq
      @@menu_atual.save
    end
    redirect_to request.referrer
  end

  def delete_item
    itens_atuais = params[:id_itens]
    if itens_atuais != nil
      itens_atuais.each do |i|
        (@@menu_atual.item).delete(i)
      end
      @@menu_atual.save
    end
    redirect_to request.referrer
  end

  private
  def menu_params
    params.require(:menu).permit(:title, :description)
  end

end
