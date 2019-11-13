require 'test_helper'

class ClienteTest < ActiveSupport::TestCase

  test "should save client" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert cliente.save
  end

  test "should not save client without name" do
       cliente = Cliente.new nome:'', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
       assert_not cliente.save
  end

  test "should not save client with name too short" do
    cliente = Cliente.new nome:'Re', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client without id" do
    cliente = Cliente.new nome:'David', identificador:'', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client without 11 characters" do
    cliente = Cliente.new nome:'David', identificador:'147236910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client without phone" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client with phone not in range 9...11" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'321', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client with not number characters in phone" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'sdas', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client without cellphone" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client with cellphone not in range 9...11" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'321', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client with not number characters in cellphone" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'dasd', email:'david@gmail.com', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client without email" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client email with invalid format" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david', senha:'65423'
    assert_not cliente.save
  end

  test "should not save client without password" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:''
    assert_not cliente.save
  end

  test "should not save client with password too short" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'321'
    assert_not cliente.save
  end

  test "should destroy client" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'321'
    cliente.save
    assert cliente.destroy
  end
end
