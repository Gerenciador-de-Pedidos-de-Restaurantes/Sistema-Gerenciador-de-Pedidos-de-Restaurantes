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

  def add_item
    @item = params[:new_item]
    duplicate = false
    if @@menu_atual.item.length != 0
      @@menu_atual.item.each do |i|
        if (i == @item)
          duplicate = true
        end
      end
    end
    respond_to do |format|
      if (duplicate == true)
        format.html { return redirect_to menu_path(@@menu_atual.id.to_s), notice: 'Item Already Exists' }
        format.json { render :show, status: :ok, location: @menu }
      elsif @item != ''
        @@menu_atual.item << @item
        @@menu_atual.save
        format.html { return redirect_to menu_path(@@menu_atual.id.to_s), notice: 'Item Created with Sucess'}
      else
        format.html { return redirect_to menu_path(@@menu_atual.id.to_s), notice: "Item Can't Be Blank" }
        format.json { render :show, status: :ok, location: @menu }
      end
    end
  end

  def delete_item
    itens_atuais = params[:id_itens]
      unless itens_atuais.nil?
        itens_atuais.each do |i|
          (@@menu_atual.item).delete(i)
        end
      end
      respond_to do |format|
        if (@@menu_atual.save)
          format.html { return redirect_to menu_path(@@menu_atual.id), notice: 'Item Removed with Sucess' }
          format.json { render :show, status: :ok, location: @menu }
        end
      end
  end

  private
  def menu_params
    params.require(:menu).permit(:title, :description)
  end
end
