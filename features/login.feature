  Feature: Login
    As a guest of the site
    I want to log in and log out
    So that i can use the tools available

    Scenario: Valid client login
      Given i am at login page
      When i fill email field "david@gmail.com" and password field "mypassword" as client
      When i click on the login button
      Then i see i logged in succesfully as a client

    Scenario: Valid admin login
      Given i am at login page
      When i fill email field "admin@gmail.com" and password field "admin"
      When i click on the login button
      Then i see i logged in succesfully as a admin

    Scenario: Empty email field
      Given i am at login page
      When i fill email field "" and password field "mypassword"
      When i click on the login button
      Then i see an empty email field error message

    Scenario: Empty password field
      Given i am at login page
      When i fill email field "user@gmail.com" and password field ""
      When i click on the login button
      Then i see an empty password field error message

    Scenario: Wrong password
      Given i am at login page
      When i fill email field "user@gmail.com" and password field "password"
      When i click on the login button
      Then i see an wrong password for this email error message

    Scenario: Valid user log out
      Given i am at client with login "a@gmail.com" main page
      When i click on logout button
      Then i see i am at login page

    Scenario: Valid admin log out
      Given i am at admin with login "admin@gmail.com" and password "admin" main page
      When i click on logout button
      Then i see i am at login page