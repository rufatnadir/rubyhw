#Create variable @keys from user input,

#puts "Enter keywords"
#keys = gets.chomp

require 'mechanize'
require 'openssl'
require 'open-uri'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


agent = Mechanize.new
site = agent.get("http://sfbay.craigslist.org/cto/")
puts site.body.include?('Nissan')