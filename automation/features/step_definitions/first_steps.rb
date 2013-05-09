When /^I launch the application with the instrumentation$/ do
  start_test_server_in_background
end

Then /^I see the message '(.+)'$/ do |message|
  p query('*')
  pending
end
