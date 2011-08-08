Feature: Artisan
  In order to access the Artisan API
  As a gem user
  I want to have an Artisan module

  Scenario: Get Project
    Given an API key "8fcc40cad447"
    When I retrieve the project
    Then the project should have "4" stories

  Scenario: Put estimates
    Given an API key "8fcc40cad447"
    And estimates "1" "2" "3"
    When I push the new estimates
    Then I should receive confirmation
