require 'test_helper'

class AdressTest < ActiveSupport::TestCase
   test "should create adress" do
     @cliente = Cliente.new id: '300', nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
     @cliente.save
     @order = @cliente.orders.build(id: '800', menuTitle: 'Senor Froggy', street: 'Elm Street')
     @cliente.save
     @adress = Adress.new street: 'Elm Street', block: 'block', number: '358D', additional_info: 'additional_info', order_id: @order.id
     assert @adress.save
   end

   test "should not create adress without street" do
     @cliente = Cliente.new id: '300', nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
     @cliente.save
     @order = @cliente.orders.build(id: '800', menuTitle: 'Senor Froggy', street: 'Elm Street')
     @cliente.save
     @adress = Adress.new street: '', block: 'block', number: '358D', additional_info: 'additional_info', order_id: @order.id
     assert_not @adress.save
   end

   test "should not create adress without block" do
     @cliente = Cliente.new id: '300', nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
     @cliente.save
     @order = @cliente.orders.build(id: '800', menuTitle: 'Senor Froggy', street: 'Elm Street')
     @cliente.save
     @adress = Adress.new street: 'Elm Street', block: '', number: '358D', additional_info: 'additional_info', order_id: @order.id
     assert_not @adress.save
   end

   test "should not create adress without number" do
     @cliente = Cliente.new id: '300', nome:'David', identificador:'14725836910', telefone:'8735334268', celular:'3698521472', email:'david@gmail.com', senha:'65423'
     @cliente.save
     @order = @cliente.orders.build(id: '800', menuTitle: 'Senor Froggy', street: 'Elm Street')
     @cliente.save
     @adress = Adress.new street: 'Elm Street', block: 'bairro', number: '', additional_info: 'additional_info', order_id: @order.id
     assert_not @adress.save
   end
end
