Feature: Starting the game
  In order to play battleships
  As a nostalgic
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When i follow "New Game"
    Then I should see "What's your name?"

  Scenario: Registering
    Given I am on the name page
    When I do not input a name
    And I click submit
    Then I should see "Who are you?"

  Scenario: Registering
    Given I am on the name page
    When I input "Bob"
    And I click submit
    Then I should see "Welcome, Bob"

  Scenario: Starting the game
    Given I am on the name page
    When I input "Bob"
    And I click submit
    And I click play
    Then I am on the game page

  Scenario: Starting the game
    Given I am on the game page
    Then I should see the game board
