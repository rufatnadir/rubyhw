require 'selenium-webdriver'

if RUBY_PLATFORM =~ /linux/; os = "Linux"
elseif RUBY_PLATFORM =~ /32/; os = "Windows"
elseif RUBY_PLATFORM =~ /darwin11/; os = "Mac OS X 10.7 Lion"
elseif RUBY_PLATFORM =~ /darwin12/; os = "OS X 10.8 Mountain Lion"
elseif RUBY_PLATFORM =~ /darwin13/; os = "OS X 10.9 Mavericks"
elseif RUBY_PLATFORM =~ /darwin14/; os = "OS X 10.10 Yosemite"
end
puts "Please, input description of the script: "
description = gets.chomp

print "#######################################################################\n"
print "### User \t\t\t\t: #{ENV['USER']} \n"
print "### Email \t\t\t\t: 'rufat.nadir@gmail.com' \n"
print "### \n"
print "### Date \t\t\t\t: #{Time.now.to_s[0..18]} \n"
print "### Operating System \t: #{os} \n"
print "### Ruby version \t\t: #{RUBY_VERSION} \n"
print "### Description \t\t\t: #{description} \n"

# 01.Navigate to Bing.com
site = Selenium::WebDriver.for :firefox
site.get('http://www.bing.com/')

# 02.Display the title of the Bing.com page
puts "### Title of the site is: \t\t\t #{site.title}"

# 03.Search for the word "What is Selenium?"
search = site.find_element(:id, 'sb_form_q')
search.send_keys('What is Selenium?')
search_button = site.find_element(:id, 'sb_form_go').click

# 04.Display the title and url of the page
puts "### Title of the page is: \t\t\t #{site.title}"
puts "### URL of the page: \t\t\t\t #{site.current_url}"

# 05.Create snapshot of the Bing.com result page
site.save_screenshot "1.png"

# 06.Click on "Selenium - Wikipedia, the free encyclopedia"
site.find_element(:link_text, 'Selenium - Wikipedia, the free encyclopedia').click

# 07.Display the title and url of the page
puts "### Wikipedia page title is: \t\t #{site.title}"
puts "### Page URL is: \t\t\t #{site.current_url}"

# 08.Create snapshot of the page
site.save_screenshot "2.png"

# 09.Click on About Wikipedia link
site.find_element(:link_text, 'About Wikipedia').click

# 10.Display the title and url of the page
puts "### Page title is: \t\t\t #{site.title}"
puts "### Page URL is: \t\t\t #{site.current_url}"

# 11.Create snapshot of the page About Wikipedia
site.save_screenshot "3.png"

# 12.Navigate back
site.navigate.back

# 13.Create snapshot of the page
site.save_screenshot "4.png"

# 14.Close the browser
site.quit