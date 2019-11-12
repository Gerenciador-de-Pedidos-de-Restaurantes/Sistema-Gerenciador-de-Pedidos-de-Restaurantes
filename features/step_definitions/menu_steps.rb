def acessNewMenuPage()
  visit "/logins"
  fill_in "email", :with => "admin@gmail.com"
  fill_in "senha", :with => "admin"
  visit "menus/new"
end

def fillMenu(string, string2)
  fill_in "menu[title]", :with => string
  fill_in "menu[description]", :with => string2
end

Given("i am at new menu page") do
  acessNewMenuPage()
end

When("i fill title field {string} description field {string}") do |string, string2|
  fillMenu(string, string2)
end

When("i click on the create button") do
  click_button 'Create'
end

Then("i see an menu with title {string} was sucessfuly created") do |string|
  expect(page).to have_content(string)
end

Then ("i see an empty title error message") do
  expect(page).to have_content("Title can't be blank")
end

Then ("i see an title too short error message") do
  expect(page).to have_content("Title is too short (minimum is 5 characters)")
end

Then ("i see an empty description error message") do
  expect(page).to have_content("Description can't be blank")
end

Then ("i see an description too short error message") do
  expect(page).to have_content("Description is too short (minimum is 5 characters)")
end


Given("i create a menu with title {string} description {string}") do |string, string2|
  acessNewMenuPage()
  fillMenu(string, string2)
  click_button 'Create'
end

Then("i see an title already taken error message") do
  expect(page).to have_content("Title has already been taken")
end

Then("i see an description already taken error message") do
  expect(page).to have_content("Description has already been taken")
end

Given("i am at menu with title {string} edit page") do |string|
  acessNewMenuPage()
  fillMenu(string, 'teste update')
  click_button 'Create'
  click_link 'Back'
  @menus = Menu.all
  menuaux = ''
  @menus.each do |i|
    if (i.title == string)
      menuaux = i
    end
  end
  visit edit_menu_path(menuaux)
end

When("i click on the edit button") do
  click_button 'Update'
end

Then("i see an menu with title {string} was sucessfuly Edited") do |string|
  expect(page).to have_content(string)
end

Given("i am at menu with title {string} page") do |string|
  acessNewMenuPage()
  fillMenu(string, 'teste update')
  click_button 'Create'
  click_link 'Back'
  click_link string
end

#When("i fill item field with {string}") do |string|
  #fill_in 'new_item', :with => string
#end

#When("i click on the add button") do
  #click_button "Add"
#end

#When ("i click on the add button {string}" ) do |string|
  #click_button "Add"
  #fill_in 'new_item', :with => string
  #click_button "Add"
#end

#Then("i see an item created sucessfuly message") do
  #expect(page).to have_content('Item Created with Sucess')
#end

#Then("i see an empty item error message") do
  #expect(page).to have_content("Item Can't Be Blank")
#end

#Given("i create a item named {string}") do |string|
  #fill_in "new_item", :with => string
  #click_button "Add"
#end

#Then("i see an item duplicated error message") do
  #expect(page).to have_content('Item Already Exists')
#end
