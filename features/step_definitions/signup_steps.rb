When(/^I am on Appimation home page/) do
  @tests.signup_tests.load_home_page
end

Then(/^I submit signup details/) do
    @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
    @tests.signup_tests.home_page_visible?
end

Then(/^I submit signup without specifying email/) do
    @tests.signup_tests.signup_without_email
end

Then(/^I see that new account is not created/) do
    @tests.signup_tests.signup_unsuccessful
end

Then(/^I submit signup without specifying passwords/) do
    @tests.signup_tests.signup_without_passwords
end