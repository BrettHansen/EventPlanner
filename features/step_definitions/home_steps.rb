Given(/^I load the home page$/) do
  visit "http://localhost:3000"
end

When(/^I fill in a unique email$/) do
  @num = rand(100..10000)
  fill_in "user_email", with: "example#{@num}@example.com"
end

Given /^I sign in as user$/ do
  visit "http://localhost:3000"
  fill_in "user_email", with: "example@example.com"
  fill_in "user_password", with: "password"
  click_on "commit"
end

Given /^I sign in as admin$/ do
  visit "http://localhost:3000"
  fill_in "user_email", with: "admin@admin.com"
  fill_in "user_password", with: "password"
  click_on "commit"
end