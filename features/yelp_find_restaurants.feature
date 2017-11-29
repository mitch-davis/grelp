Feature: yelp_find_restaurants
    As a user 
    I need a system that is capable of finding restaurants near my location
    So I can have a wide selection of restaurants with avaiable coupons.
    
    Scenario: 
        When I go to the business page
        Then I should see a table of places to eat
        
    Scenario:
      When I need a list of restaurants
      Then I should see at least 1 buisness listing
    
