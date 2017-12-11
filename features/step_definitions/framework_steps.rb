When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should be connected to a rails server$/) do
  expect(has_current_path? root_path).to equal true
end
