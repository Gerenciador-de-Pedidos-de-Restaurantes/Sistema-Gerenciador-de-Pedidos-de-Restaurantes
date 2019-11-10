def logarComoFuncionario
  Pessoa.set_pessoa_logada(nome:'david', identificador:'00000000000', telefone:'5555555555', celular:'4444444444',
                           email:'david@gmail.com', senha:'123456',
                           tipo:1, inativo: 0)
end

def logarComoCliente
  Pessoa.set_pessoa_logada(nome:'david', identificador:'00000000000', telefone:'5555555555', celular:'4444444444',
                           email:'david@gmail.com', senha:'123456',
                           tipo:0, inativo: 0)
end


def preencher(string, string2, string3, string4, string5, string6)
  fill_in 'cliente[nome]', :with => string
  fill_in 'cliente[identificador]', :with => string2
  fill_in 'cliente[telefone]', :with => string3
  fill_in 'cliente[celular]', :with => string4
  fill_in 'cliente[email]', :with => string5
  fill_in 'cliente[senha]', :with => string6
end

Given("i am at login page") do
  visit "/clientes"
  expect(page).to have_content('Sign Up')
  preencher("david", "22222222222", "5555555555", "4444444444", "david@gmail.com", "mypassword")
  click_button 'Create Cliente'
  visit "/logins"
end

When("i fill email field {string} and password field {string} as client") do |string, string2|
  fill_in 'email', :with => string
  fill_in 'senha', :with => string2
end

When("i fill email field {string} and password field {string}") do |string, string2|
  fill_in 'email', :with => string
  fill_in 'senha', :with => string2
end

When("i click on the login button") do
  click_button 'Sign In'
end

Then("i see i logged in succesfully as a client") do
  expect(page).to have_content("Menu Client")
end

Then("i see i logged in succesfully as a admin") do
  expect(page).to have_content('Senõr Froggy Catering System | Admin')
end

Then("i see an empty email field error message") do
  expect(page).to have_content('Preencha o campo de email ou cpf')
end

Then("i see an empty password field error message") do
  expect(page).to have_content('Preencha o campo de senha')
end

Then("i see an wrong password for this email error message") do
  expect(page).to have_content('Login Iválido')
end

Given("i am at client with login {string} main page") do |string|
  visit "/clientes"
  expect(page).to have_content('Sign Up')
  preencher('david', '11111111111', '1234567890', '9876543210', string, '12345')
  click_button 'Create Cliente'
  visit "/logins"
  fill_in 'email', :with => string
  fill_in 'senha', :with => '12345'
  click_button 'Sign In'
end

Given ("i am at admin with login {string} and password {string} main page") do |string1, string2|
  visit "/clientes"
  expect(page).to have_content('Sign Up')
  visit "/logins"
  fill_in 'email', :with => string1
  fill_in 'senha', :with => string2
  click_button 'Sign In'
end

When("i click on logout button") do
  click_link "Log Out"
end

Then("i see i am at login page") do
  expect(page).to have_content('Login')
end