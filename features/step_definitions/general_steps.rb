Given /^I am on "([^"]*)"$/ do |path|
  visit path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
  fill_in element, with: text
end

When /^I click "([^"]*)"$/ do |element|
  click_on element
end