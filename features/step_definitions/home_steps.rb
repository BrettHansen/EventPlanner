Given(/^I am a new user$/) do
  logout user
end

Given(/^I load the home page$/) do
  visit "http://localhost:3000"
end

Then(/^the home page is loaded$/) do
  page.should have_content("You need to sign in or sign up before continuing")
end