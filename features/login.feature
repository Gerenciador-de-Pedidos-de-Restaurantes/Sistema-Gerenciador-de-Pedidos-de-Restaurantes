Feature: Login
  As a Guest of the site
  I want to log in and log out
  So that I can use the tools available

  Scenario: Valid login
    Given I am at login page
    When I fill email field “user@gmail.com” and password field “mypassword”
    When I click on the login button
    Then I see I am logged in with email ‘user@gmail.com’


