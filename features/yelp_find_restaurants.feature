Feature: yelp_find_restaurants
    As a user 
    I need a system that is capable of finding restaurants near my location
    So I can have a wide selection of restaurants with avaiable coupons.
    
    Scenario: Viewing list of restaurants
        Given There are restaurants to view
        When I shearch for restaurants
        Then I should see a list of all restaurants within ten miles of me
    
