################## script_24_02.rb ###############################

#================== HEAD =========================================
if RUBY_PLATFORM =~ /linux/; os = "Linux"
elsif RUBY_PLATFORM =~ /32/; os = "Windows"
elsif RUBY_PLATFORM =~ /darwin11/; os = "Mac OS X 10.7 Lion"
elsif RUBY_PLATFORM =~ /darwin12/; os = "OS X 10.8 Mountain Lion"
elsif RUBY_PLATFORM =~ /darwin13/; os = "OS X 10.9 Mavericks"
elsif RUBY_PLATFORM =~ /darwin14/; os = "OS X 10.10 Yosemite"
end
#puts "Please, input description of the script: "
#description = gets.chomp

print "==================================================\n"
print "### User \t\t\t\t: #{ENV['USER']} \n"
print "### Email \t\t\t\t: rufat.nadir@gmail.com \n"
print "### Date \t\t\t\t: #{Time.now.to_s[0..18]} \n"
print "### Operating System \t: #{os} \n"
print "### Ruby version \t\t: #{RUBY_VERSION} \n"
#print "### Description \t\t: #{description} \n"

#================= BODY =========================================
print "=================================================\n"

require 'selenium-webdriver'

site = Selenium::WebDriver.for :chrome
site.manage.timeouts.implicit_wait = 15
site.navigate.to('http://www.bing.com/')

puts "Title of the page is: \t\t #{site.title}"

search_field = site.find_element(:id, 'sb_form_q')
search_field.send_keys('Quality Assurance')
search = site.find_element(:id, 'sb_form_go').click         # Find the search field, send keywords "Quality Assurance" and click search button

puts "Title of resulting page is \t: #{site.title}"
puts "URL of resulting page is \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_1.png"

site.find_element(:partial_link_text, 'Total Quality Assurance').click
puts "Title of resulting page is \t: #{site.title}"
puts "URL of resulting page is \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_2.png"

site.find_element(:link_text, 'Home').click
puts "Title of resulting page is \t: #{site.title}"
puts "URL of resulting page is \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_3.png"

site.find_element(:link_text, 'Company').click
puts "Title of resulting page is: \t: #{site.title}"
puts "URL of resulting page is: \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_4.png"

site.find_element(:link_text, 'Solutions').click
puts "Title of resulting page is: \t: #{site.title}"
puts "URL of resulting page is: \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_5.png"

site.find_element(:link_text, 'Modules').click
puts "Title of resulting page is: \t: #{site.title}"
puts "URL of resulting page is: \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_6.png"

site.find_element(:link_text, 'Knowledge Center').click
puts "Title of resulting page is: \t: #{site.title}"
puts "URL of resulting page is: \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_7.png"

site.find_element(:link_text, 'News Room').click
puts "Title of resulting page is: \t: #{site.title}"
puts "URL of resulting page is: \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_8.png"

site.find_element(:link_text, 'Customers').click
puts "Title of resulting page is: \t: #{site.title}"
puts "URL of resulting page is: \t: #{site.current_url}"
puts "====================="
site.save_screenshot "result_9.png"

#site.quit