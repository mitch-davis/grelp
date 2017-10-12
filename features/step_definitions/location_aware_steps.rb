When(/^I visit the homepage$/) do
    visit root_path
end

Then(/^I should have access to the location$/) do
    expect(page).to have_no_content("Position: False")
end