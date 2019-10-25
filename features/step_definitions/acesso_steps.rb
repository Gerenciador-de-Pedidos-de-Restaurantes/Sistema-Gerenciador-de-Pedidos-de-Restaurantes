def logarComoCliente()
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



Given("i am at register page") do
  visit "/clientes"
  expect(page).to have_content('Sign Up')
end

When("i fill name field {string} id field {string} phone field {string} cellphone field {string} email field {string} password field {string}") do |string, string2, string3, string4, string5, string6|
  preencher(string,string2,string3,string4,string5,string6)
end

When("i click on the register button") do
  click_button 'Add'
end

#Then("i see an successful register message") do
  #pending
#end

Then("i see an empty name error message") do
  expect(page).to have_content('Nome nao pode ser em branco')
end

Then("i see an name too short error message") do
  expect(page).to have_content('Nome deve ter pelo menos 3 caracteres')
end

Then("i see an empty id error message") do
  expect(page).to have_content('Identificador nao pode ser em branco')
end

Then("i see an invalid id length error message") do
  expect(page).to have_content('Identificador deve ter 11 caracteres')
end

Then("i see an invalid id format error message") do
  expect(page).to have_content('Identificador deve ser um numero')
end

Then("i see an empty phone error message") do
  expect(page).to have_content('Telefone nao pode ser em branco')
end

Then("i see an invalid phone length error message") do
  expect(page).to have_content('Telefone numero com tamanho incorreto')
end

Then("i see an invalid phone format error message") do
  expect(page).to have_content('Telefone deve ser um numero')
end

Then("i see an empty cellphone error message") do
  expect(page).to have_content('Celular nao pode ser em branco')
end

Then("i see an invalid cellphone length error message") do
  expect(page).to have_content('Celular numero com tamanho incorreto')
end

Then("i see an invalid cellphone format error message") do
  expect(page).to have_content('Celular deve ser um numero')
end

Then("i see an empty email error message") do
  expect(page).to have_content('Email nao pode ser em branco')
end

Then("i see an invalid email format error message") do
  expect(page).to have_content('Email so permite emails validos')
end

Then("i see an too short password message") do
  expect(page).to have_content('Senha deve ter pelo menos 5 caracteres')
end

Then("i see an empty password message") do
  expect(page).to have_content('Senha nao pode ser em branco')
end

#próxima iteração --------------------------------------------------------

#Given("i am at admin account page") do
  #pending # Write code here that turns the phrase above into concrete actions
#end

#When("i click on delete button") do
  #click_link "d-#{'delete-' +Pessoa.get_pessoa_logada.id}"
#end

#Then("i see i am at login page") do
  #expect(page).to have_content('Login')
#end

#Given ("i am at client account page")do
  #logarComoCliente()
  #visit "/clientes/perfil"
  #expect(page).to have_content('Edit Profile')
#end