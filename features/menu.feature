Feature:
  As a User of the site
  I want to add, remove and make changes to menu
  So that i can use the system properly

  Scenario: Valid Menu Creation
    Given i am at new menu page
    When i fill title field "New menu" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the create button
    Then i see an menu with title "New menu" was sucessfuly created

  Scenario: Invalid Menu Creation Empty Title
    Given i am at new menu page
    When i fill title field "" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the create button
    Then i see an empty title error message

  Scenario: Invalid Menu Creation Title Too Short
    Given i am at new menu page
    When i fill title field "sad" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the create button
    Then i see an title too short error message

  Scenario: Invalid Menu Creation Empty Description
    Given i am at new menu page
    When i fill title field "New menu" description field ""
    And i click on the create button
    Then i see an empty description error message

  Scenario: Invalid Menu Creation Description Too Short
    Given i am at new menu page
    When i fill title field "New Menu" description field "sad"
    And i click on the create button
    Then i see an description too short error message

  Scenario: Invalid Menu Creation Title Already Taken
    Given i am at new menu page
    And i create a menu with title "New Menu" description "this menu is awesome"
    And i am at new menu page
    When i fill title field "New Menu" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the create button
    Then i see an title already taken error message

  Scenario: Invalid Menu Creation Description Already Taken
    Given i am at new menu page
    And i create a menu with title "New Menu" description "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i am at new menu page
    When i fill title field "Full Course" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the create button
    Then i see an description already taken error message


    #edit scenarios ---------------------------------------------------------------------------------------------------

  Scenario: Valid Menu Update
    Given i am at menu with title "New menu" edit page
    When i fill title field "Update menu" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the edit button
    Then i see an menu with title "Update menu" was sucessfuly Edited

  Scenario: Invalid Menu Update Empty Title
    Given i am at menu with title "New menu" edit page
    When i fill title field "" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the edit button
    Then i see an empty title error message

  Scenario: Invalid Menu Update Title Too Short
    Given i am at menu with title "New menu" edit page
    When i fill title field "sad" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the edit button
    Then i see an title too short error message

  Scenario: Invalid Menu Update Empty Description
    Given i am at menu with title "New menu" edit page
    When i fill title field "Edit menu" description field ""
    And i click on the edit button
    Then i see an empty description error message

  Scenario: Invalid Menu Update Description Too Short
    Given i am at menu with title "New menu" edit page
    When i fill title field "Edit menu" description field "sad"
    And i click on the edit button
    Then i see an description too short error message

  Scenario: Invalid Menu Update Title Already Taken
    Given i am at new menu page
    And i create a menu with title "New Menu" description "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i am at new menu page
    And i create a menu with title "Edit menu" description "this menu comes with tacos and burritos"
    And i am at menu with title "New menu" edit page
    When i fill title field "Edit menu" description field "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i click on the edit button
    Then i see an title already taken error message

  Scenario: Invalid Menu Update Description Already Taken
    Given i am at new menu page
    And i create a menu with title "New Menu" description "this menu comes with tacos, burritos, and a special sauce which is the specialty of the house"
    And i am at new menu page
    And i create a menu with title "Edit menu" description "this menu comes with tacos and burritos"
    And i am at menu with title "New menu" edit page
    When i fill title field "New menu" description field "this menu comes with tacos and burritos"
    And i click on the edit button
    Then i see an description already taken error message


    #items -----------------------------------------------------------------------------------------------------------

  Scenario: Valid Item Addition To Menu
    Given i am at menu with title "New menu" page
    #When i fill item field with "Tacos"
    #And i click on the add button "Outro"
    #Then i see an item created sucessfuly message

  Scenario: Invalid Item Addition Can't Be Blank
    Given i am at menu with title "New menu" page
    #When i fill item field with "Tacos"
    #And i click on the add button ""
    #Then i see an empty item error message

  Scenario: Invalid Item Addition Item Already Taken
    Given i am at menu with title "New menu" page
    #And i create a item named "Tacos"
    #When i fill item field with "Tacos"
    #And i click on the add button
    #Then i see an item duplicated error message