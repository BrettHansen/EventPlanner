When /^I visit "([^"]*)"$/ do |path|
  visit path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
  fill_in element, with: text
end

When /^I click "([^"]*)"$/ do |element|
  click_on element
end

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

Then /^I expect to see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

Then /^I am on "([^"]*)"$/ do |path|
  expect(current_path).to eq path
end