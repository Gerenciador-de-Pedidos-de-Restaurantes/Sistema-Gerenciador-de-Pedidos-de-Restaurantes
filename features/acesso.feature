Feature: acess
  As a User of the site
  I want to Register, update my information and delete Register
  So that i can use the tools available

  Scenario: Valid register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an successful register message

  Scenario: Empty name field
    Given i am at register page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty name error message

  Scenario: Name too short
    Given i am at register page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an name too short error message

  Scenario: Empty id
    Given i am at register page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty id error message

  Scenario: Wrong id length
    Given i am at register page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid id length error message

  Scenario: Wrong id format
    Given i am at register page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid id format error message

  Scenario: Empty phone
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty phone error message

  Scenario: Wrong phone length
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid cellphone format error message

  Scenario: Empty email
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword"
    And i click on the register button
    Then i see an empty email error message

  Scenario: Wrong email format
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid email format error message

  Scenario: Password too short
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my"
    And i click on the register button
    Then i see an too short password message

  Scenario: Empty password
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field ""
    And i click on the register button
    Then i see an empty password message

  #próxima iteração --------------------------------------------------------

  #Scenario: Delete admin succesful
    #Given i am at admin account page
    #When i click on delete button
    #Then i see an account deleted succesfully message

  #Scenario: Delete client succesful
    #Given i am at client account page
    #When i click on delete button
    #Then i see i am at login page