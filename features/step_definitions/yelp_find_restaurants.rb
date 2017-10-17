Given(/^There are restaurants to view$/)do
    expect(page).to have_content("Error")
end

When(/^I shearch for restaurants$/)do
    visit business_path
end

Then(/^I should see a list of all restaurants within ten miles of me$/)do
    expect(page).to have_content("Error")
end

