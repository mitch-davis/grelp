When(/^I go to the business page$/)do
    visit business_path
end

Then(/^I should see a table of places to eat$/)do
    @businesses = Business.attributes
    expect(@businesses.length).to be >= 1
end

