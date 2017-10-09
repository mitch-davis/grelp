When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should be connected to a rails server$/) do
  expect(has_current_path? root_path).to equal true
end

When(/^I ask for restaurants in the area$/)do
end

Then(/^I should have access to the yelp API$/)do
end