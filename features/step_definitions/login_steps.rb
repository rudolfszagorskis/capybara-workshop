Then(/^I submit login details/) do
    @tests.login_tests.open_login_form_submit_details
end

Then(/^I see Appimation project page/) do
    @tests.login_tests.project_page_visible?
end

Then(/^I submit empty login details/) do
    @tests.login_tests.open_login_form_submit_empty_details
end

Then(/^I see an error message/) do
    @tests.login_tests.open_login_form_submit_empty_details
end

Then(/^I submit incorrect login details/) do
    @tests.login_tests.open_login_form_submit_incorrect_details
end

Then(/^I see a proper error message/) do
    @tests.login_tests.valid_error_message
end