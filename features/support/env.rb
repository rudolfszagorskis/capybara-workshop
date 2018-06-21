$LOAD_PATH << File.dirname(__FILE__)

require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'json'
require 'base64'
require 'chromedriver/helper'

# Capybara.app_host = 'http://www.apimation.com'
print ENV['HOST']
Capybara.app_host = ENV['HOST']

Capybara.save_path = ENV['REPORT_PATH']

BROWSER = ENV['BROWSER']
GRID = ENV['GRID']
# Capybara.save_path = 'report/'
Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run
# =================================================================== #
#######################################################################
# ========================= ENVIRONMENT SETUP ========================#
def set_up_grid(capability)
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,
      browser: :remote,
      url: GRID,
      desired_capabilities: capability)
end
Capybara.default_driver = :selenium
end

if BROWSER == 'CHROME'
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :selenium
elsif BROWSER == 'GRID-CHROME'
caps = Selenium::WebDriver::Remote::Capabilities.chrome
set_up_grid(caps)
end
# =============================================================== #
#######################################################################
# ========================= SCENARIO TEARDOWN ========================#

Before do |scenario|
  @pages = Pages.new
  @tests = Tests.new(@pages)
  Capybara.current_session.driver.execute_script("window.resizeTo(1920,1080)")
  Capybara.ignore_hidden_elements = false
  Capybara.default_max_wait_time = 30

end

After do |scenario|
  add_screenshot if scenario.failed?
  Capybara.current_driver = Capybara.javascript_driver
  page.execute_script("if (navigator.appName == 'Microsoft Internet Explorer')" \
                      "{ window.location = 'about:blank';}" \
                      "else {'return window.stop();'}")

  Capybara.current_driver = Capybara.default_driver
end

AfterStep do |_scenario|
  Capybara.ignore_hidden_elements = false
end

def add_screenshot
  file_name = 'screenshot.png'
  page.driver.browser.save_screenshot("#{ENV['REPORT_PATH']}#{file_name}")
  image = open("#{ENV['REPORT_PATH']}{file_name}", 'rb', &:read)
  encoded_image = Base64.encode64(image)
  embed(encoded_image, 'image/png', 'SCREENSHOT')
end
