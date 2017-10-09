Feature: yelp_find_restaurants
    As a user 
    I need a system that is capable of finding restaurants near my location
    
    Scenario: Viewing list of restaurants
    When I shearch for restaurants
    Then I should see all near by restaurants
    
    Scenario: Viewing reviews of restaurants
    When I request reviews from yelp
    Then I should see reviews of all near by restaurants
    
    Scenario: If list of Resturants comes back
    When list from yelp comes back
    Then I need to make sure they are restaurants
    
    Scenario: Looking at coupons
    When I request coupons from a restaurants
    Then I Should see a list of coupons from a restaurant