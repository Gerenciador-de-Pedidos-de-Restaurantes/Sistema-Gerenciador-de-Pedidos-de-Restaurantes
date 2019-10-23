Feature: Acess
  As a User of the site
  I want to Register, update my information and delete Register
  So that i can use the tools available

  Scenario: Valid register
    Given I am at register page
    When I fill name field “Will”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And I click on the register button
    Then I see a successful register message

  Scenario: Empty name field
    Given I am at register page
    When I fill name field “”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And I click on the register button
    Then I see an invalid name error message

  Scenario: Empty last name field
    Given I am at register page
    When I fill name field “Will”, last name field “”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And I click on the register button
    Then I see an invalid last name error message

  Scenario: Wrong email format
    Given I am at register page
    When I fill name field “Will”, last name field “Smith”, email field “user.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And I click on the register button
    Then I see an invalid email error message

  Scenario: Password too short
    Given I am at register page
    When I fill name field “Will”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “my” and password confirmation field “my”
    And I click on the register button
    Then I see a too short password message

  Scenario: Passwords dont match
    Given I am at register page
    When I fill name field “Will”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “idontremember”
    And I click on the register button
    Then I see a passwords dont match message

  Scenario: Valid update
    Given i am at update my information page
    When I fill name field “Will”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword””
    And i click on the confirmation button
    Then i see a successful update message

  Scenario: Invalid name update
    Given i am at update my information page
    When I fill name field “”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And i click on the confirmation button
    Then i see a invalid name error message

  Scenario: Invalid last name update
    Given i am at update my information page
    When I fill name field “Will”, last name field “”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And i click on the confirmation button
    Then i see a invalid last name error message

  Scenario: Invalid email adress update
    Given i am at update my information page
    When I fill name field “Will”, last name field “Smith”, email field “user.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “mypassword”
    And i click on the confirmation button
    Then i see a invalid email error message

  Scenario: Invalid password update
    Given i am at update my information page
    When I fill name field “Will”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “my” and password confirmation field “my”
    And i click on the confirmation button
    Then i see a too short password error message

  Scenario: Passwords dont match update
    Given i am at update my information page
    When I fill name field “Will”, last name field “Smith”, email field “user@gmail.com”, phone field “000-000-0000”, password field “mypassword” and password confirmation field “idontremember”
    And i click on the confirmation button
    Then i see a passwords dont match error message

  Scenario: Delete register succesful
    Given i am at delete account page
    When i fill password field "mypassword" and password confirmation field "mypassword"
    And i click on delete button
    Then i see a account deleted succesfully message

  Scenario: Passwords dont match deletion
    Given i am at delete account page
    When i fill password field "mypassword" and password confirmation field "password"
    And i click on delete button
    Then i see passwords dont match error message

  Scenario: Wrong Password
    Given i am at delete account page
    When i fill password field "password" and password confirmation field "password"
    And i click on delete button
    Then i see wrong password error message