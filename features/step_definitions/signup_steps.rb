When(/^I am on Appimation home page/) do
  visit('/')
  find(:css, '#start_button')
end