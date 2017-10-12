Feature: yelp_find_restaurants
    As a user 
    I need a system that is capable of finding restaurants near my location
    So I can have a wide selection of restaurants with avaiable coupons.
    
    Scenario: I need to access yelp API
    When I ask for restaurants in the area
    Then I should have access to the yelp API
    
    Scenario: I call to the yelp API
    When I need information from the yelp API
    Then I should not be over the maximum daily calls
    
    Scenario: Viewing list of restaurants
    When I shearch for restaurants
    Then I should see a list of all restaurants within ten miles of me
    
    Scenario: There are no restaurants near my location
    When I shearch for reasturants and none are within ten miles
    Then I should recive a map of my local area with only my location and an notifiation that there are no restaurants within ten miles of me
    
    Scenario: Viewing reviews of restaurants
    When I request reviews from yelp
    Then I should see reviews of all reasturants within ten miles of me
    
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
