When(/^I visit the map/) do
    visit home_path
end

Then(/^I should see a link to the list of businesses$/) do
    expect(page).to have_content("Restaurants Near Me")
end