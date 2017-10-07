Feature: Location Aware
    As a user
    I need to trust that my location will be found accurately every time
    So that I don't need use a search function which takes a longer time and requires more interaction and thought

    Scenario: Viewing application's home page
    When I go to the homepage
    Then I should be accurately display on the map

    Scenario: Viewing list of establishments
    When I go to the list of establishments
    Then I should recieve a list of establishments near me

    Scenario: Viewing list of deals
    When I go to the list of deals
    Then I should recieve a list of deals near me