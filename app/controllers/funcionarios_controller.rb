class FuncionariosController < ApplicationController
  respond_to? :js, :html

  @@resultadoPositivoFuncionario= ""

  def self.getResultadoPositivoFuncionario
    @@resultadoPositivoFuncionario
  end
  def self.setResultadoPositivoFuncionario valor
    @@resultadoPositivoFuncionario = valor
  end

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
    id = nil
    if params[:id] == "perfil"
      id = Pessoa.get_pessoa_logada.id
    else
      id = params[:id]
    end
    @funcionario = Funcionario.find(id)
    funcionarioAux = Funcionario.new(funcionario_params)
    if funcionarioAux.cargo != nil && funcionarioAux.cargo.downcase == "gerente"
      @@resultadoPositivoFuncionario = "erro-O sistema já tem um gerente"
      render 'funcionarios/index'
    elsif @funcionario.update(funcionario_params)
      if params[:id] == "perfil"
        @@resultadoPositivoFuncionario = "Perfil Atualizado";
        Pessoa.setPessoaLogada(@funcionario)
        redirect_to funcionarios_perfil_path
      else
        @@resultadoPositivoFuncionario = "Funcionário Atualizado";
        redirect_to funcionarios_path
      end
    else
      if params[:id] == "perfil"
        render 'funcionarios/perfil'
      else
        render 'funcionarios/index'
      end
    end
  end

  def create
    @funcionario = Funcionario.new(funcionario_params)
    @funcionario.tipo = 1
    @funcionario.inativo = 0

    if @funcionario.cargo == "gerente"
      @@resultadoPositivoFuncionario = "erro-O sistema já tem um gerente"
      render 'funcionarios/index'
    elsif @funcionario.save
      @@resultadoPositivoFuncionario = "Funcionário salvo"
      redirect_to
    else
      render 'funcionarios/index'
    end

  end

  def destroy
    @funcionario = Funcionario.find(params[:id])
    @funcionario.update(tipo: 0)
    @@resultadoPositivoFuncionario = "Funcionário Deletado";
    redirect_to logins_index_path
  end

  private


  def funcionario_params
    params.require(:funcionario).permit(:nome, :identificador, :telefone, :celular, :email, :senha)
  end
end