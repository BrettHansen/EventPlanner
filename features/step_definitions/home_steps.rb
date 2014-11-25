Given(/^I load the home page$/) do
  visit "http://localhost:3000"
end

Given(/^I load the login page$/) do
  visit "http://localhost:3000/users/sign_in"
end

Given(/^I load the register page$/) do
  visit "http://localhost:3000/users/sign_up"
end

Then(/^the home page is loaded$/) do
  expect(page).to have_content("You need to sign in or sign up before continuing")
end

Then(/^I have signed up$/) do
  expect(page).to have_content("Signed in successfully")
end

Then(/^I have registered$/) do
  expect(page).to have_content("Welcome! You have signed up successfully")
end