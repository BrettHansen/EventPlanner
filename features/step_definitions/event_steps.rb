When(/^I fill in a unique past event/) do
  @num = rand(100..10000)
  fill_in "event_title", with: "Past Event #{@num}"
end