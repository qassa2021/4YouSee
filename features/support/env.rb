require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "rspec/expectations"



Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://www.petz.com.br"
    config.default_max_wait_time = 05
end