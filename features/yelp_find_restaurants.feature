Feature: yelp_find_restaurants
    As a user 
    I need a system that is capable of finding restaurants near my location
    So I can have a wide selection of restaurants with avaiable coupons.
    
    Scenario: Viewing list of restaurants
    When I shearch for restaurants
    Then I should see all near by restaurants
    
    Scenario: Viewing reviews of restaurants
    When I request reviews from yelp
    Then I should see reviews of all near by restaurants
    
    Scenario: I need to quick and see to see rating of a restaurant
    When I want a rating of a restaurant
    Then I should receive a one to five star rating 
    
    Scenario: If list of Resturants comes back
    When list from yelp comes back
    Then I need to make sure they are restaurants
    
    Scenario: I want a to specifiy by price range, diet, etc.
    When I change the arrangement of the restaurants
    Then I should have a new list of restaurants corosponding to the new criteria
    
    Scenario: Looking at coupons
    When I request coupons from a restaurants
    Then I Should see a list of coupons from a restaurant
    
    Scenario: As a restaurant owner I need to be able to coupons for my restaurant
    When I have a new deal for my customers
    Then I need to be able to add coupons for my customers to see
    
    Scenario: I want to view coupons related to a selected restaurant
    When Im looking for specfic restaurants coupons
    Then I should see a list of coupons related to the restaurant
