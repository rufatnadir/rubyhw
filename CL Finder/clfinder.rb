

#require 'mechanize'
#require 'openssl'
#require 'open-uri'
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'nokogiri'
require 'selenium-webdriver'

print "\########################################################################## \n"
print "\#   Welcome to CL-notifier program \n"
print "\#   This program will help you find new adds on 'sfbay.craygslist.org' \n"

#Create variable 'keys' from user input
puts "\# Please, type keywords to search and press 'Enter': "
keys = gets.chomp

agent = Selenium::WebDriver.for :firefox
agent.get("http://sfbay.craigslist.org/cto")
agent.find_element(:id, 'listview').click                       #Find 'listview' switch and click on it
element = agent.find_element(:id, 'query')                      #Find search field as element
element.send_keys(keys)                                         #Send keystroke "Camry" to search field
button_search = agent.find_element(:id, 'searchbtn').click      #find 'Search' button and click on it

body = agent.page_source.to_s
open('result.html', 'w') do |f|
  f.puts body
end                                                             #Save output of body to html file

agent.save_screenshot "clf.png"                                 #Save screenshot of the page

#TO DO
# Copy first 5 links on page and paste them to some document or var
#link_1 = agent.find_element(:class, 'hdrlnk')
#link_2 = agent.find_element(:partial_link_text, 'audi')
#puts link_2

# Close browser
agent.quit


