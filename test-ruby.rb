

require 'rubygems'
require 'selenium-webdriver'
#require 'chrome_remote'
#require "chromedriver-helper"

    Selenium::WebDriver::Chrome.driver_path = "D:/Ruby 2.6.1 + DevKit/Ruby26-x64/chromedriver_win32/chromedriver.exe" 

    #potrebno je bilo otpakovati fajl i dodati exe iza chromedriver ----> chromedriver.exe !!!
    # (u kom fajlu je smjesten chromedriver)

    driver = Selenium::WebDriver.for :chrome 

 # Navigate to Automation HTML   

#file:/// ispitati jel ulazi file u liniju ispod - (ispred C direktorijuma)

    driver.navigate.to "D:/Ruby 2.6.1 + DevKit/ruby/RubyTest/AutomationHTML.html"

    sleep 3 

    puts "The browser is launched."


# Checking a radio button with automation test

    if driver.find_element(:class, 'Automation').displayed?
        driver.find_element(:class, 'Automation').click

        puts "The automation button is selected and clicked."
    else
        puts "The automation button is not displayed."

    end

    sleep 3


# Select your Course: -> dropdown button

    if driver.find_element(:id, 'Courses').displayed?

        options = driver.find_elements(:tag_name, 'option')
        options.each do |el|
            
            if (el.text == "Selenium WebDriver")
                el.click
                break
            end
        end
    end

    sleep 3


# Select the feature you want to learn (checking a button):

    if driver.find_element(:id, 'webcheck').displayed?
        driver.find_element(:id, 'webcheck').click

        puts "The Web Browser Automation button is selected and clicked."
    else
        puts "The Web Browser Automation button is not displayed."

    end

    sleep 3


# Tool Version

    if driver.find_element(:id, 'tchck').displayed?
        driver.find_element(:id, 'tchck').send_keys '2.44'

        puts "2.44 is enter in tool version text box."
    else
        puts "2.44 tool version is not dispayed."

    end

    sleep 3


# Submit buton

    if driver.find_element(:class, 'upload').displayed?
        driver.find_element(:class, 'upload').click

        puts "The submit button is clicked."
    else
        puts "The submit button is not displayed."

    end

    sleep 3

# Google Searh link

    if driver.find_element(:link_text, 'Google Search').displayed?
        driver.find_element(:link_text, 'Google Search').click

        puts "Google Search link is clicked."
    else
        puts "Google Search link is not displayed."

    end