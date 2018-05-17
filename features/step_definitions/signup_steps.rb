

When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.isVisible
end

When(/^I open Sign Up/) do
  @pages.page_home.signup
end

Then(/^I see if Sign Up window is visible/) do
  @pages.page_home.isVisible
end

When(/^I enter all required information1/) do 
  @pages.page_home.enterInformationn
end

And (/^I close Sign Up window/) do
  @pages.page_home.close_signup_window
end

# Then(/^I see that Sign Up window is closed/) do
#    @pages.page_home.gg
# end

##########################################################################################################

When(/^I open Sign In/) do
  @pages.page_home.login
end

Then(/^I see if Sign In window is visible/) do
@pages.page_home.sign_in_window_is_visible
end

When(/^I enter all required information2/) do 
  @pages.page_home.enterLoginInformation
end

And (/^I try to Sign In/) do
  @pages.page_home.signIn
  # sleep(3)
end

Then(/^I see that User has a error/) do
  @pages.page_home.errorr
end


