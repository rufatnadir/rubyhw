################## script_24_01.rb ###############################

#================== HEAD =========================================
if RUBY_PLATFORM =~ /linux/; os = "Linux"
elsif RUBY_PLATFORM =~ /32/; os = "Windows"
elsif RUBY_PLATFORM =~ /darwin11/; os = "Mac OS X 10.7 Lion"
elsif RUBY_PLATFORM =~ /darwin12/; os = "OS X 10.8 Mountain Lion"
elsif RUBY_PLATFORM =~ /darwin13/; os = "OS X 10.9 Mavericks"
elsif RUBY_PLATFORM =~ /darwin14/; os = "OS X 10.10 Yosemite"
end
puts "Please, input description of the script: "
description = gets.chomp

print "==================================================\n"
print "### User \t\t\t\t: #{ENV['USER']} \n"
print "### Email \t\t\t\t: rufat.nadir@gmail.com \n"
print "### Date \t\t\t\t: #{Time.now.to_s[0..18]} \n"
print "### Operating System \t: #{os} \n"
print "### Ruby version \t\t: #{RUBY_VERSION} \n"
print "### Description \t\t: #{description} \n"

#================= BODY =========================================
print "=================================================\n"

require 'selenium-webdriver'

site = Selenium::WebDriver.for :firefox
site.manage.timeouts.implicit_wait = 15
site.navigate.to('http://www.bing.com/')                    # 01.Navigate to Bing.com

puts "### Title of the site is: \t\t\t #{site.title}"       # 02.Display the title of the Bing.com page

search = site.find_element(:id, 'sb_form_q')
search.send_keys('What is Selenium?')
search_button = site.find_element(:id, 'sb_form_go').click  # 03.Search for the word "What is Selenium?"

puts "### Title of the page is: \t\t\t #{site.title}"
puts "### URL of the page: \t\t\t\t #{site.current_url}"    # 04.Display the title and url of the page

site.save_screenshot "1.png"                                # 05.Create snapshot of the Bing.com result page

site.find_element(:link_text, 'Selenium - Wikipedia, the free encyclopedia').click  # 06.Click on "Selenium - Wikipedia, the free encyclopedia"

puts "### Wikipedia page title is: \t\t #{site.title}"
puts "### Page URL is: \t\t\t\t #{site.current_url}"          # 07.Display the title and url of the page

site.save_screenshot "2.png"                                # 08.Create snapshot of the page

site.find_element(:link_text, 'About Wikipedia').click      # 09.Click on About Wikipedia link

puts "### Page title is: \t\t\t\t #{site.title}"
puts "### Page URL is: \t\t\t\t #{site.current_url}"          # 10.Display the title and url of the page

site.save_screenshot "3.png"                                # 11.Create snapshot of the page About Wikipedia

site.navigate.back                                          # 12.Navigate back

site.save_screenshot "4.png"                                # 13.Create snapshot of the page

site.quit                                                   # 14.Close the browser