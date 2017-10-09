Feature: Framework
    As a developer
    I need an existing framework
    So that I can practice BDD and focus on my verticals slice
    
    Scenario: Viewing application's home page
    When I go to the homepage
    Then I should be connected to a rails server
    
    Scenario: I need to access yelp API
    When I ask for restaurants in the area
    Then I should have access to the yelp API
    
    Scenario: I call to the yelp API
    When I need information from the yelp API
    Then I should not be over the maximum daily calls