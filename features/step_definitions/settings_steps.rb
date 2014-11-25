Given(/^the webpage is loaded$/) do
  expect(page).to have_content("Event Planner Pro")
end

Then(/^the settings page is loaded$/) do
  expect(page).to have_content("Change Avatar")
end

Then(/^the account is updated successfully$/) do
  expect(page).to have_content("Your account has been updated successfully.")
end
