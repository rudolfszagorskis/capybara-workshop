When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end



When(/^I validate Try now/) do
  @tests.login_tests.validate_try_now
end


When("I submit contact form") do
  @tests.login_tests.submit_contact_form()
end





