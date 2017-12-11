
Given("I am on the yelp page") do
  visit businesses_path
end

Then("I should see {string}") do |text|
  expect(page).to have_content(text)
end

Then("I have at least {int} restaurant listed") do |int|
  @businesses = Yelp.near @location
  expect(@businesses["businesses"].length).to be >= 1
end