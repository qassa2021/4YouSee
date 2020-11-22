require "capybara"
require 'capybara/cucumber'
require "selenium-webdriver"
require 'rspec'
require 'rspec/expectations'



Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://qa2.4yousee.com.br/"
    config.default_max_wait_time = 6
end