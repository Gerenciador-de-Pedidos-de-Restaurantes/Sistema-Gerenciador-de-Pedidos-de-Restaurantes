respond_to? :js, :html

def entrarPagCadastAdmin()
  visit "/logins"
  fill_in 'email', :with => 'admin@gmail.com'
  fill_in 'senha', :with => 'admin'
  click_button 'Sign In'
  click_link 'Add Staff'
end

def logInNewAdmin(string)
  entrarPagCadastAdmin()
  string2 = '12345'
  preencherAdmin('david','33333333333','0000000000','9999999999',string,string2,'cozinheiro')
  click_button 'Create'
  click_link 'Return'
  click_link 'Log Out'
  fill_in 'email', :with => string
  fill_in 'senha', :with => string2
  click_button 'Sign In'
end

def preencher(string, string2, string3, string4, string5, string6)
  fill_in 'cliente[nome]', :with => string
  fill_in 'cliente[identificador]', :with => string2
  fill_in 'cliente[telefone]', :with => string3
  fill_in 'cliente[celular]', :with => string4
  fill_in 'cliente[email]', :with => string5
  fill_in 'cliente[senha]', :with => string6
end

def preencherAdmin(string, string2, string3, string4, string5, string6, string7)
  fill_in 'funcionario[nome]', :with => string
  fill_in 'funcionario[identificador]', :with => string2
  fill_in 'funcionario[telefone]', :with => string3
  fill_in 'funcionario[celular]', :with => string4
  fill_in 'funcionario[email]', :with => string5
  fill_in 'funcionario[senha]', :with => string6
  fill_in 'funcionario[cargo]', :with => string7
end

Given("i am at register page") do
  visit "/clientes"
  expect(page).to have_content('Sign Up')
end

When("i fill name field {string} id field {string} phone field {string} cellphone field {string} email field {string} password field {string}") do |string, string2, string3, string4, string5, string6|
  preencher(string,string2,string3,string4,string5,string6)
end

When("i click on the register button") do
  click_button 'Create'
end

Then("i see an client registered successfuly message") do
  expect(page).to have_content('Client Successfully Saved')
end

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

Given("i am at user of login {string} update page") do |string|
  visit "/clientes"
  expect(page).to have_content('Sign Up')
  preencher('david', '11111111111', '1234567890', '9876543210', string, '12345')
  click_button 'Create Cliente'
  visit "/logins"
  fill_in 'email', :with => string
  fill_in 'senha', :with => '12345'
  click_button 'Sign In'
  click_link 'Edit Profile'
end

When("i click on the update button") do
  click_button 'Update'
end

Then("i see an successful update message") do
  expect(page).to have_content('Client Successfully Updated')
end

Given("i am at client with login {string} account page") do |string|
  visit "/clientes"
  expect(page).to have_content('Sign Up')
  preencher('david', '11111111111', '1234567890', '9876543210', string, '12345')
  click_button 'Create Cliente'
  visit "/logins"
  fill_in 'email', :with => string
  fill_in 'senha', :with => '12345'
  click_button 'Sign In'
end

When("i click on delete button") do
  click_link 'Delete'
end

Then("i see a client deleted sucessfuly message") do
  expect(page).to have_content('Client Successfully Removed')
end

 #funcionarios --------------------------------------------------------------------------------------------------------

Given("i am at register admin page") do
  entrarPagCadastAdmin()
end

When("i fill name field {string} id field {string} phone field {string} cellphone field {string} email field {string} password field {string} role field {string}") do |string, string2, string3, string4, string5, string6, string7|
  preencherAdmin(string,string2,string3,string4,string5,string6,string7)
end

Given("i am at admin of login {string} update page") do |string|
  logInNewAdmin(string)
  click_link 'Edit Staff'
end

Given("i am at admin with login {string} account page") do |string|
  logInNewAdmin(string)
end

Then("i see a admin deleted sucessfuly message") do
  expect(page).to have_content('Employee Successfully Removed')
end

Then ("i see an empty role message") do
  expect(page).to have_content('Cargo nao pode ser em branco')
end

Then ("i see an role already taken message") do
  expect(page).to have_content('System Already Has A Manager')
end

Then ("i see an admin registered successfuly message") do
  expect(page).to have_content('Employee Successfully Created')
end

Then ("i see an admin updated successfuly message") do
  expect(page).to have_content('Employee Successfully Updated')
end