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

Given /^I sign in as a generic user$/ do
  visit "http://localhost:3000/users/sign_up"
  fill_in "user_email", with: "example@#{rand(100..10000)}example.com"
  fill_in "user_password", with: "password"
  fill_in "user_password_confirmation", with: "password"
  click_on "commit"
end

Given /^I sign in as admin$/ do
  visit "http://localhost:3000"
  fill_in "user_email", with: "admin@admin.com"
  fill_in "user_password", with: "password"
  click_on "commit"
end

Given /^I logout$/ do
  click_on "sign_out"
end