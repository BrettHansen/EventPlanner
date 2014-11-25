Given(/^I am an existing user$/) do
  @email = "example@example.com"
  @password = "password"
end

Given(/^I am signed in$/) do
  visit "http://localhost:3000"

end