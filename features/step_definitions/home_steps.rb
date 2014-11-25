Given(/^I load the home page$/) do
  visit "http://localhost:3000"
end

When(/^I fill in a unique email$/) do
  @size = rand(100..1000)
  fill_in "user_email", with: "example#{@size}@example.com"
end