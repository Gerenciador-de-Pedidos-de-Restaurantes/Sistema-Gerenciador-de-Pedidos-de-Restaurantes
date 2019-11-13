require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "should save order" do
    cliente = Cliente.new nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
    cliente.save
    #order = Order.new menuTitle: 'Senor Froggy', street: 'Elm Street'
    assert cliente.orders.create(menuTitle: 'Senor Froggy', street: 'Elm Street')
  end
end
