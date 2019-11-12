class Pessoa < ApplicationRecord
  has_many :orders
  validates :nome, presence: {message: ' nao pode ser em branco' },
                   length: { minimum: 3, too_short: 'deve ter pelo menos 3 caracteres' }
  validates :identificador, presence: {message: ' nao pode ser em branco' },
                 length: { is: 11 , message: 'deve ter 11 caracteres'},
                 numericality: {message: 'deve ser um numero'},
                 uniqueness: {message: 'ja utilizado'}
  validates :telefone, presence: {message: ' nao pode ser em branco' },
                       length: { in: 9..11 , message: ' numero com tamanho incorreto'},
                       numericality: {message: 'deve ser um numero'}
  validates :celular, presence: {message: ' nao pode ser em branco' },
                      length: { in: 9..11 , message: ' numero com tamanho incorreto'},
                      numericality: {message: 'deve ser um numero'}
  validates :email, presence: {message: ' nao pode ser em branco' },
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'so permite emails validos' },
                    uniqueness: {message: 'ja utilizado'}
  validates :senha, presence: {message: ' nao pode ser em branco' },
                    length: {minimum: 5,too_short: 'deve ter pelo menos 5 caracteres' }

  #self.verificarExisteCpfAtivo
  def self.verificar_id_ativo pessoa
    pessoas = Cliente.listaClientes
    pessoas.each do |pessoaAux|
      if pessoaAux.identificador == pessoa.identificador && pessoaAux.id != pessoa.id
        return pessoa
      end
    end
    nil
  end

#self.verificarExisteEmailAtivo
  def self.verificar_email_ativo pessoa
    pessoas = Cliente.listaClientes
    pessoas.each do |pessoaAux|
      if pessoaAux.email == pessoa.email && pessoaAux.id != pessoa.id
        return pessoa
      end
    end
    return nil
  end

  @@pessoa_logada = nil

  def self.get_pessoa_logada
    @@pessoa_logada
  end

  def self.set_pessoa_logada pessoa
    @@pessoa_logada = pessoa
  end

  def self.login email, senha
    pessoas = Pessoa.all
    resultado = nil
    pessoas.each do |pessoa|
      if pessoa.inativo == 0 && (pessoa.identificador == email || pessoa.email == email) && (pessoa.senha == senha)
        resultado = pessoa
        break
      end
    end
    resultado
  end

  def self.verificar_cadastro_gerente
    resultado = false
    funcionarios = Funcionario.listaFuncionariosAtivo
    funcionarios.each do |funcionario|
      if funcionario.cargo == "gerente"
        resultado = true
        break
      end
    end
  
    if resultado == false
      funcionario = Pessoa.new nome:"admin", identificador:"99999999999", telefone:"00000000000", celular:"00000000000",
                               email:"admin@gmail.com", senha:"admin", cargo:"gerente",
                               tipo:1, inativo: 0
      funcionario.save
    end
  end
end