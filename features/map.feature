Feature: Map
    As a user
    I want immediate access to deals near me
    So that I can quickly visualize distance and price factors

    Scenario: Viewing application's home page
    When I visit the homepage
    Then I should see a map

    Scenario: Viewing the application's home page
    When I visit the map
    Then I should see a link to the list of businesses