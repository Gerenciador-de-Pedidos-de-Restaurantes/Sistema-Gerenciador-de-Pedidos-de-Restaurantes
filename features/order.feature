Feature:
  As a Client of the site
  I want to make a order
  So that i can get nice meal

  Scenario: Invalid Order Empty Client Quantity
    Given i am at client menu with title "senor froggy" page
    When i click submit button
    Then i see a empty quantity error message

  Scenario: Descounted Order Quantity
    Given i am at client menu with title "senor froggy" page
    And i fill people quantity with "51"
    When i click submit button
    Then i see a descount message

  Scenario: Valid Order
    Given i am at adress page
    And i fill street field with "elm street" block field with "boa vista" number field with "71" additional field with "blablablablabla"
    When i click submit adress button
    Then i see i am at menusc page