Feature: Viewer visits the restaurants page
  In order to view the page
  As a user
  I want to see the yelp page
  
  Scenario: Viewing restaurants page
    Given I am on the yelp page
    Then I should see "Restaurants:"
    
  Scenario: Viewing restaurants page
    Given I am on the yelp page
    Then I should see "Restaurant Name"
    
  Scenario: Viewing restaurants page
    Given I am on the yelp page
    Then I should see "Rating"
    
  Scenario: Viewing restaurants page
    Given I am on the yelp page
    Then I should see "Price"
    
  Scenario: Viewing restaurants page
    Given I am on the yelp page
    Then I should see "Open?"
    
  Scenario: Viewing restaurants page
    Given I am on the yelp page
    Then I should see "Number of Deals"
    
  Scenario: Looking for Restaurants
    Given I am on the yelp page
    Then I have at least 1 restaurant listed