When(/^I am on Appimation home page/) do
  visit('/')
  find(:css, '#start_button')
  find(:xpath, "//button[@id = 'start_button']")
  find(:css, "#video")
  find(:css, ".feature-image")
  find(:xpath, "//h3[contains(text(), 'Team up')]/preceding-sibling::img")
end