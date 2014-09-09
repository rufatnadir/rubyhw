require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.driver.manage.timeouts.implicit_wait = 15

url = "bing.com"
keyword = "Quality Assurance"

browser.goto url
puts "================================================="
puts "Title of 'bing.com' is: #{browser.title}"

browser.text_field(:id, 'sb_form_q').set keyword
browser.button(:id, 'sb_form_go').click
puts "================================================="
puts "Title of query page is: #{browser.title}"
puts "URL of query page is: #{browser.url}"
browser.screenshot.save "pics/qa.png"

browser.link(:text => /gsqa.com/).click
puts "================================================="
puts "Title of GSQA page is: #{browser.title}"
puts "URL of GSQA page is: #{browser.url}"
browser.screenshot.save "pics/gsqa.png"

browser.link(:text => /Home/).click
puts "================================================="
puts "Title of Home page is: #{browser.title}"
puts "URL of Home page is: #{browser.url}"
browser.screenshot.save "pics/home.png"

browser.link(:text => /Company/).click
puts "================================================="
puts "Title of Company page is: #{browser.title}"
puts "URL of Company page is: #{browser.url}"
browser.screenshot.save "pics/company.png"

browser.link(:text => /Solutions/).click
puts "================================================="
puts "Title of Solutions page is: #{browser.title}"
puts "URL of Solutions page is: #{browser.url}"
browser.screenshot.save "pics/solutions.png"

browser.link(:text => /Modules/).click
puts "================================================="
puts "Title of Modules page is: #{browser.title}"
puts "URL of Modules page is: #{browser.url}"
browser.screenshot.save "pics/modules.png"

browser.link(:text => /Knowledge Center/).click
puts "================================================="
puts "Title of Knowledge Center page is: #{browser.title}"
puts "URL of Knowledge Center page is: #{browser.url}"
browser.screenshot.save "pics/knowledge_center.png"

browser.link(:text => /News Room/).click
puts "================================================="
puts "Title of News Room page is: #{browser.title}"
puts "URL of News Room page is: #{browser.url}"
browser.screenshot.save "pics/news_room.png"

browser.back
browser.link(:text => /Customers/).click
puts "Title of Customers page is: #{browser.title}"
puts "URL of Customers page is: #{browser.url}"
browser.screenshot.save "pics/customers.png"

browser.link(:text => /Content Glossary/).click
puts "Title of Content Glossary page is: #{browser.title}"
puts "URL of Content Glossary page is: #{browser.url}"
browser.screenshot.save "pics/content.png"

browser.quit


