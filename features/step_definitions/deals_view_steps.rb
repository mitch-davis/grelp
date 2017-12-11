When("I go to the deals page") do
  visit deals_path
end

Then("I should see at least one deal near me") do
  @deals = Deal.near_by_deals
  expect(@deals.length).to be >= 1
end

When("I look at the deals") do
  visit deals_path
end

Then("they should be for restaurants within {int} miles") do |int|
  pending  #we need a way to compare user lat/long against deal lat/long
end

When("I look at a specific deal") do
  visit deals_path
  @deals = Deal.near_by_deals
  @a_deal = @deals[0];
end

Then("I should be able to tell which restaurant offers the deal") do
  expect(@a_deal[:Restaurant]).is_a? String
end

When("I am looking at deals") do
  visit deals_path
end

Then("I should not see any deals that have expired") do
  @deals = Deal.near_by_deals
  myTime = Time.new
  @deals.each do |deal|
     expect(deal[:Exp_Date]).to be < myTime.inspect
  end
end

When("I am searching for the best deal") do
  visit deals_path
  @deals = Deal.near_by_deals
end

Then("I should be able to read what the deal offer is") do
  @deals.each do |deal|
      expect(deal[:Description]).is_a? String
  end
end