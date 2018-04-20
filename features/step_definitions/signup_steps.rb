When(/^I am on Venta home page/) do
  visit('/')
  find(:css, '.l_home')
end

When(/^I open Pētniecība page/) do
  find(:css, "a[title='Pētniecība']").click
end

Then("I see Pētniecības page") do
  find(:xpath, "//h1[contains(text(), 'Pētniecība')]")
end

When("I open search menu") do
  find(:css, ".i_search").click
  find(:css, "#s")
end

Then("I enter {string} in search") do |string|
  find(:css, "#s").set string
  sleep(4)
end
