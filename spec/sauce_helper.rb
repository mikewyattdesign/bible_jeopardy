# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"
require 'capybara/rails'
require 'capybara/rspec'

if ENV['TRAVIS']
	Capybara.default_driver = :sauce 
	Capybara.javascript_driver = :sauce
else
	Capybara.default_driver = :webkit
	Capybara.javascript_driver = :selenium
end

# Setup configuration
Sauce.config do |config|
  config[:start_tunnel] = ENV["TRAVIS"]
  config[:start_local_application] = ENV["TRAVIS"]
  config[:browsers] = [ 
    ["Windows 8", "Internet Explorer", "10"],             
    ["Windows 7", "Firefox", "20"],
    ["OS X 10.8", "Safari", "6"],                         
    ["Linux", "Chrome", nil]          
  ]
end
