Feature: Location Aware
    As a user
    I need to trust that my location will be found accurately every time
    So that I don't need use a search function which takes a longer time and requires more interaction and thought

    Scenario: Viewing application's home page
    When I visit the homepage
    Then I should have access to the location

    Scenario: Viewing list of establishments
    When I go to the list of establishments
    Then I should recieve a list of establishments within ten miles of me

    Scenario: Viewing list of deals
    When I go to the list of deals
    Then I should recieve a list of deals within ten miles of me