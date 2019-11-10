class FuncionariosController < ApplicationController
  respond_to? :js, :html

  def index
    @funcionario = Funcionario.new

  end

  def new
    @funcionario = Funcionario.new
  end

  def edit
    @funcionario = Funcionario.find(params[:id])
    @funcionarios = Funcionario.listaFuncionarios
    render 'funcionarios/edit'
  end

  def update
    @funcionario = Funcionario.find(params[:id])
    funcionarioAux = Funcionario.new(funcionario_params)
    respond_to do |format|
      if funcionarioAux.cargo.downcase == "gerente"
        format.html { redirect_to edit_funcionario_path, notice: '-Sistema Já Possui Um Gerente' }
        format.json { render :edit, status: :ok, location: @funcionario }
      elsif @funcionario.update(funcionario_params)
        format.html { redirect_to edit_funcionario_path, notice: 'Funcionario Atualizado Com Sucesso' }
        format.json { render :edit, status: :ok, location: @funcionario }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @funcionario = Funcionario.new(funcionario_params)
    @funcionario.tipo = 1
    @funcionario.inativo = 0

    respond_to do |format|
      if @funcionario.cargo.downcase == "gerente"
        format.html { redirect_to funcionarios_path, notice: '-Sistema Já Possui Um Gerente' }
        format.json { render :index, status: :ok, location: @funcionario }
      elsif @funcionario.save
        format.html { redirect_to funcionarios_path, notice: 'Funcionario Criado Com Sucesso' }
        format.json { render :index, status: :ok, location: @funcionario }
      else
        format.html { render :index }
      end
    end

  end

  def destroy
    @funcionario = Funcionario.find(params[:id])
    #@funcionario.inativo = 1
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to logins_url, notice: 'Funcionario Deletado Com Sucesso' }
      format.json { head :no_content }
    end
  end

  private

  def funcionario_params
    params.require(:funcionario).permit(:nome, :identificador, :telefone, :celular, :email, :senha, :cargo)
  end
end