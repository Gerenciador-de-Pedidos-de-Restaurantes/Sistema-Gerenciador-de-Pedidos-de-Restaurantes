Feature: acess
  As a User of the site
  I want to Register, update my information and delete Register
  So that i can use the tools available

  #Scenarios de clientes ------------------------------------------------------------------------------------------

  Scenario: Valid client register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an client registered successfuly message

  Scenario: Empty name field register as client
    Given i am at register page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty name error message

  Scenario: Name too short register as client
    Given i am at register page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an name too short error message

  Scenario: Empty id register as client
    Given i am at register page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty id error message

  Scenario: Wrong id length register as client
    Given i am at register page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid id length error message

  Scenario: Wrong id format register as client
    Given i am at register page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid id format error message

  Scenario: Empty phone register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty phone error message

  Scenario: Wrong phone length register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid cellphone format error message

  Scenario: Empty email register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword"
    And i click on the register button
    Then i see an empty email error message

  Scenario: Wrong email format register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid email format error message

  Scenario: Password too short register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my"
    And i click on the register button
    Then i see an too short password message

  Scenario: Empty password register as client
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field ""
    And i click on the register button
    Then i see an empty password message


  Scenario: Valid client update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an successful update message

  Scenario: Empty name field update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty name error message

  Scenario: Name too short update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an name too short error message

  Scenario: Empty id update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty id error message

  Scenario: Wrong id length update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid id length error message

  Scenario: Wrong id format update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid id format error message

  Scenario: Empty phone update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty phone error message

  Scenario: Wrong phone length update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid cellphone format error message

  Scenario: Empty email update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword"
    And i click on the update button
    Then i see an empty email error message

  Scenario: Wrong email format update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid email format error message

  Scenario: Password too short update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my"
    And i click on the update button
    Then i see an too short password message

  Scenario: Empty password update as client
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field ""
    And i click on the update button
    Then i see an empty password message

  Scenario: Delete client succesful
    Given i am at client with login "a@gmail.com" account page
    When i click on delete button
    Then i see a client deleted sucessfuly message

  #Scenarios de funcionarios ------------------------------------------------------------------------------------------
    #Registration -----------------------------------------------------------------------------------------------------

  Scenario: Valid admin register
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an admin registered successfuly message

  Scenario: Empty name field register as admin
    Given i am at register admin page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an empty name error message

  Scenario: Name too short register as admin
    Given i am at register admin page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an name too short error message

  Scenario: Empty id register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an empty id error message

  Scenario: Wrong id length register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid id length error message

  Scenario: Wrong id format register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid id format error message

  Scenario: Empty phone register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an empty phone error message

  Scenario: Wrong phone length register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid cellphone format error message

  Scenario: Empty email register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an empty email error message

  Scenario: Wrong email format register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword" role field "cozinheiro"
    And i click on the register button
    Then i see an invalid email format error message

  Scenario: Password too short register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my" role field "cozinheiro"
    And i click on the register button
    Then i see an too short password message

  Scenario: Empty password register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "" role field "cozinheiro"
    And i click on the register button
    Then i see an empty password message

  Scenario: Empty role register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field ""
    And i click on the register button
    Then i see an empty role message

  Scenario: role manager already taken register as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "gerente"
    And i click on the register button
    Then i see an role already taken message

    #update ----------------------------------------------------------------------------------------------------------

  Scenario: Valid admin update
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an admin updated successfuly message

  Scenario: Empty name field update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an empty name error message

  Scenario: Name too short update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an name too short error message

  Scenario: Empty id update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an empty id error message

  Scenario: Wrong id length update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid id length error message

  Scenario: Wrong id format update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid id format error message

  Scenario: Empty phone update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an empty phone error message

  Scenario: Wrong phone length update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid cellphone format error message

  Scenario: Empty email update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an empty email error message

  Scenario: Wrong email format update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword" role field "cozinheiro"
    And i click on the update button
    Then i see an invalid email format error message

  Scenario: Password too short update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my" role field "cozinheiro"
    And i click on the update button
    Then i see an too short password message

  Scenario: Empty password update as admin
    Given i am at admin of login "david@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "" role field "cozinheiro"
    And i click on the update button
    Then i see an empty password message

  Scenario: Empty role update as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field ""
    And i click on the register button
    Then i see an empty role message

  Scenario: role manager already taken update as admin
    Given i am at register admin page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword" role field "gerente"
    And i click on the register button
    Then i see an role already taken message

    #deletion --------------------------------------------------------------------------------------------------------

  Scenario: Delete admin succesful
    Given i am at admin with login "david@gmail.com" account page
    When i click on delete button
    Then i see a admin deleted sucessfuly message