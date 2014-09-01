#Create variable @keys from user input,

#puts "Enter keywords"
#keys = gets.chomp

#require 'mechanize'
#require 'openssl'
require 'open-uri'
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'selenium-webdriver'

agent = Selenium::WebDriver.for :firefox
agent.get("http://sfbay.craigslist.org/cto")
agent.find_element(:id, 'listview').click         #Find 'listview' switch and click on it
element = agent.find_element(:id, 'query')        #Find search field as element
element.send_keys("camry")                        #Send keystroke "Camry" to search field
button_search = agent.find_element(:id, 'searchbtn').click      #find 'Search' button and click on it

#TO DO
#Click on first link on list, or copy text of link and assign to some variable
link_1 = agent.find_element(:class, 'hdrlnk').click
#puts link_1.to_sym







#agent.find_element(:link_text, 'mitsubishi eclipse').click #Finds link with text "mitsubishi eclipse" and clicks on it
#puts agent.

#puts site.body.include?('Nissan')