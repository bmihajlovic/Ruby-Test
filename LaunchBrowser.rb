require 'rubygems'
require 'Selenium-webdriver'

driver = Selenium::WebDriver.for :Firefox
driver.navigate.to "https://facebook.com"
 
puts "Youtube is loaded in firefox browser."