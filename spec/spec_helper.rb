require 'capybara/rspec'
Capybara.default_driver = :selenium_chrome
session = Capybara::Session.new :selenium_chrome
Capybara.app_host = 'https://github.com'
Capybara.run_server = false