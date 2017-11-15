When(/^I go to the business page$/)do
    visit businesses_path
end

Then(/^I should see a table of places to eat$/)do
    @businesses = Yelp.attributes
    expect(@businesses.length).to be >= 1
end

When(/^I need a list of restaurants$/) do
    visit businesses_path
end

Then(/^I should see at least 1 buisness listing$/) do
    @businesses = Yelp.near request.location
    @buisness.each do |item|
        expect(item.length).to be >= 1
    end
end