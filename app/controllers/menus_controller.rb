class MenusController < ApplicationController
  #lista todos os menus
  def index
    @menus = Menu.all
  end

  #abre o menu com id selecionado
  def show
    @menu = Menu.find(params[:id])
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

  private
  def menu_params
    params.require(:menu).permit(:title, :description)
  end

end
