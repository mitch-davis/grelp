Feature: Deals View
    As a user
    I need a page to view all nearby deals
    So that I can see all of the available coupons
    
    Scenario: Viewing a list of coupons
    When I go to the deals page
    Then I should see at least one deal near me
    
    Scenario: Deal Accuracy
    When I look at the deals
    Then they should be for restaurants within 5 miles
    
    Scenario: Restaurant Association
    When I look at a specific deal
    Then I should be able to tell which restaurant offers the deal
    
    Scenario: Expiration Date
    When I am looking at deals
    Then I should not see any deals that have expired
    
    Scenario: Deal Description
    When I am searching for the best deal
    Then I should be able to read what the deal offer is
    
