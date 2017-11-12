When(/^I visit the homepage$/) do
    visit home_path
end

Then(/^I should have access to the location$/) do
    expect(page).to have_no_content("Position: False")
end

When(/^Whenever I visit the homepage$/) do
    visit home_path
end

Then(/^The browser should find a cookie with my location$/) do
    expect(page).to have_no_content("Cookie: False")
end

When("I have already visited and secured my location") do
    cookies[:latitude] = 85
    cookies[:longitude] = 131
    visit home_path
end