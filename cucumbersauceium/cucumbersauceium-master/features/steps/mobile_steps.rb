Given(/^I open the app for the first time$/) do
  Mobile.new
end

And(/^I choose to pick my own teams:$/) do |teams|
  step 'I tap the "Pick Teams" button'
  Mobile.add_teams(teams)
  step 'I tap the "Done" button'
end

And(/^I tap the "(.*?)" button$/) do |button|
  $driver.find_element(:name, button).click
end

Then(/^the stream should load$/) do
  pending # express the regexp above with the code you wish you had
end