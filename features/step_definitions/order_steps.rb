def preencher(string, string2, string3, string4, string5, string6)
  fill_in 'cliente[nome]', :with => string
  fill_in 'cliente[identificador]', :with => string2
  fill_in 'cliente[telefone]', :with => string3
  fill_in 'cliente[celular]', :with => string4
  fill_in 'cliente[email]', :with => string5
  fill_in 'cliente[senha]', :with => string6
end

def acessNewMenuPage()
  visit "/logins"
  fill_in "email", :with => "admin@gmail.com"
  fill_in "senha", :with => "admin"
  visit "menus/new"
end

def createNewMenu()
  fill_in "menu[title]", :with => 'senor froggy'
  fill_in "menu[description]", :with => 'anything'
  click_button 'Create'
end

def logInClient()
  visit "/clientes"
  preencher('david', '11111111111', '1234567891', '9876543210', 'a@gmail.com', '12345')
  visit "/logins"
  fill_in 'email', :with => 'a@gmail.com'
  fill_in 'senha', :with => '12345'
end

Given("i am at client menu with title {string} page") do |string|
  acessNewMenuPage()
  createNewMenu()
  logInClient()
  visit "/menusc"
  click_link string

end

When("i click submit button") do
  click_button "Order"
end

Then("i see a empty quantity error message") do
  expect(page).to have_content("quantidade de pessoas não pode ser vazio")
end

Given("i fill people quantity with {string}") do |string|
  fill_in 'num_people', :with => string
end

Then("i see a descount message") do
  expect(page).to have_content("você receberá um desconto")
end

Given("i am at adress page") do
  acessNewMenuPage()
  createNewMenu()
  logInClient()
  visit "/menusc"
  click_link 'senor froggy'
  fill_in 'num_people', :with => '49'
  click_button "Order"
end

Given("i fill street field with {string} block field with {string} number field with {string} additional field with {string}") do |string, string2, string3, string4|
  fill_in 'street', :with => string
  fill_in 'block', :with => string2
  fill_in 'number', :with => string3
  fill_in 'adicional_info', :with => string4
end

When ("i click submit adress button") do
  click_button 'send'
end

Then("i see i am at menusc page") do
  expect(page).to have_content("senor froggy")
end
