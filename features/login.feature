Feature: Login
  As a Guest of the site
  I want to log in and log out
  So that I can use the tools available

  Scenario: Valid login
    Given I am at login page
    When I fill email field “user@gmail.com” and password field “mypassword”
    When I click on the login button
    Then I see I am logged in with email ‘user@gmail.com’

  Scenario: Empty email field
    Given i am at login page
    When i fill email field "" and password field "mypassword"
    When i click on the login button
    Then i see a empty email field error message

  Scenario: Empty password field
    Given i am at login page
    When i fill email field "user@gmail.com" and password field ""
    When i click on the login button
    Then i see a empty password field error message

  Scenario: Wrong password
    Given i am at login page
    When i fill email field "user@gmail.com" and password field "password"
    When i click on the login button
    Then i see a wrong password for this email error message

  Scenario: Log out succesful
    Given i am at main page
    When i click on logout button
    Then i see a logout succesfully message