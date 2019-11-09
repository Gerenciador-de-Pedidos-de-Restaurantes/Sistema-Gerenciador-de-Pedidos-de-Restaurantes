Feature: acess
  As a User of the site
  I want to Register, update my information and delete Register
  So that i can use the tools available

  Scenario: Valid register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an successful register message

  Scenario: Empty name field register
    Given i am at register page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty name error message

  Scenario: Name too short register
    Given i am at register page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an name too short error message

  Scenario: Empty id register
    Given i am at register page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty id error message

  Scenario: Wrong id length register
    Given i am at register page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid id length error message

  Scenario: Wrong id format register
    Given i am at register page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid id format error message

  Scenario: Empty phone register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty phone error message

  Scenario: Wrong phone length register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid cellphone format error message

  Scenario: Empty email register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword"
    And i click on the register button
    Then i see an empty email error message

  Scenario: Wrong email format register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword"
    And i click on the register button
    Then i see an invalid email format error message

  Scenario: Password too short register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my"
    And i click on the register button
    Then i see an too short password message

  Scenario: Empty password register
    Given i am at register page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field ""
    And i click on the register button
    Then i see an empty password message


  Scenario: Valid update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an successful update message

  Scenario: Empty name field update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty name error message

  Scenario: Name too short update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Wi" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an name too short error message

  Scenario: Empty id update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty id error message

  Scenario: Wrong id length update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid id length error message

  Scenario: Wrong id format update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "000dfo00000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid id format error message

  Scenario: Empty phone update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty phone error message

  Scenario: Wrong phone length update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid phone length error message

  Scenario: Wrong phone format update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "999a99d999" cellphone field "8888888888" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid phone format error message

  Scenario: Empty cellphone update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an empty cellphone error message

  Scenario: Wrong cellphone length update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid cellphone length error message

  Scenario: Wrong cellphone format update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "8888888888" cellphone field "999a99d999" email field "user@gmail.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid cellphone format error message

  Scenario: Empty email update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "" password field "mypassword"
    And i click on the update button
    Then i see an empty email error message

  Scenario: Wrong email format update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user.com" password field "mypassword"
    And i click on the update button
    Then i see an invalid email format error message

  Scenario: Password too short update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field "my"
    And i click on the update button
    Then i see an too short password message

  Scenario: Empty password update
    Given i am at user of login "ag@gmail.com" update page
    When i fill name field "Will" id field "00000000000" phone field "9999999999" cellphone field "8888888888" email field "user@gmail.com" password field ""
    And i click on the update button
    Then i see an empty password message

  Scenario: Delete user succesful
    Given i am at user with login "a@gmail.com" account page
    When i click on delete button
    Then i see a user deleted sucessfuly message
