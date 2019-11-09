class ClientesController < ApplicationController
  respond_to? :js, :html

  def index
    @cliente = Cliente.new
  end

  def new
    @cliente = Cliente.new
  end

  def edit
    @cliente = Cliente.find(params[:id])
    @clientes = Cliente.listaClientes
    render 'clientes/edit'
  end

  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to edit_cliente_path, notice: 'Cliente Atualizado com Sucesso' }
        format.json { render :edit, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        #format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end

  end

  def create
    @cliente = Cliente.new(cliente_params)
    # tipo = 0 é cliente e. tipo = 1 é funcionario
    @cliente.tipo = 0
    @cliente.inativo = 0

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to clientes_path, notice: 'Cliente Salvo com Sucesso' }
        format.json { render :index, status: :created, location: @cliente }
      else
        format.html { render :index }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    #@cliente.update(inativo: 1)
    @clientes = Pessoa.all
    @clientes.delete(@cliente)
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to logins_url, notice: 'Cliente Removido com Sucesso' }
      format.json { head :no_content }
    end
  end

  private

  def cliente_params
    params.require(:cliente).permit(:nome, :identificador, :telefone, :celular, :email, :senha)
  end

end