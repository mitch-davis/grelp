When(/^I shearch for restaurants$/)do
    visit business_path
end

Then(/^I should see a list of all restaurants within ten miles of me$/)do
    expect(page).to have_content("Buisness: True")
end

When(/^I shearch for reasturants and none are within ten miles$/)do
    visit business_path
end

Then(/^I should recive a map of my local area with only my location and an notifiation that there are no restaurants within ten miles of me$/)do
    expect(page).to have_no_contet("Buisness: False")
end

When(/^I need information from the yelp API$/)do
    visit business_path
end

Then(/^I should not be over the maximum daily calls$/)do
    expect(page).to have_content("Yelp: True")
end