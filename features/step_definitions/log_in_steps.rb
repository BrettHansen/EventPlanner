Then(/^the featured events page is loaded$/) do
  expect(page).to have_content("Signed in successfully")
end