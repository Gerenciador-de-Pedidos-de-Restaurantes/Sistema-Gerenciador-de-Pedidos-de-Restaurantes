require 'test_helper'

class FuncionarioTest < ActiveSupport::TestCase

  test "should save employee" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert funcionario.save
  end

  test "should not save employee without name" do
    funcionario = Funcionario.new nome:'', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee with name too short" do
    funcionario = Funcionario.new nome:'Re', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee without id" do
    cliente = Funcionario.new nome:'David', identificador:'', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not cliente.save
  end

  test "should not save employee without 11 characters" do
    funcionario = Funcionario.new nome:'David', identificador:'147236910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee without phone" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee with phone not in range 9...11" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'321', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee with not number characters in phone" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'sdas', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee without cellphone" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee with cellphone not in range 9...11" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'321', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee with not number characters in cellphone" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'dasd', email:'david@gmail.com', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee without email" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee email with invalid format" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david', senha:'65423', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee without password" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee with password too short" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'321', cargo: 'cozinheiro'
    assert_not funcionario.save
  end

  test "should not save employee without role" do
    funcionario = Funcionario.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423', cargo: ''
    assert_not funcionario.save
  end
end
