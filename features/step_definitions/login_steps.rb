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
  click_button 'Add'
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
  expect(page).to have_content("Clientes")
end

Then("i see i logged in succesfully as a admin") do
  expect(page).to have_content('Senõr Froggy Catering System | Admin')
end

Then("i see an empty email field error message") do
  expect(page).to have_content('Preencha o campo de email ou cpf')
end

Then("i see an empty password field error message") do
  expect(page).to have_content('Preencha o campo de senh')
end

Then("i see an wrong password for this email error message") do
  expect(page).to have_content('Login Iválido')
end

Given("i am at client main page") do
  logarComoCliente()
  visit "/cliente/perfil"
  expect(page).to have_content("Edit Profile")
end

When("i click on logout button to logout person with id {string}") do |string|
  click_link("l-#{'logout-'+string}")
end

Then("i see i am at login page") do
  expect(page).to have_content('Login')
end

Given("i am at admin main page") do
  logarComoFuncionario()
  visit "/funcionario/perfil"
  expect(page).to have_content('Senõr Froggy Catering System | Admin')
end
