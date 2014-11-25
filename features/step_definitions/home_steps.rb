Given(/^I load the home page$/) do
  visit "http://localhost:3000"
end

Given(/^I load the login page$/) do
  visit "http://localhost:3000/users/sign_in"
end

Given(/^I load the register page$/) do
  visit "http://localhost:3000/users/sign_up"
end

When(/^I fill in a unique email$/) do
  @size = rand(100..1000)
  fill_in "user_email", with: "example#{@size}@example.com"
end